#!/bin/sh
#set -x

create_default_conf_file()
{
(
cat <<'EOF'
{
"pools" : [
{
"url" : "192.168.110.30:3333",
"user" : "antminer_1",
"pass" : "123"
},
{
"url" : "http://stratum.antpool.com:3333",
"user" : "antminer_1",
"pass" : "123"
},
{
"url" : "50.31.149.57:3333",
"user" : "antminer_1",
"pass" : "123"
}
]
,
"api-listen" : true,
"api-network" : true,
"api-allow" : "W:0/0",
"bitmain-freq" : 600
}

EOF
) > /config/bmminer.conf
}

if [ ! -f /config/bmminer.conf ] ; then
    if [ -f /config/bmminer.conf.factory ] ; then
		cp /config/bmminer.conf.factory /config/bmminer.conf
    else
		create_default_conf_file
    fi
fi

cat /config/bmminer.conf
