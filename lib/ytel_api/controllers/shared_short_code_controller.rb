# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # SharedShortCodeController
  class SharedShortCodeController < BaseController
    @instance = SharedShortCodeController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieve a list of shortcode assignment associated with your Ytel account.
    # @param [String] shortcode Optional parameter: Only list keywords of
    # shortcode
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @return String response from the API call
    def create_list_shortcodes(shortcode = nil,
                               page = nil,
                               pagesize = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/shortcode/listshortcode.json'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'Shortcode' => shortcode
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => page,
        'pagesize' => pagesize
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Update Assignment
    # @param [String] shortcode Required parameter: List of valid shortcode to
    # your Ytel account
    # @param [String] friendly_name Optional parameter: User generated name of
    # the shortcode
    # @param [String] callback_url Optional parameter: URL that can be requested
    # to receive notification when call has ended. A set of default parameters
    # will be sent here once the call is finished.
    # @param [String] callback_method Optional parameter: Specifies the HTTP
    # method used to request the required StatusCallBackUrl once call
    # connects.
    # @param [String] fallback_url Optional parameter: URL used if any errors
    # occur during execution of InboundXML or at initial request of the required
    # Url provided with the POST.
    # @param [String] fallback_url_method Optional parameter: Specifies the HTTP
    # method used to request the required FallbackUrl once call connects.
    # @return String response from the API call
    def update_shortcode(shortcode,
                         friendly_name = nil,
                         callback_url = nil,
                         callback_method = nil,
                         fallback_url = nil,
                         fallback_url_method = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/shortcode/updateshortcode.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => shortcode,
        'FriendlyName' => friendly_name,
        'CallbackUrl' => callback_url,
        'CallbackMethod' => callback_method,
        'FallbackUrl' => fallback_url,
        'FallbackUrlMethod' => fallback_url_method
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Retrieve a list of keywords associated with your Ytel account.
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] keyword Optional parameter: Only list keywords of
    # keyword
    # @param [Integer] shortcode Optional parameter: Only list keywords of
    # shortcode
    # @return String response from the API call
    def create_list_keywords(page = nil,
                             pagesize = nil,
                             keyword = nil,
                             shortcode = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/keyword/lists.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => page,
        'pagesize' => pagesize,
        'Keyword' => keyword,
        'Shortcode' => shortcode
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # The response returned here contains all resource properties associated
    # with the given Shortcode.
    # @param [String] shortcode Required parameter: List of valid Shortcode to
    # your Ytel account
    # @return String response from the API call
    def create_view_shortcode(shortcode)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/shortcode/viewshortcode.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => shortcode
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Send an SMS from a Ytel ShortCode
    # @param [String] shortcode Required parameter: The Short Code number that
    # is the sender of this message
    # @param [String] to Required parameter: A valid 10-digit number that should
    # receive the message
    # @param [UUID | String] templateid Required parameter: The unique
    # identifier for the template used for the message
    # @param [String] data Required parameter: format of your data, example:
    # {companyname}:test,{otpcode}:1234
    # @param [String] method Optional parameter: Specifies the HTTP method used
    # to request the required URL once the Short Code message is sent.
    # @param [String] message_status_callback Optional parameter: URL that can
    # be requested to receive notification when Short Code message was sent.
    # @return String response from the API call
    def create_send_sms(shortcode,
                        to,
                        templateid,
                        data,
                        method = nil,
                        message_status_callback = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/shortcode/sendsms.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'shortcode' => shortcode,
        'to' => to,
        'templateid' => templateid,
        'data' => data,
        'Method' => method,
        'MessageStatusCallback' => message_status_callback
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # List Shortcode Templates by Type
    # @param [String] type Optional parameter: The type (category) of template
    # Valid values: marketing, authorization
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return per page.
    # @param [String] shortcode Optional parameter: Only list templates of
    # type
    # @return String response from the API call
    def create_list_templates(type = nil,
                              page = nil,
                              pagesize = nil,
                              shortcode = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/template/lists.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'type' => type,
        'page' => page,
        'pagesize' => pagesize,
        'Shortcode' => shortcode
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # View a Shared ShortCode Template
    # @param [UUID | String] template_id Required parameter: The unique
    # identifier for a template object
    # @return String response from the API call
    def create_view_template(template_id)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/template/view.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'TemplateId' => template_id
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # List All Inbound ShortCode
    # @param [String] datecreated Optional parameter: Only list messages sent
    # with the specified date
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: From Number to Inbound
    # ShortCode
    # @param [String] shortcode Optional parameter: Only list messages sent to
    # this Short Code
    # @return String response from the API call
    def create_list_inbound_sms(datecreated = nil,
                                page = nil,
                                pagesize = nil,
                                from = nil,
                                shortcode = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/shortcode/getinboundsms.json'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'Datecreated' => datecreated
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => page,
        'pagesize' => pagesize,
        'from' => from,
        'Shortcode' => shortcode
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # View a set of properties for a single keyword.
    # @param [String] keywordid Required parameter: The unique identifier of
    # each keyword
    # @return String response from the API call
    def create_view_keyword(keywordid)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/keyword/view.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Keywordid' => keywordid
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end
