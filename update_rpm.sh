#!/bin/bash
### This script should be run in the main directory of the YUM / DNF repository
### to update

### Parameters
# Email address for the GPG key
EMAIL=$(C=base64\ -d;$C<<<Y205emEybHpRSEoxYm1KdmVDNWpiMjBLCg==|$C)



### Main script
# Check that we have at least one .rpm file in the current directory, to make
# sure we're not being called from some other directory
if ! ls *.rpm > /dev/null 2> /dev/null; then
  echo "No .rpm files in the current directory"
  exit
fi

# Create the KEY.gpg file
gpg --armor --export "${EMAIL}" > KEY.gpg

# Sign the packages
rpm --define "_gpg_name ${EMAIL}" --addsign *.rpm

# Clear the current repodata metadata
rm -r repodata

# Create the repodata metadata
createrepo_c .

# Sign the repodata metadata
gpg --default-key ${EMAIL} --detach-sign --armor repodata/repomd.xml
