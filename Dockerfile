FROM ruby:2.4

MAINTAINER ApprendreCO "contact@apprendre.co"

RUN gem install mailcatcher

EXPOSE 1025
EXPOSE 80

ENTRYPOINT ["mailcatcher", "-f"]


CMD ["mailcatcher", "--foreground", "--ip=0.0.0.0", "--smtp-port=1025", "--http-port=80"]