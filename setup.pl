print "Make sure to run this script in your home directory!\n\n";
sleep(3);

print "\n\nUpdating and upgrading everything...\n\n";
sleep(2);
print `sudo apt-get update`;
print `sudo apt-get upgrade`;
print `sudo apt-get update`;

print "\n\nInstalling git...\n\n";
sleep(2);
print `sudo apt-get install git`;

print "\n\nInstalling mininet...\n\n";
sleep(2);
print `sudo apt-get install mininet`;

print "\n\nInstalling java...\n\n";
sleep(2);
print `sudo apt-get install openjdk-7-jdk`;

print "\n\nInstalling make\n\n";
sleep(2);
print `sudo apt-get install make`;

print "\n\nCloning git repos...\n\n";
sleep(2);
print `git clone https://github.com/devasia1000/youtube_playback`;
print `git clone https://github.com/devasia1000/cellsim`;
print `git clone https://github.com/devasia1000/youtube_recorder`;

print "\n\nPreparing to clone Chromium...\n\n";
sleep(2);
print `git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git`;
print `export PATH="\$PATH":~/depot_tools`;
print `git config --global core.deltaBaseCacheLimit 2G`;
print `gclient config --spec 'solutions = [{u'"'"'managed'"'"': True, u'"'"'name'"'"': u'"'"'src'"'"', u'"'"'url'"'"': u'"'"'https://github.com/devasia1000/chromium.git'"'"', u'"'"'custom_deps'"'"': {}, u'"'"'deps_file'"'"': u'"'"'.DEPS.git'"'"', u'"'"'safesync_url'"'"': u'"'"''"'"'}]'`;

print "\n\nCloning Chromium\n\n";
sleep(2);
print `gclient sync`;

print "\n\nInstalling Chromium build dependencies\n\n";
sleep(2);
print `sudo ./src/build/install-build-deps.sh`;

print "\n\nBuilding Chromium\n\n";
sleep(2);
print `sudo ./src/build_chromium.sh`;

