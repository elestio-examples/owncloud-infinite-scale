set env vars
set -o allexport; source .env; set +o allexport;

sleep 20s;


sed -i 's@listen 21905 ssl http2;@listen 21905 ssl http2;\nlocation ^~ /browser {\nproxy_pass http://172.17.0.1:21902;\nproxy_set_header Host $http_host;\n}\n\n# main websocket\nlocation ~ ^/cool/(.*)/ws$ {\nproxy_pass http://172.17.0.1:21902;\nproxy_set_header Upgrade $http_upgrade;\nproxy_set_header Connection "Upgrade";\nproxy_set_header Host $http_host;\nproxy_read_timeout 36000s;\n}\n\n# download, presentation and image upload\nlocation ~ ^/(c|l)ool {\nproxy_pass http://172.17.0.1:21902;\nproxy_set_header Host $http_host;\n}\n\n# Admin Console websocket\nlocation ^~ /cool/adminws {\nproxy_pass http://172.17.0.1:21902;\nproxy_set_header Upgrade $http_upgrade;\nproxy_set_header Connection "Upgrade";\nproxy_set_header Host $http_host;\nproxy_read_timeout 36000s;\n}\n@g' /opt/elestio/nginx/conf.d/${DOMAIN}.conf


docker exec elestio-nginx nginx -s reload;


    # sed -i "s|'installed' => true,|'installed' => true,\n  'mail_from_address' => '"$MAIL_FROM_ADDRESS"',\n  'mail_smtpmode' => 'smtp',\n  'mail_sendmailmode' => 'smtp',\n  'mail_domain' => '"$MAIL_DOMAIN"',\n  'mail_smtpport' => '"$EMAIL_PORT"',\n  'mail_smtphost' => '"$EMAIL_HOST"',|g" ./config/config.php

