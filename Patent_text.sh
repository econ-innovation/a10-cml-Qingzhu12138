import os
import shutil

def create_directory_structure(base_dir, num_dirs_per_level, num_files_per_dir):

    if not os.path.exists(base_dir):
        os.makedirs(base_dir)
    
    file_count = 0
    dir_count = 0
    level_count = 0
    current_dir = base_dir
    
    while file_count < num_files_per_dir:
        current_level_dir = os.path.join(current_dir, f"level_{level_count}")
        os.makedirs(current_level_dir, exist_ok=True)
        
        for _ in range(num_dirs_per_level):
            sub_dir = os.path.join(current_level_dir, f"dir_{dir_count}")
            os.makedirs(sub_dir, exist_ok=True)
            
            for _ in range(num_files_per_dir):
                with open(os.path.join(sub_dir, f"file_{file_count}.txt"), "w") as f:
                    f.write("This is a test file.")
                file_count += 1
                
                if file_count >= num_files_per_dir:
                    break
            
            dir_count += 1
            if dir_count >= num_dirs_per_level:
                break
        
        level_count += 1
        dir_count = 0
        current_dir = current_level_dir

base_directory = "file_structure"
num_dirs_per_level = 5
num_files_per_dir = 100

create_directory_structure(base_directory, num_dirs_per_level, num_files_per_dir)