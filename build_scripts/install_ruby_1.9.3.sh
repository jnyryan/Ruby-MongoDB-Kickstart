
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar -xvzf ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194/
./configure
make
make install
echo "gem: --no-ri --no-rdoc" >> ~/.gemrc
gem install bundler

cd ..
rm -f ruby-1.9.3-p194.tar.gz
rm -rf ruby-1.9.3-p194/
