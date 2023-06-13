#!/bin/sh
mkdir TaxTermuxSetting
cd TaxTermuxSetting
echo -e "#!/bin/sh\ncd storage/shared/Terminal/MyGitHelp\nsh TaxAliasTip.sh\npython TaxGitSet.py\nbash" > MyGitDir.sh
echo -e "#!/bin/sh\nmv MyGitDir.sh ../MyGitDir.sh\nmv TaxTermuxSet1.sh ../TaxTermuxSet1.sh\nmv TaxTermuxSet2.sh ../TaxTermuxSet2.sh\nmv TaxTermuxSet3.sh ../TaxTermuxSet3.sh" > install.sh
echo -e "#!/bin/sh\npkg update && pkg upgrade -y\ntermux-setup-storage\ncd /\ntermux-setup-storage\nexit" > TaxTermuxSet1.sh
echo -e "#!/bin/sh\npkg install git\npkg install vim\npkg\xa0install\xa0python3\nclear&&ls" > TaxTermuxSet2.sh
echo -e "#!/bin/sh\ncd storage/shared\nmkdir Terminal\ncd Terminal\nmkdir TaxPython\nmkdir TaxApp\ncd ..\nmv Termux.apk Terminal/TaxApp/Termux.apk\ncd Terminal\ngit clone https://github.com/Tax0787/MyGitHelp.git" > TaxTermux3.sh