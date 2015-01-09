sudo apt-get -y install curl libgmp10 pax
cd /tmp
curl -s -O 'https://www.haskell.org/platform/download/2014.2.0.0/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz'
cd /
sudo pax -rzf /tmp/haskell-platform*
rm -fr /tmp/haskell-platform*
sudo /usr/local/haskell/ghc-7.8.3-x86_64/bin/activate-hs
ln -s /usr/lib/x86_64-linux-gnu/libgmp.so.10 /usr/lib/x86_64-linux-gnu/libgmp.so
export PATH=${PATH}:/usr/local/bin:/usr/local/sbin
sudo cabal update
sudo cabal install --prefix=/usr/local/haskell/ghc-7.8.3-x86_64 cabal cabal-install
sudo chown -R vagrant:vagrant /home/vagrant/.cabal /home/vagrant/.ghc
