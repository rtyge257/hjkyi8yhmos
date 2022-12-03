#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8e2f0e1c-a02e-4ad0-b714-6df269a31f92"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

