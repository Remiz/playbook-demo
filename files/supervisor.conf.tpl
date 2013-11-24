[program:gunicorn]
command=/home/{{ user }}/venv/bin/gunicorn project.wsgi -c /home/{{ user }}/gunicorn.conf.py
directory=/home/{{ user }}/project/
user={{ user }}
autostart=true
autorestart=true
redirect_stderr=True
stdout_logfile=/home/{{ user }}/gunicorn.log
stderr_logfile=/home/{{ user }}/gunicorn.log