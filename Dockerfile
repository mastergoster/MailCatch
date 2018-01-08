FROM ruby:2.4

MAINTAINER ApprendreCO "contact@apprendre.co"

RUN gem install mailcatcher

EXPOSE 1025
EXPOSE 1080

ENTRYPOINT ["mailcatcher", "-f"]
CMD ["--ip", "0.0.0.0"]
