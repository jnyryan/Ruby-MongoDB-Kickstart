####################################
#
# Setup MongoDB on a Ubuntu Server
#
####################################

all: get_dependencies install_ruby1_9_3 install-mongo-server bundle_gems

get_dependencies:
	apt-get -y update
	apt-get -y install build-essential 
	apt-get -y install zlib1g-dev
	apt-get -y install libssl-dev
	apt-get -y install libreadline-dev
	#apt-get -y install libyaml-dev
	apt-get -y install libcurl4-openssl-dev
	apt-get -y install curl 
	apt-get -y install git-core
		
install_ruby1_9_3:
	@echo "\n == installing Ruby 1.9.3 =="
	#bash /build_scripts/install_ruby_1.9.3.sh

install-mongo-server:
	@echo "\n == installing Mongo =="
	bash ./build_scripts/install_mongodb_server.sh
		
clean:
	apt-get -qy --force-yes remove mongodb-10gen
	
bundle_gems:	
	gem update --system
	bundle install


