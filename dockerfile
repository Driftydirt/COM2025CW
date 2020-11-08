FROM ruby:2.7.2

RUN apt-get update
RUN apt-get install -y nodejs

RUN useradd ross
RUN mkdir /home/ross
RUN chown ross.users /home/ross

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

USER ross

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.1.4
RUN bundle install

ADD ./ $APP_HOME
WORKDIR $APP_HOME/myapp
RUN bundle install
RUN echo "export PATH=\"$PATH:/usr/local/bundle/bin\"" >> ~/.bashrc
# RUN export PATH="$PATH:/usr/local/bundle/bin"
EXPOSE 3000
# CMD [ "/bin/bash", "-i" ]
CMD ["rails", "server", "-b", "0.0.0.0"]
