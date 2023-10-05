sudo apt-get update
sudo apt-get install ca-certificates curl gnupg -y
# install docker
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install git docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
# user config
sudo useradd dockeruser
sudo usermod -a -G docker dockeruser
mkdir bash
#add bash folder to path
echo "export PATH=\"\$PATH:$HOME/bash\"" >> ~/.bashrc