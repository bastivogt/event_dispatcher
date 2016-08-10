class Test
  include SV::EventDispatcher
  def initialize
    super
    @count = 0
  end

  def loop
    dispatch "on_start"
    @count = 0
    while @count < 10
      @count += 1
      dispatch "on_change"
    end
    dispatch "on_finish"
  end
end