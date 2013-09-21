#!/usr/bin/env ruby

require 'fileutils'

LOCAL_ROOT   = File.dirname(__FILE__)
TARGET_ROOT  = ARGV[0]
TARGET_OWNER = ARGV[1]

def cp(local, target)
  full_local  = File.join(LOCAL_ROOT, local)
  full_target = File.join(TARGET_ROOT, target)
  FileUtils.rm full_target if File.exist?(full_target)
  FileUtils.cp full_local, full_target
  p '*' * 8
  p File.stat(full_target)
  p '*' * 8
  FileUtils.chown TARGET_OWNER, TARGET_OWNER, full_target
end

cp('zshrc', '.zshrc')
