# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body34 Model.
  class Body34 < BaseModel
    # The SubaccountSid to be deleted
    # @return [String]
    attr_accessor :sub_account_sid

    # 0 to delete or 1 to merge numbers to parent account.
    # @return [MergeNumberEnum]
    attr_accessor :merge_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sub_account_sid'] = 'SubAccountSID'
      @_hash['merge_number'] = 'MergeNumber'
      @_hash
    end

    def initialize(sub_account_sid = nil,
                   merge_number = nil)
      @sub_account_sid = sub_account_sid
      @merge_number = merge_number
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      sub_account_sid = hash['SubAccountSID']
      merge_number = hash['MergeNumber']

      # Create object from extracted values.
      Body34.new(sub_account_sid,
                 merge_number)
    end
  end
end
