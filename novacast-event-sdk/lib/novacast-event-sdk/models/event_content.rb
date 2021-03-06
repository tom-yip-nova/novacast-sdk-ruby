module NovacastSDK
  module EventV1
    module Models
      # 
      class EventContent < NovacastSDK::BaseModel
        attr_accessor :type, :value, :public, :locale, :session_uid, :timestamp

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # content type
            :'type' => { base_name: 'type', type: 'String', required: true },
            
            # content value
            :'value' => { base_name: 'value', type: 'String', required: true },
            
            # content is public
            :'public' => { base_name: 'public', type: 'BOOLEAN', required: false },
            
            # the locale used for this content
            :'locale' => { base_name: 'locale', type: 'String', required: false },
            
            # uid of the session (only available for &#39;html&#39; type)
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false },
            
            # last updated time (not available for &#39;url&#39; type)
            :'timestamp' => { base_name: 'timestamp', type: 'DateTime', required: false }
            
          }
        end
      end
    end
  end
end
