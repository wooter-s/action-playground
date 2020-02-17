#！/bin/bash
echo "HOST is ${HOST}"
echo "${SECRET}" > "${FILENAME}"
chmod 600 "${FILENAME}"
chmod 600 ~/.ssh/known_hosts
scp -i "${FILENAME}" test.ts "${USER}@${HOST}:/"
