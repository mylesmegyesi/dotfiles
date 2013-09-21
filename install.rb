#!/usr/bin/env ruby

require 'fileutils'

LOCAL_ROOT   = File.dirname(__FILE__)
TARGET_ROOT  = ARGV[0]
TARGET_OWNER = ARGV[1]

def cp(local, target)
  full_local  = File.join(LOCAL_ROOT, local)
  full_target = File.join(TARGET_ROOT, target)
  if File.directory?(full_local)
    FileUtils.rm_rf full_target if File.exist?(full_target)
    full_target_dir = File.dirname(full_target)
    FileUtils.mkpath(full_target_dir)
    FileUtils.chown TARGET_OWNER, TARGET_OWNER, full_target_dir
    FileUtils.cp_r File.join(full_local, '.'), full_target
    FileUtils.chown TARGET_OWNER, TARGET_OWNER, full_target
  else
    FileUtils.rm full_target if File.exist?(full_target)
    full_target_dir = File.dirname(full_target)
    FileUtils.mkpath(full_target_dir)
    FileUtils.chown TARGET_OWNER, TARGET_OWNER, full_target_dir
    FileUtils.cp full_local, full_target
    FileUtils.chown TARGET_OWNER, TARGET_OWNER, full_target
  end
end

cp('zshrc', '.zshrc')
cp('zsh-syntax-highlighting.zsh', '.zsh/zsh-syntax-highlighting.zsh')
cp('zsh-syntax-highlighting', '.zsh/zsh-syntax-highlighting')
cp('prompt.zsh', '.zsh/prompt.zsh')
cp('vcprompt', '.bin/vcprompt')
