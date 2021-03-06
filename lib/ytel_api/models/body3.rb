# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body3 Model.
  class Body3 < BaseModel
    # The unique identifier for the sms resource
    # @return [String]
    attr_accessor :message_sid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['message_sid'] = 'MessageSid'
      @_hash
    end

    def initialize(message_sid = nil)
      @message_sid = message_sid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      message_sid = hash['MessageSid']

      # Create object from extracted values.
      Body3.new(message_sid)
    end
  end
end
