#!/bin/bash
docker run --name tgipfel-build -i -t -v /home/hueter/Projekte/tgipfel/:/site ender74/hexo build
