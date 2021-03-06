module NovacastSDK
  module EventV1
    module Models
      # 
      class WhitelistRequest < NovacastSDK::BaseModel
        attr_accessor :enrollment_field, :pattern_type, :patterns

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the field this pattern applies to
            :'enrollment_field' => { base_name: 'enrollment_field', type: 'String', required: true },
            
            # pattern type
            :'pattern_type' => { base_name: 'pattern_type', type: 'String', required: true },
            
            # a list of pattern values
            :'patterns' => { base_name: 'patterns', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
