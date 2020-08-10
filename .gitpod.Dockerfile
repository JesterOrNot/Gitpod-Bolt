FROM gitpod/workspace-full

USER gitpod

RUN wget https://apt.puppet.com/puppet-tools-release-focal.deb \
    && sudo dpkg -i puppet-tools-release-focal.deb \
    && sudo apt-get update -qq \
    && sudo apt-get install -yq \
        puppet-bolt
