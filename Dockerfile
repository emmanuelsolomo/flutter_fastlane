FROM cirrusci/flutter:1.20.1

USER root

ENV PATH="/tmp/node-v8.16.1-linux-x64/bin:${PATH}"

RUN gem install fastlane -NV && \
    gem install bundler
    
USER cirrus

RUN wget -q https://nodejs.org/dist/v8.16.1/node-v8.16.1-linux-x64.tar.xz  -O /tmp/node-v8.16.1-linux-x64.tar.xz && \
    tar xf /tmp/node-v8.16.1-linux-x64.tar.xz -C /tmp/ && \
    npm install -g firebase-tools 

USER cirrus

CMD bash



    
