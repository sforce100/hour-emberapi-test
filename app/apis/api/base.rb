module API
  VALIDATION_ERROR = 100
  INVALID_RESOURCE = 101
  FILTER_NOT_ALLOWED = 102
  INVALID_FIELD_VALUE = 103
  INVALID_FIELD = 104
  PARAM_NOT_ALLOWED = 105
  PARAM_MISSING = 106
  INVALID_FILTER_VALUE = 107
  COUNT_MISMATCH = 108
  KEY_ORDER_MISMATCH = 109
  KEY_NOT_INCLUDED_IN_URL = 110
  INVALID_INCLUDE = 112
  RELATION_EXISTS = 113
  INVALID_SORT_PARAM = 114
  INVALID_LINKS_OBJECT = 115
  TYPE_MISMATCH = 116
  INVALID_PAGE_OBJECT = 117
  INVALID_PAGE_VALUE = 118
  RECORD_NOT_FOUND = 404
  LOCKED = 423

  class Base < Grape::API
    # before do
    #   header "Access-Control-Allow-Origin", "*"
    #   header 'Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    # end
    # cascade true
    mount API::V1::Base
  end
end
