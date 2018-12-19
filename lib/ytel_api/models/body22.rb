# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body22 Model.
  class Body22 < BaseModel
    # The unique identifier of each call resource
    # @return [String]
    attr_accessor :call_sid

    # URL to sound that should be played. You also can add more than one audio
    # file using semicolons e.g.
    # http://example.com/audio1.mp3;http://example.com/audio2.wav
    # @return [String]
    attr_accessor :audio_url

    # Valid alphanumeric string that should be played to the In-progress call.
    # @return [String]
    attr_accessor :say_text

    # Time limit in seconds for audio play back
    # @return [Integer]
    attr_accessor :length

    # The leg of the call audio will be played to
    # @return [Direction1Enum]
    attr_accessor :direction

    # If false, all other audio will be muted
    # @return [Boolean]
    attr_accessor :mix

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['call_sid'] = 'CallSid'
      @_hash['audio_url'] = 'AudioUrl'
      @_hash['say_text'] = 'SayText'
      @_hash['length'] = 'Length'
      @_hash['direction'] = 'Direction'
      @_hash['mix'] = 'Mix'
      @_hash
    end

    def initialize(call_sid = nil,
                   audio_url = nil,
                   say_text = nil,
                   length = nil,
                   direction = nil,
                   mix = nil)
      @call_sid = call_sid
      @audio_url = audio_url
      @say_text = say_text
      @length = length
      @direction = direction
      @mix = mix
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      call_sid = hash['CallSid']
      audio_url = hash['AudioUrl']
      say_text = hash['SayText']
      length = hash['Length']
      direction = hash['Direction']
      mix = hash['Mix']

      # Create object from extracted values.
      Body22.new(call_sid,
                 audio_url,
                 say_text,
                 length,
                 direction,
                 mix)
    end
  end
end
