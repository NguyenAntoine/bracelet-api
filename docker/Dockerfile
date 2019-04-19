FROM ruby:2.5.3-alpine3.8
# Minimal requirements to run a Rails app
RUN apk add --no-cache --update build-base \
                                linux-headers \
                                git \
                                postgresql-dev \
                                nodejs \
                                tzdata

ENV APP_PATH /usr/src/app

# Different layer for gems installation
WORKDIR $APP_PATH
ADD www/Gemfile $APP_PATH
ADD www/Gemfile.lock $APP_PATH
RUN bundle install --jobs `expr $(cat /proc/cpuinfo | grep -c "cpu cores") - 1` --retry 3

# Entrypoint
ADD docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Copy the application into the container
COPY ./www $APP_PATH
EXPOSE 3000