module NovacastSDK
  module EventV1
    module Models
      # 
      class AccessPolicy < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # access policy uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # access policy resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
