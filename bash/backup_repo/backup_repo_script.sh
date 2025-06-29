#assign source path
source_path=$1


#check to see if argument was given
if [ -z "$source_path" ]; then
        echo "no argument given. Usage: $0 /path/to/repo"
        exit 1
fi



#check to see if source path is empty
if [ ! -e "$source_path" ]; then
        echo "Path does not exist $source_path"
        exit 1
fi


#Create unique backup folder name with repo basename + timestamp
repo_name=$(basename "$source_path")_$(date +"%Y%m%d_%H%M%S")



#Create backup directory (and parent dirs if needed)
backup_dir="$HOME/backups/$repo_name"
echo "Creating backup directory at: $backup_dir"
mkdir -p "$backup_dir"



#Copy everything recursively from source_path to backup_dir
echo "Copying files from $source_path to $backup_dir"

cp -r "$source_path"/. "$backup_dir"

if [ $? -eq 0 ]; then
	echo "Backup completed successfully."
else
	echo "Backup failed."
	exit 1
fi




