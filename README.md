CloudFormation Stacks to deploy a Geth node in AWS.

=== Building from source ===

sudo yum install -y golang
sudo yum install -y gmp-devel
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum/
make geth
ls -al  build/bin/geth

=== Running ===
./go-ethereum/build/bin/geth

It might be useful to run geth in a container
https://hub.docker.com/r/ethereum/client-go/

Apparently we can just grab the binary and execute it:
https://ethereum.stackexchange.com/questions/1537/how-can-i-install-go-ethereum-on-centos

<quote>
Geth is a single binary executable. No other files are needed for it, so using a package manager will only get you potential updates, but you could just grab the Linux binary itself and run it straight on your machine.

We always upload Linux x64 binaries to our GitHub releases if you would like to use the stable branch and we also provide cross builds to all platforms for our develop branch. These cross builds are done nightly and announced every morning by the build bot on out gitter channel (e.g. the last announcement).

Feel free to grab the plain Linux binary. It should run just fine. The stable branch still has a dependency for libgmp, but that was also dropped on develop already.
</quote>
