#set env vars
#set -o allexport; source .env; set +o allexport;

mkdir -p ./files
# chown -R 1000:1000 ./data

mkdir -p ./mysql
# chown -R 1000:1000 ./mysql

mkdir -p ./redis
# chown -R 1000:1000 ./redis
