#!/usr/bin/env bash

TIME=$(date +"%Y_%m_%d-%H_%M_%S")

mkdir -p ./backup
mkdir -p ./backup/$TIME

cp -R -u ./prisma ./backup/$TIME/prisma
cp -R -u ./config ./backup/$TIME/config
