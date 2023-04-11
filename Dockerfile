FROM alpine:edge


# Install dependencies
RUN apk add --no-cache vim git curl bash fzf nodejs ripgrep 

# Set the working directory to /root
WORKDIR /root

# clone the dotfiles
RUN git clone https://github.com/sschneemelcher/vim9rc

RUN ln -s /root/vim9rc/vimrc.vim /root/.vimrc

RUN curl -fLo /root/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim plugins with vim-plug
# when some plugin fails to install, continue with the rest of the Dockerfile
# (this is useful for plugins that are not available on Alpine or for plugins
# that require some extra installation steps)
RUN vim -es -u /root/.vimrc -i NONE -c "PlugInstall" -c "qa" || true

# Set working directory to /work
WORKDIR /work

ENV TERM xterm-256color

# TESATAFASDYTASFDVYTADFSV
