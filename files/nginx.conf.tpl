server {
    listen 80;

    access_log /home/{{ user }}/nginx-access.log;
    error_log /home/{{ user }}/nginx-error.log warn;

    location /static/ {
        autoindex   on;
        root  /home/{{ user }}/project/var/;
    }

    location /media/ {
        autoindex on;
        root /home/{{ user }}/project/var/;
    }

    location / {
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwared-For $remote_addr;
        proxy_set_header Host $host;
        proxy_pass http://127.0.0.1:8888;
    }
}