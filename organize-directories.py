import os
import shutil

def organize_directories(directory):
    for filename in os.listdir(directory):
        if os.path.isdir(os.path.join(directory, filename)):
            # Split the filename on the hyphen
            split_filename = filename.split('-', 1)
            
            # Check if the split was successful
            if len(split_filename) > 1:
                # Create the new directory name
                new_directory = os.path.join(directory, split_filename[1])

                # Create the new directory if it doesn't already exist
                os.makedirs(new_directory, exist_ok=True)

                # Move the old directory to the new directory
                shutil.move(os.path.join(directory, filename), os.path.join(new_directory, filename))

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
# organize_directories('/Users/tizzymatic/Documents/GitHub/Data-Structures-and-Algorithm-Solutions/leetcode/cpp')
