FROM ubuntu:14.04.3

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install links nano
    
#RUN apt-get -y install ruby ruby-dev rubygems-integration  
RUN apt-get -y install curl build-essential 

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN gem install jekyll --no-ri --no-rdoc

CMD ["bash"]

EXPOSE 4000
