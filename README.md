# Backup.custom
a path to backup important configuration files
## How to use
- write down paths to be backed up in `./path.yaml`
- `bash backup.sh` to backup files not in `/home` or in `~` according to the path list in `./path.yaml`.
- `bash restore.sh [usernames]` to restore files for the system and all normal users you mentioned.

## What's more
the script `restore.sh` need to be tested.
