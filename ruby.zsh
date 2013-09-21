# Aliases

alias be="bundle exec"
alias bi="bundle install"
alias b="bundle install"
alias bu="bundle update"
alias rtest='ruby -I"lib:test"'
alias bxr="bundle exec rspec"
alias bxc="bundle exec rake cucumber"
alias cuke="bundle exec cucumber"
alias rage="be rake"

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
