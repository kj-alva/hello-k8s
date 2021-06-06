echo -n "`aws ssm get-parameter --name /env/cert --with-decrypt --region=eu-west-2 --output text --query Parameter.Value`" > cert.pem
echo -n "`aws ssm get-parameter --name /env/key --with-decrypt --region=eu-west-2 --output text --query Parameter.Value`"  > key.pem
cat <<EOF | kubectl create secret tls tls-secret -n hello-world --key key.pem --cert cert.pem
EOF