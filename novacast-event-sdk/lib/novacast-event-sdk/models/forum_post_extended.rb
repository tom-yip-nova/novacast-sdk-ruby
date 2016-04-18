module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :account_uid, :content, :likes, :visible, :submitted_at, :approved, :hidden, :deleted

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # unique id
            :'uid' => { base_name: 'uid', type: 'String', required: false },
            
            # uid of the author
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # content of the post
            :'content' => { base_name: 'content', type: 'String', required: true },
            
            # number of likes
            :'likes' => { base_name: 'likes', type: 'Integer', required: false },
            
            # visible to public
            :'visible' => { base_name: 'visible', type: 'BOOLEAN', required: true },
            
            # submission time
            :'submitted_at' => { base_name: 'submitted_at', type: 'DateTime', required: true },
            
            # approved by moderator
            :'approved' => { base_name: 'approved', type: 'BOOLEAN', required: true },
            
            # whether the post is hidden
            :'hidden' => { base_name: 'hidden', type: 'BOOLEAN', required: true },
            
            # whether the post is deleted
            :'deleted' => { base_name: 'deleted', type: 'BOOLEAN', required: true }
            
          }
        end
      end
    end
  end
end
