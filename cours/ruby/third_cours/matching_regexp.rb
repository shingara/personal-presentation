if 'I am a rubyiste' =~ /^I\s+(\w+)\s+(\w+)/
  puts $1 # am
  puts $2 # a
  puts $3 # nil
end
