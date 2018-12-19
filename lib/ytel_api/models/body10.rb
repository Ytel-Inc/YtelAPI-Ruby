# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body10 Model.
  class Body10 < BaseModel
    # The unique identifier for a recording object.
    # @return [String]
    attr_accessor :recording_sid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['recording_sid'] = 'recordingSid'
      @_hash
    end

    def initialize(recording_sid = nil)
      @recording_sid = recording_sid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      recording_sid = hash['recordingSid']

      # Create object from extracted values.
      Body10.new(recording_sid)
    end
  end
end