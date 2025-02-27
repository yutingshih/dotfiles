alias sshadd='eval $(ssh-agent) && ssh-add'
alias sshcheck='ps aux | grep ssh-agent'
alias sshkill='killall ssh-agent'
alias sshreadd='sshkill && sshadd'
