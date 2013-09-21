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

# ZSH files
cp 'zshrc',                       '.zshrc'
cp 'prompt.zsh',                  '.zsh/prompt.zsh'
cp 'aliases.zsh',                 '.zsh/aliases.zsh'
cp 'leiningen.zsh',               '.zsh/leiningen.zsh'
cp 'ruby.zsh',                    '.zsh/ruby.zsh'
cp 'zsh-syntax-highlighting.zsh', '.zsh/zsh-syntax-highlighting.zsh'
cp 'zsh-syntax-highlighting',     '.zsh/zsh-syntax-highlighting'
cp 'vcprompt',                    '.bin/vcprompt'

# Vim
cp 'vimrc',                       '.vimrc'
cp 'vim',                         '.vim'
cp 'vim-fugitive',                '.vim/bundle/vim-fugitive'
cp 'vim-ruby',                    '.vim/bundle/vim-ruby'
cp 'nerdtree',                    '.vim/bundle/nerdtree'
cp 'VimClojure',                  '.vim/bundle/VimClojure'
cp 'vim-coffee-script',           '.vim/bundle/vim-coffee-script'
cp 'mustache.vim',                '.vim/bundle/mustache.vim'
cp 'vim-jst',                     '.vim/bundle/vim-jst'

cp 'gitconfig',                   '.gitconfig'
cp 'tmux.conf',                   '.tmux.conf'
cp 'gemrc',                       '.gemrc'
cp 'rspec',                       '.rspec'

# Make ZSH the default login shell
zsh_path = `which zsh`
`chsh -s #{zsh_path} #{TARGET_OWNER}`

