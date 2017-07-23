# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser

  attr_reader :emails # creates reader for emails instance

  def initialize(emails) # each new instance is intialized with access
    @emails = emails     # to the emails reader so they can be set
  end

  def parse
    emails.split.map do |email| # iterates through the emails and
      email.split(',')          # splits them at commas
    end.flatten.uniq            # then combines array and removes
  end                           # duplicates

# binding.pry
end

