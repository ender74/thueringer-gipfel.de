#!/bin/bash
cd /site
ls -l
npm update
npm install
echo running hexo $@
hexo $@
