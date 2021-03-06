# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body5 Model.
  class Body5 < BaseModel
    # Number type either SMS,Voice or all
    # @return [Numbertype1Enum]
    attr_accessor :numbertype

    # Specifies the area code for the returned list of available numbers. Only
    # available for North American numbers.
    # @return [String]
    attr_accessor :areacode

    # The count of objects to return.
    # @return [Integer]
    attr_accessor :pagesize

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['numbertype'] = 'numbertype'
      @_hash['areacode'] = 'areacode'
      @_hash['pagesize'] = 'pagesize'
      @_hash
    end

    def initialize(numbertype = nil,
                   areacode = nil,
                   pagesize = nil)
      @numbertype = numbertype
      @areacode = areacode
      @pagesize = pagesize
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      numbertype = hash['numbertype']
      areacode = hash['areacode']
      pagesize = hash['pagesize']

      # Create object from extracted values.
      Body5.new(numbertype,
                areacode,
                pagesize)
    end
  end
end
