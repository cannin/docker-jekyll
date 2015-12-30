FROM ubuntu:14.04.3

# Add brightbox
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng-experimental

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install links nano
    
# Install Ruby
RUN apt-get install -y ruby2.1 ruby2.1-dev

# Install deps
RUN apt-get install -y build-essential jekyll

# Cleanup Apt
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["bash"]

EXPOSE 4000
