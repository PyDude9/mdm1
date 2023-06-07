csrutil authenticated-root disable;
diskutil mount /Volumes/macOSBeta;
 Mount -uv /Volumes/macOSBeta;	
 cd /Volumes/macOSBeta/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/macOSBeta/System/Library/CoreServices --bootefi --create-snapshot;
Echo "Copyright Maclife.vn nhe"
