# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body42 Model.
  class Body42 < BaseModel
    # The page count to retrieve from the total results in the collection. Page
    # indexing starts at 1.
    # @return [Integer]
    attr_accessor :page

    # Number of individual resources listed in the response per page
    # @return [Integer]
    attr_accessor :page_size

    # Filter calls that were sent to this 10-digit number (E.164 format).
    # @return [String]
    attr_accessor :to

    # Filter calls that were sent from this 10-digit number (E.164 format).
    # @return [String]
    attr_accessor :from

    # Return calls that are from a specified date.
    # @return [String]
    attr_accessor :date_created

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page'] = 'Page'
      @_hash['page_size'] = 'PageSize'
      @_hash['to'] = 'To'
      @_hash['from'] = 'From'
      @_hash['date_created'] = 'DateCreated'
      @_hash
    end

    def initialize(page = nil,
                   page_size = nil,
                   to = nil,
                   from = nil,
                   date_created = nil)
      @page = page
      @page_size = page_size
      @to = to
      @from = from
      @date_created = date_created
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page = hash['Page']
      page_size = hash['PageSize']
      to = hash['To']
      from = hash['From']
      date_created = hash['DateCreated']

      # Create object from extracted values.
      Body42.new(page,
                 page_size,
                 to,
                 from,
                 date_created)
    end
  end
end