#!/bin/bash
i5ting_toc -f README.md -v
mv preview/README.html preview/index.html 
perl -pi -e 's/i5ting_ztree_toc:README/文档集合/g' preview/index.html 
