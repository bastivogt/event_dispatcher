require './classes/event_dispatcher'
require './classes/test'

t = Test.new
def t.on_start()
  puts "on start"
end

def t.on_change
  puts "on change | count: #{@count}"
end

def t.on_finish
  puts "on finish"
end

t.add_listener "on_start", :on_start
t.add_listener "on_change", :on_change
t.add_listener "on_finish", :on_finish

t.loop