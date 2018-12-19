# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body1 Model.
  class Body1 < BaseModel
    # The 10-digit SMS-enabled Ytel number (E.164 format) in which the message
    # is sent.
    # @return [String]
    attr_accessor :from

    # The 10-digit phone number (E.164 format) that will receive the message.
    # @return [String]
    attr_accessor :to

    # The body message that is to be sent in the text.
    # @return [String]
    attr_accessor :body

    # Specifies the HTTP method used to request the required URL once SMS sent.
    # @return [String]
    attr_accessor :method

    # URL that can be requested to receive notification when SMS has Sent. A set
    # of default parameters will be sent here once the SMS is finished.
    # @return [String]
    attr_accessor :message_status_callback

    # Check's 'to' number can receive sms or not using Carrier API, if wireless
    # = true then text sms is sent, else wireless = false then call is recieved
    # to end user with audible message.
    # @return [Boolean]
    attr_accessor :smartsms

    # Delivery reports are a method to tell your system if the message has
    # arrived on the destination phone.
    # @return [Boolean]
    attr_accessor :delivery_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['from'] = 'From'
      @_hash['to'] = 'To'
      @_hash['body'] = 'Body'
      @_hash['method'] = 'Method'
      @_hash['message_status_callback'] = 'MessageStatusCallback'
      @_hash['smartsms'] = 'Smartsms'
      @_hash['delivery_status'] = 'DeliveryStatus'
      @_hash
    end

    def initialize(from = nil,
                   to = nil,
                   body = nil,
                   method = nil,
                   message_status_callback = nil,
                   smartsms = nil,
                   delivery_status = nil)
      @from = from
      @to = to
      @body = body
      @method = method
      @message_status_callback = message_status_callback
      @smartsms = smartsms
      @delivery_status = delivery_status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      from = hash['From']
      to = hash['To']
      body = hash['Body']
      method = hash['Method']
      message_status_callback = hash['MessageStatusCallback']
      smartsms = hash['Smartsms']
      delivery_status = hash['DeliveryStatus']

      # Create object from extracted values.
      Body1.new(from,
                to,
                body,
                method,
                message_status_callback,
                smartsms,
                delivery_status)
    end
  end
end
