# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body21 Model.
  class Body21 < BaseModel
    # A valid address that will receive the email. Multiple addresses can be
    # separated by using commas.
    # @return [String]
    attr_accessor :to

    # Specifies the type of email to be sent
    # @return [TypeEnum]
    attr_accessor :type

    # The subject of the mail. Must be a valid string.
    # @return [String]
    attr_accessor :subject

    # The email message that is to be sent in the text.
    # @return [String]
    attr_accessor :message

    # A valid address that will send the email.
    # @return [String]
    attr_accessor :from

    # Carbon copy. A valid address that will receive the email. Multiple
    # addresses can be separated by using commas.
    # @return [String]
    attr_accessor :cc

    # Blind carbon copy. A valid address that will receive the email. Multiple
    # addresses can be separated by using commas.
    # @return [String]
    attr_accessor :bcc

    # A file that is attached to the email. Must be less than 7 MB in size.
    # @return [String]
    attr_accessor :attachment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['to'] = 'To'
      @_hash['type'] = 'Type'
      @_hash['subject'] = 'Subject'
      @_hash['message'] = 'Message'
      @_hash['from'] = 'From'
      @_hash['cc'] = 'Cc'
      @_hash['bcc'] = 'Bcc'
      @_hash['attachment'] = 'Attachment'
      @_hash
    end

    def initialize(to = nil,
                   type = nil,
                   subject = nil,
                   message = nil,
                   from = nil,
                   cc = nil,
                   bcc = nil,
                   attachment = nil)
      @to = to
      @type = type
      @subject = subject
      @message = message
      @from = from
      @cc = cc
      @bcc = bcc
      @attachment = attachment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      to = hash['To']
      type = hash['Type']
      subject = hash['Subject']
      message = hash['Message']
      from = hash['From']
      cc = hash['Cc']
      bcc = hash['Bcc']
      attachment = hash['Attachment']

      # Create object from extracted values.
      Body21.new(to,
                 type,
                 subject,
                 message,
                 from,
                 cc,
                 bcc,
                 attachment)
    end
  end
end
