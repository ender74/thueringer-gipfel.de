#!/bin/bash
cd /site
npm install
echo running hexo $@
hexo $@
