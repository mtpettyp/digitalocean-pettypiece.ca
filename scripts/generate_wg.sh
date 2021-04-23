#! /bin/bash
while getopts i:s: flag
do
    case "${flag}" in
        i) ip=${OPTARG};;
        s) server=${OPTARG};;
        *) ;;
    esac
done

PRIVATE_KEY=$(wg genkey)
export PRIVATE_KEY
PUBLIC_KEY=$(echo "$PRIVATE_KEY" | wg pubkey)
export PUBLIC_KEY
SERVER_PUBLIC_KEY=$server
export SERVER_PUBLIC_KEY
IP=$ip
export IP
echo "Private Key:" "$PRIVATE_KEY"
echo "Public Key:" "$PUBLIC_KEY"
echo "Server Public Key:" "$SERVER_PUBLIC_KEY"
echo "IP:" "$IP"
echo ""
CONFIG_FILE=$(envsubst < wireguard.conf)
echo "$CONFIG_FILE"
echo ""
echo "$CONFIG_FILE" | qrencode -t ansiutf8