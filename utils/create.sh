#!/usr/bin/env bash

if [ ! -d "./prisma" ]; then
    cp -R -u ./source/prisma ./prisma
fi

if [ ! -d "./config" ]; then
    cp -R -u ./source/config ./config
fi
