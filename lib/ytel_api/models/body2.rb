# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body2 Model.
  class Body2 < BaseModel
    # The unique identifier for a template object
    # @return [UUID | String]
    attr_accessor :template_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['template_id'] = 'TemplateId'
      @_hash
    end

    def initialize(template_id = nil)
      @template_id = template_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      template_id = hash['TemplateId']

      # Create object from extracted values.
      Body2.new(template_id)
    end
  end
end