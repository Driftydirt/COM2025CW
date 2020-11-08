FROM ruby:2.7.2

RUN apt-get update
RUN apt-get install -y nodejs

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.1.4
RUN bundle install
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD myapp/ $APP_HOME
RUN echo "export PATH=\"$PATH:/usr/local/bundle/bin\"" >> ~/.bashrc
EXPOSE 3000
CMD [ "/bin/bash", "-il" ]
# CMD ["rails", "server", "-b", "0.0.0.0"]
