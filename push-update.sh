#!/bin/bash
cd ~/Sites/SaticSites/personal/portfolio
perl -i.bak -lpe 'BEGIN { sub inc { my ($num) = @_; ++$num } } s/(build = )(\d+)/$1 . (inc($2))/eg' config.toml
docker image build -t update .
# docker login
docker tag update m4ck3ngm/portfolio:latest
docker push m4ck3ngm/portfolio:latest
