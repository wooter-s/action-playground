#！/bin/bash
echo "HOST is ${HOST}"
echo "${SECRET}" > "${FILENAME}"
chmod 600 "${FILENAME}"
scp -i "${FILENAME}" test.ts "${USER}@${HOST}:/"
