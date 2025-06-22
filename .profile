# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias de='deactivate' 
alias re='bash update_reminder.sh' 
alias vnv='cd ~/github/easygo; source venv/bin/activate' 
alias vnv-1='cd ~/github-1/easygo; source venv-1/bin/activate' 
alias reg='sudo systemctl restart gunicorn' 
alias ren='sudo systemctl restart nginx' 
alias stop='sudo systemctl stop gunicorn' 
alias start='sudo systemctl start gunicorn' 
alias backup='sqlite3 db.sqlite3 ".backup .backup/backup.sqlite3" ' 
alias dumpdata='bash dumpdata.sh' 
alias restore='sqlite3 db.sqlite3 ".restore .backup/backup.sqlite3" ' 
alias bt='bash celery_beat.sh' 
alias cel='bash celery_worker.sh' 
alias home='deactivate && cd /home/horeb' 
alias kill='pkill -f "celery -A main.celery worker"' 
alias reminder='bash update_reminder.sh' 
alias final='bash final_notice.sh' 
alias booking='bash booking_reminder.sh' 
alias confirm='bash confirm_booking.sh' 
alias inquiry='bash inquiry_to_confirm.sh' 
alias cron='sudo cat /var/log/syslog | grep CRON' 
alias syslog='sudo tail -f /var/log/syslog' 
alias gitlog='git log -n 10' 
alias djangolog='sudo cat /home/horeb/github/easygo/logs/django.log' 
alias clean='cd ~/github/easygo/logs; echo -n > django.log && cd /home/horeb' 
alias check='ps -ef | grep celery'
alias purge='echo "yes" | celery -A main.celery purge'
alias inspect='celery -A main inspect reserved' 
alias active='celery -A main inspect active'
alias pid='ps aux | grep "celery worker" '
alias shutdown='echo "celery -A main control shutdown --destination=" '
alias calendar='bash double_check_calendar.sh' 
alias lotto='cd ~/github/easygo/lottery; python3 lotto.py' 
alias ozlotto='cd ~/github/easygo/lottery; python3 oz_lotto.py' 
alias powerball='cd ~/github/easygo/lottery; python3 powerball.py' 

