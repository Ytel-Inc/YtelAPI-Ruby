# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body75 Model.
  class Body75 < BaseModel
    # List of valid dedicated shortcode to your Ytel account.
    # @return [String]
    attr_accessor :shortcode

    # User generated name of the dedicated shortcode.
    # @return [String]
    attr_accessor :friendly_name

    # Specifies the HTTP method used to request the required StatusCallBackUrl
    # once call connects.
    # @return [String]
    attr_accessor :callback_method

    # URL that can be requested to receive notification when call has ended. A
    # set of default parameters will be sent here once the call is finished.
    # @return [String]
    attr_accessor :callback_url

    # Specifies the HTTP method used to request the required FallbackUrl once
    # call connects.
    # @return [String]
    attr_accessor :fallback_method

    # URL used if any errors occur during execution of InboundXML or at initial
    # request of the required Url provided with the POST.
    # @return [String]
    attr_accessor :fallback_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['shortcode'] = 'Shortcode'
      @_hash['friendly_name'] = 'FriendlyName'
      @_hash['callback_method'] = 'CallbackMethod'
      @_hash['callback_url'] = 'CallbackUrl'
      @_hash['fallback_method'] = 'FallbackMethod'
      @_hash['fallback_url'] = 'FallbackUrl'
      @_hash
    end

    def initialize(shortcode = nil,
                   friendly_name = nil,
                   callback_method = nil,
                   callback_url = nil,
                   fallback_method = nil,
                   fallback_url = nil)
      @shortcode = shortcode
      @friendly_name = friendly_name
      @callback_method = callback_method
      @callback_url = callback_url
      @fallback_method = fallback_method
      @fallback_url = fallback_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      shortcode = hash['Shortcode']
      friendly_name = hash['FriendlyName']
      callback_method = hash['CallbackMethod']
      callback_url = hash['CallbackUrl']
      fallback_method = hash['FallbackMethod']
      fallback_url = hash['FallbackUrl']

      # Create object from extracted values.
      Body75.new(shortcode,
                 friendly_name,
                 callback_method,
                 callback_url,
                 fallback_method,
                 fallback_url)
    end
  end
end
