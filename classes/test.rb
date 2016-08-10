class Test
  include SV::EventDispatcher
  def initialize
    super
    @count = 0
  end

  def loop
    name = "Seppel"
    dispatch_event "on_start", name
    @count = 0
    while @count < 10
      @count += 1
      dispatch_event "on_change", @count
    end
    dispatch_event "on_finish"
  end
end