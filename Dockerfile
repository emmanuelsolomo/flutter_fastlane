FROM cirrusci/flutter:v1.12.13-hotfix.5

USER root

RUN gem install fastlane -NV && \
    gem install bundler 

USER cirrus

CMD bash



    
