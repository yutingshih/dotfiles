alias d=docker
alias dat='docker attach'
alias db='docker build'
alias dc='docker-compose'
alias dex='docker exec'
alias di='docker images'
alias dp='docker ps -a'
alias dr='docker run'
alias drm='docker rm'
alias drmi='docker rmi'
alias dl='docker logs'

dockerd() {
    systemctl --user $1 docker-desktop.service
}
