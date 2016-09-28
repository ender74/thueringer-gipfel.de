#!/bin/bash
docker run --name tgipfel -i -t -p 4000:4000 -v /home/hueter/Projekte/tgipfel/:/site ender74/hexo server --drafts
