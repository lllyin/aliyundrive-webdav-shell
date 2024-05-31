#!/bin/bash

export USERNAME="admin"
export PASSWORD="admin"

if [ -n "$REFRESH_TOKEN" ]; then
  echo "存在REFRESH_TOKEN: $REFRESH_TOKEN"
else
 
  aliyundrive-webdav qr login
  read -p "请输入REFRESH_TOKEN: " REFRESH_TOKEN
  export REFRESH_TOKEN=$REFRESH_TOKEN

  echo "#!/bin/bash" > "./token.sh"
  echo "" >> "./token.sh"
  echo "export REFRESH_TOKEN=\"$REFRESH_TOKEN\"" >> "./token.sh"
fi

echo "username: $USERNAME"
echo "password: $PASSWORD"

./start.sh
