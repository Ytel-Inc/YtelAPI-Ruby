# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body64 Model.
  class Body64 < BaseModel
    # The unique identifier for a conference.
    # @return [String]
    attr_accessor :conference_sid

    # The page count to retrieve from the total results in the collection. Page
    # indexing starts at 1.
    # @return [Integer]
    attr_accessor :page

    # The count of objects to return per page.
    # @return [Integer]
    attr_accessor :pagesize

    # Specifies if participant should be muted.
    # @return [Boolean]
    attr_accessor :muted

    # Specifies if the participant should hear audio in the conference.
    # @return [Boolean]
    attr_accessor :deaf

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['conference_sid'] = 'ConferenceSid'
      @_hash['page'] = 'Page'
      @_hash['pagesize'] = 'Pagesize'
      @_hash['muted'] = 'Muted'
      @_hash['deaf'] = 'Deaf'
      @_hash
    end

    def initialize(conference_sid = nil,
                   page = nil,
                   pagesize = nil,
                   muted = nil,
                   deaf = nil)
      @conference_sid = conference_sid
      @page = page
      @pagesize = pagesize
      @muted = muted
      @deaf = deaf
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      conference_sid = hash['ConferenceSid']
      page = hash['Page']
      pagesize = hash['Pagesize']
      muted = hash['Muted']
      deaf = hash['Deaf']

      # Create object from extracted values.
      Body64.new(conference_sid,
                 page,
                 pagesize,
                 muted,
                 deaf)
    end
  end
end