echo "     _    _         _                   _____ _           _           "
echo "    / \  (_)_ __ __| |_ __ ___  _ __   |  ___(_)_ __   __| | ___ _ __ "
echo "   / _ \ | | '__/ _\` | '__/ _ \| '_ \  | |_  | | '_ \ / _\` |/ _ \ '__|"
echo "  / ___ \| | | | (_| | | | (_) | |_) | |  _| | | | | | (_| |  __/ |   "
echo " /_/   \_\_|_|  \__,_|_|  \___/| .__/  |_|   |_|_| |_|\__,_|\___|_|   "
echo "                               |_|                                    "

echo "Website  : https://www.airdropfinder.com"
echo "Telegram : https://t.me/airdropfind"
echo "Facebook : https://www.facebook.com/groups/744001332439290"
echo "Twitter  : https://twitter.com/AirdropfindX"
sleep 5

echo -e "\n==========INSTALLING DEPENDENCIES==========\n"
sleep 2
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git wget curl

echo -e "\n==========INSTALLING NODEJS==========\n"
cd $HOME
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

echo -e "\n==========CHECKING NODEJS VERSION==========\n"
sleep 2
node -v
echo -e "\n==========CHECKING NPM VERSION==========\n"
sleep 2
npm -v
echo -e "\n==========CHECKING GIT VERSION==========\n"
sleep 2
git --version

echo -e "\n==========INSTALLING ZKAPP PACKAGE==========\n"
sleep 2

git clone https://github.com/o1-labs/zkapp-cli
npm instal -g zkapp-cli@0.5.3

echo -e "\n==========CHECKING ZKAPP VERSION==========\n"

zk --version

echo -e "\n==========CREATING PROJECT==========\n"

if [[ -d 04-zkapp-browser-ui ]]; then
    rm -rf 04-zkapp-browser-ui
fi

zk project 04-zkapp-browser-ui --ui next

echo -e "\n==========SETUP PROJECT==========\n"

cd 04-zkapp-browser-ui/contracts/
npm run build

cd ..
cd ui/pages
rm _app.page.tsx
wget -q https://raw.githubusercontent.com/es92/zkApp-examples/main/04-zkapp-browser-ui/ui/pages/_app.page.tsx
wget -q https://raw.githubusercontent.com/es92/zkApp-examples/main/04-zkapp-browser-ui/ui/pages/zkappWorker.ts
wget -q https://raw.githubusercontent.com/es92/zkApp-examples/main/04-zkapp-browser-ui/ui/pages/zkappWorkerClient.ts

echo "==========SETUP FINISH=========="
