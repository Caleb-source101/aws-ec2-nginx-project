#!/bin/bash
set -e

echo "starting setup..."
apt update

echo "installing nginx..."
apt install -y nginx

echo "writing homepage..."
cat > /var/www/html/index.html << EOF
<html>
<head><title>My EC2 Server</title></head>
<body>
 <h1> Hello from $(hostname)</h1>
 <p>Deployed by a bash script.</p>
</body>
</html>
EOF
echo "Starting nginx..."
systemctl enable nginx
systemctl restart nginx

echo "Configuring firewall"
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable

echo "done. Open this instance's public IP in a browser."
