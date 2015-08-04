class String
  define_method(:sleep_in) do
    date_array = self.split("/")
    date = Time.new(date_array[2], date_array[0], date_array[1])


    if date.saturday?() | date.sunday?()
      return "Go ahead and sleep in, you earned it."
    else
      return date.strftime('%A')
    end

  end
end

# "Go ahead and sleep in, you earned it."
