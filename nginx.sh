#sudo  wget https://raw.github.com/devopsraman/packer/master/nginx.repo -P /etc/yum.repos.d
sudo yum update
sudo yum install wget java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 -y
sudo  wget https://raw.github.com/devopsraman/packer/master/nginx.repo -P /etc/yum.repos.d
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
#sudo systemctl start nginx
#sudo firewall-cmd --permanent --zone=public --add-service=http
#sudo firewall-cmd --permanent --zone=public --add-service=https
#sudo firewall-cmd --reload
#configure SSL
#sudo mkdir /etc/nginx/ssl
#sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt
#sudo openssl req -x509  -new \
                -newkey rsa:2048 -nodes -keyout /etc/nginx/ssl/nginx.key \
                        -out /etc/nginx/ssl/nginx.crt \
                                -subj "/C=uk/ST=Utah/L=london/O=devops/OU=IT/CN=nginx"
#sudo mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.old
#sudo  wget https://raw.github.com/devopsraman/packer/master/default.conf -P /etc/nginx/conf.d
#sudo nginx -t
#sudo systemctl restart  nginx
