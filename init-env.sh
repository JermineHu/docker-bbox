wget https://dl.google.com/go/go${VERSION}.linux-amd64.tar.gz

mkdir -p /usr/local /tmp

tar -C /usr/local -xzf go${VERSION}.linux-amd64.tar.gz

rm go${VERSION}.linux-amd64.tar.gz

echo "export PATH=$PATH:/usr/local/go/bin" >>  /etc/profile
 
source /etc/profile
