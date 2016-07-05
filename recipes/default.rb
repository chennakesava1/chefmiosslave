#
# Cookbook Name:: HanaDevelopXmakeMios
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "HanaDevelopXmakeMios::maven"
include_recipe "HanaDevelopUnix::java"
include_recipe "HanaDevelopXmakeMios::doxygen"
