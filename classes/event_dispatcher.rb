module SV
  module EventDispatcher

    attr_reader :listeners

    def initialize
      @listeners = []
    end



    def has_listener(type, listener)
      @listeners.each do |l|
        if l[:type] == type && l[:listener] == listener
          return true
        end
      end
      false
    end



    def add_listener(type, listener)
      if has_listener type, listener
        return
      end
      @listeners.push({type: type, listener: listener})
    end




    def remove_listener(type, listener)
      @listeners.each do |l|
        if l[:type] == type && l[:listener]
          @listeners.delete l
        end
      end
    end




    def dispatch(type)
      @listeners.each do |l|
        if l[:type] == type && respond_to?(l[:listener])
          send l[:listener]
        end
      end
    end

  end
end