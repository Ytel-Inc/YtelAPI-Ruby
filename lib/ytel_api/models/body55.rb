# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body55 Model.
  class Body55 < BaseModel
    # A valid 10-digit number (E.164 format) that will be initiating the
    # conference call.
    # @return [String]
    attr_accessor :from

    # A valid 10-digit number (E.164 format) that is to receive the conference
    # call.
    # @return [String]
    attr_accessor :to

    # Specifies the HTTP method used to request the required URL once call
    # connects.
    # @return [String]
    attr_accessor :method

    # URL that can be requested to receive notification when call has ended. A
    # set of default parameters will be sent here once the conference is
    # finished.
    # @return [String]
    attr_accessor :status_call_back_url

    # Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @return [String]
    attr_accessor :status_call_back_method

    # URL requested if the initial Url parameter fails or encounters an error
    # @return [String]
    attr_accessor :fallback_url

    # Specifies the HTTP method used to request the required FallbackUrl once
    # call connects.
    # @return [String]
    attr_accessor :fallback_method

    # Specifies if the conference should be recorded.
    # @return [Boolean]
    attr_accessor :record

    # Recording parameters will be sent here upon completion.
    # @return [String]
    attr_accessor :record_call_back_url

    # Specifies the HTTP method used to request the required URL once conference
    # connects.
    # @return [String]
    attr_accessor :record_call_back_method

    # Schedule conference in future. Schedule time must be greater than current
    # time
    # @return [String]
    attr_accessor :schedule_time

    # The number of seconds the call stays on the line while waiting for an
    # answer. The max time limit is 999 and the default limit is 60 seconds but
    # lower times can be set.
    # @return [Integer]
    attr_accessor :timeout

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['from'] = 'From'
      @_hash['to'] = 'To'
      @_hash['method'] = 'Method'
      @_hash['status_call_back_url'] = 'StatusCallBackUrl'
      @_hash['status_call_back_method'] = 'StatusCallBackMethod'
      @_hash['fallback_url'] = 'FallbackUrl'
      @_hash['fallback_method'] = 'FallbackMethod'
      @_hash['record'] = 'Record'
      @_hash['record_call_back_url'] = 'RecordCallBackUrl'
      @_hash['record_call_back_method'] = 'RecordCallBackMethod'
      @_hash['schedule_time'] = 'ScheduleTime'
      @_hash['timeout'] = 'Timeout'
      @_hash
    end

    def initialize(from = nil,
                   to = nil,
                   method = nil,
                   status_call_back_url = nil,
                   status_call_back_method = nil,
                   fallback_url = nil,
                   fallback_method = nil,
                   record = nil,
                   record_call_back_url = nil,
                   record_call_back_method = nil,
                   schedule_time = nil,
                   timeout = nil)
      @from = from
      @to = to
      @method = method
      @status_call_back_url = status_call_back_url
      @status_call_back_method = status_call_back_method
      @fallback_url = fallback_url
      @fallback_method = fallback_method
      @record = record
      @record_call_back_url = record_call_back_url
      @record_call_back_method = record_call_back_method
      @schedule_time = schedule_time
      @timeout = timeout
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      from = hash['From']
      to = hash['To']
      method = hash['Method']
      status_call_back_url = hash['StatusCallBackUrl']
      status_call_back_method = hash['StatusCallBackMethod']
      fallback_url = hash['FallbackUrl']
      fallback_method = hash['FallbackMethod']
      record = hash['Record']
      record_call_back_url = hash['RecordCallBackUrl']
      record_call_back_method = hash['RecordCallBackMethod']
      schedule_time = hash['ScheduleTime']
      timeout = hash['Timeout']

      # Create object from extracted values.
      Body55.new(from,
                 to,
                 method,
                 status_call_back_url,
                 status_call_back_method,
                 fallback_url,
                 fallback_method,
                 record,
                 record_call_back_url,
                 record_call_back_method,
                 schedule_time,
                 timeout)
    end
  end
end