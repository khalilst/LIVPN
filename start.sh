#!/bin/bash

export $(egrep -v '^#' .env | xargs)

./ipsec.sh
./xl2tp.sh