# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body52 Model.
  class Body52 < BaseModel
    # Your dedicated shortcode
    # @return [Integer]
    attr_accessor :shortcode

    # The number to send your SMS to
    # @return [Float]
    attr_accessor :to

    # The body of your message
    # @return [String]
    attr_accessor :body

    # Specifies the HTTP method used to request the required URL once the Short
    # Code message is sent.GET or POST
    # @return [String]
    attr_accessor :method

    # URL that can be requested to receive notification when Short Code message
    # was sent.
    # @return [String]
    attr_accessor :messagestatuscallback

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['shortcode'] = 'shortcode'
      @_hash['to'] = 'to'
      @_hash['body'] = 'body'
      @_hash['method'] = 'method'
      @_hash['messagestatuscallback'] = 'messagestatuscallback'
      @_hash
    end

    def initialize(shortcode = nil,
                   to = nil,
                   body = nil,
                   method = nil,
                   messagestatuscallback = nil)
      @shortcode = shortcode
      @to = to
      @body = body
      @method = method
      @messagestatuscallback = messagestatuscallback
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      shortcode = hash['shortcode']
      to = hash['to']
      body = hash['body']
      method = hash['method']
      messagestatuscallback = hash['messagestatuscallback']

      # Create object from extracted values.
      Body52.new(shortcode,
                 to,
                 body,
                 method,
                 messagestatuscallback)
    end
  end
end