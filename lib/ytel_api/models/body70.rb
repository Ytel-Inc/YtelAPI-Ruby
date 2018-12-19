# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body70 Model.
  class Body70 < BaseModel
    # Which page of the overall response will be returned. Page indexing starts
    # at 1.
    # @return [Integer]
    attr_accessor :page

    # The page count to retrieve from the total results in the collection. Page
    # indexing starts at 1.
    # @return [Integer]
    attr_accessor :page_size

    # The capability supported by the number.Number type either SMS,Voice or all
    # @return [NumberTypeEnum]
    attr_accessor :number_type

    # A human-readable label added to the number object.
    # @return [String]
    attr_accessor :friendly_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page'] = 'Page'
      @_hash['page_size'] = 'PageSize'
      @_hash['number_type'] = 'NumberType'
      @_hash['friendly_name'] = 'FriendlyName'
      @_hash
    end

    def initialize(page = nil,
                   page_size = nil,
                   number_type = nil,
                   friendly_name = nil)
      @page = page
      @page_size = page_size
      @number_type = number_type
      @friendly_name = friendly_name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page = hash['Page']
      page_size = hash['PageSize']
      number_type = hash['NumberType']
      friendly_name = hash['FriendlyName']

      # Create object from extracted values.
      Body70.new(page,
                 page_size,
                 number_type,
                 friendly_name)
    end
  end
end
