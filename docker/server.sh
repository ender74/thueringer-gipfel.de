#!/bin/bash
docker run -i -t -p 4000:4000 -v ~/Projekte/thueringer-gipfel.de/:/site ender74/hexo server --drafts
