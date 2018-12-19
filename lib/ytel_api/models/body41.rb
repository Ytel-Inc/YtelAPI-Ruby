# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body41 Model.
  class Body41 < BaseModel
    # The page count to retrieve from the total results in the collection. Page
    # indexing starts at 1.
    # @return [Integer]
    attr_accessor :page

    # Number of individual resources listed in the response per page
    # @return [Integer]
    attr_accessor :page_size

    # Filter SMS message objects from this valid 10-digit phone number (E.164
    # format).
    # @return [String]
    attr_accessor :from

    # Filter SMS message objects to this valid 10-digit phone number (E.164
    # format).
    # @return [String]
    attr_accessor :to

    # Only list SMS messages sent in the specified date range
    # @return [String]
    attr_accessor :date_sent

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page'] = 'Page'
      @_hash['page_size'] = 'PageSize'
      @_hash['from'] = 'From'
      @_hash['to'] = 'To'
      @_hash['date_sent'] = 'DateSent'
      @_hash
    end

    def initialize(page = nil,
                   page_size = nil,
                   from = nil,
                   to = nil,
                   date_sent = nil)
      @page = page
      @page_size = page_size
      @from = from
      @to = to
      @date_sent = date_sent
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page = hash['Page']
      page_size = hash['PageSize']
      from = hash['From']
      to = hash['To']
      date_sent = hash['DateSent']

      # Create object from extracted values.
      Body41.new(page,
                 page_size,
                 from,
                 to,
                 date_sent)
    end
  end
end