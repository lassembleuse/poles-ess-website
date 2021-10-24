#!/bin/bash

deploy_site () {
  cd $1
  git fetch forked-repo
  git rebase forked-repo/master
  git push -f origin master
}

deploy_site_vallons () {
  echo 'Debut deploiement vallons'
  deploy_site '../vallons-website'
  echo 'Fin deploiement vallons'
}

deploy_site_broceliande () {
  echo 'Debut deploiement broceliande'
  deploy_site '../broceliande-website'
  git push -f scalingo master
  echo 'Fin deploiement broceliande'
}

deploy_site_vitre () {
  echo 'Debut deploiement vitre'
  deploy_site '../vitre-website'
  echo 'Fin deploiement vitre'
}

deploy_from_upstream () {
  git remote add upstream https://github.com/lassembleuse/poles-ess-website.git
  git fetch upstream
  git checkout master
  git merge upstream/master
  git push origin master
}

deploy_site_vallons
deploy_site_broceliande
deploy_site_vitre