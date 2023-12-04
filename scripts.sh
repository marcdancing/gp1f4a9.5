    sudo apt-get update -y
    sudo apt-get install -y net-tools
    sudo apt-get install -y whois
    sudo apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    sudo apt-get update -y
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose
    sudo gpasswd -a vagrant docker
    sudo apt-get install -y snapd
    echo 'export PATH=/snap/bin:$PATH' >> /home/vagrant/.bashrc
    source /home/vagrant/.bashrc
    sudo snap install microk8s --classic
    sudo gpasswd -a vagrant microk8s
    sudo  chown -f -R vagrant /home/vagrant/.kube
    echo "alias kubectl='microk8s kubectl'" >> /home/vagrant/.bashrc
    source /home/vagrant/.bashrc