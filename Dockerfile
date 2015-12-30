FROM ubuntu:14.04.3

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install links nano
    
# Install Ruby/Jekyll
RUN apt-get install -y ruby rubygems-integration ruby-dev make
RUN gem install jekyll -v 2.5.3

CMD ["bash"]

EXPOSE 4000
