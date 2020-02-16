#！/bin/bash
echo "HOST is ${HOST}"
echo "${SECRET}" > temp_key
chmod 777 temp_key
scp -i temp_key test.ts "${USER}@${HOST}:/"
