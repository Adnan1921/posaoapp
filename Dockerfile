FROM ruby:3.0.2
RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client
ADD . /Rails-Docker
WORKDIR /Rails-Docker
ENV BUNDLER_VERSION=2.2.20
RUN gem install bundler:2.2.20

RUN bundle install
EXPOSE 3000
CMD ["bash"]