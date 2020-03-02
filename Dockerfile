FROM cirrusci/flutter:v1.12.13-hotfix.5

USER root

ENV PATH="/tmp/node-v8.16.1-linux-x64/bin:${PATH}"

RUN gem install fastlane -NV && \
    gem install bundler && \
    wget -q https://nodejs.org/dist/v8.16.1/node-v8.16.1-linux-x64.tar.xz  -O /tmp/node-v8.16.1-linux-x64.tar.xz && \
    tar xf /tmp/node-v8.16.1-linux-x64.tar.xz -C /tmp/ && \
    npm install -g firebase-tools && \
    chown -R cirrus /home/cirrus/.config

USER cirrus

CMD bash



    
