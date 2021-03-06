module NovacastSDK
  module EventV1
    module Models
      # 
      class SlideDeckInfo < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :page_count

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the slide deck
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # number of pages in the slide deck
            :'page_count' => { base_name: 'page_count', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
