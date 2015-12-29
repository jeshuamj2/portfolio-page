#!/bin/bash

bundle exec middleman build
pushd build;
git remote add origin git@github.com:jeshuamj2/jeshuamj2.github.io.git;
git add --all;
git commit -m "Build pushed on `date`";
git push --force;
popd