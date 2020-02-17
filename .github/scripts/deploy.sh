#！/bin/bash
echo "HOST is ${HOST}"
echo "${SECRET}" > "${FILENAME}"
chmod 600 "${FILENAME}"
rm -f ~/.ssh/known_hosts
scp -i "${FILENAME}" test.ts "${USER}@${HOST}:/"
