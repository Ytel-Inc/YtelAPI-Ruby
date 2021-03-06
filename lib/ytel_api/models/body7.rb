# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body7 Model.
  class Body7 < BaseModel
    # The unique identifier for a conference object.
    # @return [String]
    attr_accessor :conference_sid

    # The unique identifier for a participant object.
    # @return [String]
    attr_accessor :participant_sid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['conference_sid'] = 'ConferenceSid'
      @_hash['participant_sid'] = 'ParticipantSid'
      @_hash
    end

    def initialize(conference_sid = nil,
                   participant_sid = nil)
      @conference_sid = conference_sid
      @participant_sid = participant_sid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      conference_sid = hash['ConferenceSid']
      participant_sid = hash['ParticipantSid']

      # Create object from extracted values.
      Body7.new(conference_sid,
                participant_sid)
    end
  end
end
