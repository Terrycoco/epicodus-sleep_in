require('rspec')
require('sleep_in')

describe('String#sleep_in') do
  it("accepts a date as string and returns what day of week") do
    expect(('8/4/2015').sleep_in()).to(eq("Tuesday"))
  end

  it("tells the user they can sleep in if the date is Saturday or Sunday") do
    expect(('8/1/2015').sleep_in()).to(eq("Go ahead and sleep in, you earned it."))
  end
end
