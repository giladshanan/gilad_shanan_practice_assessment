class Genie
  attr_accessor :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
    @in_lamp = true
    @submitted_wishes = {}
  end

  def enter_lamp
    @in_lamp = true
  end

  def exit_lamp
    @in_lamp = false
  end

  def grant_wish(wish)
    exit_lamp
    wish_count = 0
    @submitted_wishes.each  do | wish_key, value |
      if @submitted_wishes.length == 0
        wish_count += 1
      elsif @submitted_wishes[wish_key]
        wish_count += 1
      end
    end
    if wish_count < 3
      @submitted_wishes[wish]= true
      p "Your wish of #{wish} has been granted!"
    else
      @submitted_wishes[wish]= false
      p "Sorry, I've already granted three wishes today!"
    end
    enter_lamp
    return @submitted_wishes[wish]
  end

  def display_wish_history
    @submitted_wishes.each { | key, value | p "Your wish, '#{key}' was #{value ? "granted" : "not granted" }." }
  end

  def favorite_wish
    favorites_hash = @submitted_wishes
    @submitted_wishes.each do | wish, value  |
      characters = wish.chars
      favorites_hash[wish]= characters.count do | letter |
        %w(a e i o u).include?(letter)
      end
    end
    # line 52 is for readability, not strictly necessary
    favorite = favorites_hash.key(favorites_hash.values.max)
    p "My favorite wish is '#{favorite}'."
    return favorite
  end

end
