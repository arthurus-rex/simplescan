#!/bin/bash

homedir=$(pwd)
repo_list=${homedir}'/repo_list.txt'
keyword_list=${homedir}'/keyword_list.txt'
tmp_foldername=${homedir}'/repos'

# create results folder in outfiles at datetime of analysis
echo "Create new results folder..."
datetime=$(date +%Y-%m-%d_%H.%M.%S)
results_folder=${homedir}'/outfiles/'${datetime}'/'
mkdir ${results_folder}
echo "Created folder as: " ${results_folder}

# where git repos are temporarily cloned
mkdir $tmp_foldername && cd $tmp_foldername

# download all repos in list
echo "Beginning analysis of listed repositories..."
while IFS= read -r line; do
	echo "    Downloading repository: $line"
	git clone $line --quiet
done < $repo_list
echo "Done copying repos.  Listing:"
echo '    ' $(ls)

# scans all repos in temp folder
echo "Scanning all files for crypto in " $(pwd)
for dir in */ ; do
    cd $dir && echo "Scanning " $dir

    # extracts name of repo from directory, then creates 
    # results_`repo`.txt for output of grep into homedir
    repo_results=${results_folder}$(basename $dir)'.txt'
    touch $repo_results
    find ~   
#    find -type f | grep --file=$keyword_list --recursive -n >> $repo_results
    echo "Done scanning " $dir && cd ..
done
echo "Scan complete."

# remove repos after scanning to prevent cluttering
# yes I know this is inefficient
echo "Cleaning up files..."
cd ..
rm -rf $tmp_foldername
echo "Done."
