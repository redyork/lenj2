#! /bin/bash -e

sleep 5

/usr/sbin/nginx


# ===================================================
# Certs install
/root/install_certs.sh
# ===================================================


# ===================================================
# Certs update to crontab
/root/certs_update.sh
# ===================================================


su -c '/sbin/tini -- /usr/local/bin/jenkins.sh' jenkins

exec "$@"