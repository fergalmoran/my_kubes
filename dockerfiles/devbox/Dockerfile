FROM arm32v7/ubuntu:17.10

RUN apt update -y

RUN apt-get install -y locales locales-all
ENV LANG en_IE.UTF-8  
ENV LANGUAGE en_IE:en  
ENV LC_ALL en_IE.UTF-8     

RUN apt install -y git build-essential zsh python3.6 sudo curl openssh-server sudo vim-nox
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN wget http://node-arm.herokuapp.com/node_latest_armhf.deb 
RUN dpkg -i node_latest_armhf.deb

RUN useradd -m -d /home/fergalm -s /bin/bash -G sudo fergalm && echo fergalm:changeme | chpasswd     

USER fergalm
RUN mkdir /home/fergalm/.config/

WORKDIR /home/fergalm

RUN echo 'Cloning & creating dotfiles'

RUN git clone https://github.com/fergalmoran/dotfiles.git dotfiles
WORKDIR /home/fergalm/dotfiles
RUN echo $(pwd)
RUN echo $(ls -1)

ADD symlinks.sh /home/fergalm/dotfiles/
RUN sh symlinks.sh

RUN git clone https://github.com/tmux-plugins/tpm.git /home/fergalm/.tmux/plugins/tpm
RUN git clone https://github.com/bobthecow/git-flow-completion.git /home/fergalm/.oh-my-zsh/custom/plugins/git-flow-completion

RUN git clone https://github.com/fergalmoran/vimfiles.git /home/fergalm/.vim
RUN ln -s /home/fergalm/.vim/.vimrc /home/fergalm/.vimrc

RUN cd /home/fergalm/.vim
RUN git submodule init
RUN git submodule update
# RUN vim +BundleInstall +qall

RUN git config --global user.email "fergal.moran@gmail.com"
RUN git config --global user.name "Fergal Moran"
RUN git config --global user.name "Fergal Moran"

ENTRYPOINT ["/usr/bin/zsh"]

