require './classes/event_dispatcher'
require './classes/test'

t = Test.new

def t.on_start(name)
  puts "on start | name: #{name}"
end

def t.on_change(c)
  puts "on change | count: #{c}"
end

def t.on_finish
  puts "on finish"
end

t.add_listener "on_start", :on_start
t.add_listener "on_change", :on_change
t.add_listener "on_finish", :on_finish

# t.remove_listener "on_change", :on_change

t.loop
