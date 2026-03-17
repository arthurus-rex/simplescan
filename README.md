# Simplescan
A very simple bash script designed to clone open source github repositories locally, scan for keywords, and save the output to results files.  Designed with crypto in mind, but could be used for any keywords.

# Installation:
```
git clone https://github.com/arthurus-rex/simplescan.git
cd simplescan
chmod +x cryptoscan.sh
```
# Usage:
1. Modify `repo_list.txt` to contain your list of which open source repositories to scan;
2. Modify `keyword_list.txt` to contain your desired keywords;
3. Run `./cryptoscan.sh`
Results files will be created with names matching their source repositories in the filepath `outfiles/{datetime}/repo.txt`.

* Remember: Your scan is only as good as your keywords.  [Examples](https://github.com/arthurus-rex/simplescan/blob/master/EXAMPLE_KEYWORDS.md) may help you choose wisely.

# Caveats:
This is a simple keyword search designed to be verbose, preferring false positives to false negatives.  This project should not be considered for production without modification, and all output should be manually evaluated for accuracy.  This repo will change as bugs are found and features (maybe) added.

# Results
As this tool was created in the context of a larger project, those looking for the output can find it at [pqc-crypto-analysis-results](https://github.com/arthurus-rex/pqc-crypto-analysis-results/tree/main).  
