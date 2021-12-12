#!/bin/sh
apt install gcc make git unzip wget xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev libfreetype6-dev libcurl4-openssl-dev rapidjson-dev libasound2-dev libgl1-mesa-dev build-essential libboost-all-dev cmake fonts-droid-fallback libvlc-dev libvlccore-dev vlc-bin texinfo premake4 golang libssl-dev curl patchelf xmlstarlet default-jre xsltproc ;
apt-get update && apt-get install --yes --no-install-recommends ca-certificates build-essential git libssl-dev curl cpio bspatch vim gettext bc bison flex dosfstools kmod && rm -rf /var/lib/apt/lists/* /tmp/* && curl --progress-bar --output /usr/bin/jq --location https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x /usr/bin/jq ;
snap install docker ;
git clone https://github.com/mrgs83/redpill-tool-chain.git ;
cd redpill-tool-chain ;
cp sample_user_config.json bromolow_user_config.json ;
cp sample_user_config.json apollolake_user_config.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/main/mpt2sas/rpext-index.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/main/vmxnet3/rpext-index.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/master/bnx2/rpext-index.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/main/bnx2x/rpext-index.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/master/tg3/rpext-index.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/master/ixgbe/rpext-index.json ;
./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/master/8139cp/rpext-index.json ;
#./redpill_tool_chain.sh add https://raw.githubusercontent.com/pocopico/rp-ext/master/8139too/rpext-index.json ;
#./redpill_tool_chain.sh build apollolake-7.0.1-42218 ;
#./redpill_tool_chain.sh auto apollolake-7.0.1-42218 ;
./redpill_tool_chain.sh build bromolow-7.0.1-42218 ;
./redpill_tool_chain.sh auto bromolow-7.0.1-42218
