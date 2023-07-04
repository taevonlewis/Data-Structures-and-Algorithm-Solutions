import os
import shutil

def organize_directories(directory):
    for filename in os.listdir(directory):
        if os.path.isdir(os.path.join(directory, filename)):
            # Split the filename on the hyphen
            split_filename = filename.split('-', 1)
            
            # Check if the split was successful and the first part is a number
            if len(split_filename) > 1 and split_filename[0].isdigit():
                # Create the new directory name
                new_directory = os.path.join(directory, split_filename[1])

                # Create the new directory if it doesn't already exist
                os.makedirs(new_directory, exist_ok=True)

                # If a directory with the same name doesn't already exist in the new directory, move the old directory
                if not os.path.exists(os.path.join(new_directory, filename)):
                    shutil.move(os.path.join(directory, filename), os.path.join(new_directory, filename))
                else:
                    # Otherwise, move the files from the old directory to the existing directory
                    for file in os.listdir(os.path.join(directory, filename)):
                        shutil.move(os.path.join(directory, filename, file), os.path.join(new_directory, file))

                    # If the old directory is empty after moving the files, remove it
                    if not os.listdir(os.path.join(directory, filename)):
                        os.rmdir(os.path.join(directory, filename))

def organize_files(directory):
    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            # Split the filename on the dot to remove the extension
            split_filename = filename.split('.')
            
            # Check if the split was successful
            if len(split_filename) > 1:
                # Create the new directory name
                new_directory = os.path.join(directory, split_filename[0])

                # Create the new directory if it doesn't already exist
                os.makedirs(new_directory, exist_ok=True)

                # Move the old file to the new directory
                shutil.move(os.path.join(directory, filename), os.path.join(new_directory, filename))


# organize_files('/Users/tizzymatic/Documents/GitHub/Data-Structures-and-Algorithm-Solutions/hackerrank')
organize_directories('/Users/tizzymatic/Documents/GitHub/Data-Structures-and-Algorithm-Solutions/leetcode/python')
