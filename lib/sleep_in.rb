class String
  define_method(:sleep_in) do
    date_array = self.split("/")
    if date_array.length == 3
      date = Time.new(date_array[2], date_array[0], date_array[1])

      if date.saturday?() | date.sunday?()
        return "Go ahead and sleep in, you earned it."
      else
        return date.strftime('%A')
      end
    else
      return "Invalid date. Try again"
    end
  end
end
