FROM ubuntu:14.04.3

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install links nano
    
#RUN apt-get -y install ruby ruby-dev rubygems-integration  
RUN apt-get -y install curl build-essential 
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN gem install jekyll --no-ri --no-rdoc

CMD ["bash"]

EXPOSE 4000
