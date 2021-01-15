FROM cirrusci/flutter:1.22.5

USER root

ENV PATH="/tmp/node-v10.23.1-linux-x64/bin:${PATH}"

RUN gem install fastlane -NV && \
    gem install bundler && \
    adduser aeig && \
    chown -R aeig:aeig /home/aeig && \
    cat /etc/passwd
    
USER aeig

RUN wget -q https://nodejs.org/dist/v10.23.1/node-v10.23.1-linux-x64.tar.xz  -O /tmp/node-v10.23.1-linux-x64.tar.xz && \
    tar xf /tmp/node-v10.23.1-linux-x64.tar.xz -C /tmp/ && \
    npm install -g firebase-tools 

CMD bash



    
