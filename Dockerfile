FROM ruby:2.3.4
RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /codebuild-testing
WORKDIR /codebuild-testing
ADD Gemfile /codebuild-testing/Gemfile
ADD Gemfile.lock /codebuild-testing/Gemfile.lock
RUN bundle install
ADD . /codebuild-testing
