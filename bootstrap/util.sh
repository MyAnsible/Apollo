#!/bin/bash

# Util functions cloud reusable.

get_ansible_requirements() {
  ansible-galaxy install -n -r plugin-requirements.yml
}

get_apollo_ansible_variables() {
  local plugin_namespace='APOLLO_PLUGIN_'
  local var_list=()
  for i in $(env | grep ${plugin_namespace}); do
   var=${i#${plugin_namespace}}
   var_list+=(-var "$var")
  done
  echo ${var_list[@]}
}