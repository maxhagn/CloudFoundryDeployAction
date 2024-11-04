#!/bin/sh -l

cf add-plugin-repo CF-Community https://plugins.cloudfoundry.org
cf install-plugin -f https://github.com/cloudfoundry-incubator/multiapps-cli-plugin/releases/latest/download/multiapps-plugin.linux32

cf login -a "$INPUT_CF_API" -u "$INPUT_CF_USERNAME" -p "$INPUT_CF_PASSWORD" -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"

sh -c "cf $*"