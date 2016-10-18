# call this with a version number you want to build. 
# it will wait until that version number appears in the repo.
#

#### use this for testing:
# override DOO_MIRRORS in build-ubuntu-vm.sh
#export OC_REPO_URL=http://owncloud:*PASSWORD*@obs.int.owncloud.com:83/
#
## can be a comma separated list...
export OC_APPS_URL=https://apps.owncloud.com/CONTENT/content-files/155100-appvncsafe.zip

#### use this for production:
DEBUG=false time sh oc9ce/build-ubuntu-vm.sh ce:9.1 $1

#### upload stuff. 
## use this for testing
# oc9ce/release-dl-oo.sh testing/vm
## use this for production
oc9ce/release-dl-oo.sh production/vm

echo "If this is an official release, update the version number in"
echo "https://github.com/owncloud/owncloud.org/blob/master/strings.php"
