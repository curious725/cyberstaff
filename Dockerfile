FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev \
imagemagick

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -\
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn

RUN mkdir /cyberstaff

# modules for React(React is installed as gem)
# RUN npm install --save material-ui@next
# RUN npm install typeface-roboto --save
# RUN npm install --save material-ui-icons

WORKDIR /cyberstaff
COPY Gemfile /cyberstaff/Gemfile
COPY Gemfile.lock /cyberstaff/Gemfile.lock
RUN bundle install
COPY . /cyberstaff
