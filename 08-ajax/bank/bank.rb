
module Bank
  class Account

    attr_reader :name

    def initialize( options = { balance: 0 } )
      @balance = options[:balance] || 0
      @name = options[:name]
    end

    def balance
      return @balance
    end

    def deposit(amount)
      @balance = @balance + amount
    end

    def withdraw num
      if @balance - num < 0
        return false
      else
        @balance = @balance - num
      end
    end
    
  end

end
