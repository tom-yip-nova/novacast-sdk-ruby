module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmission < NovacastSDK::BaseModel
        attr_accessor :user_uid, :account_info, :question_content_uid, :question_manifest_uid, :answer, :created_at

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the submitter
            :'user_uid' => { base_name: 'user_uid', type: 'String', required: false },
            
            # 
            :'account_info' => { base_name: 'account_info', type: 'AccountDisplayInfo', required: false },
            
            # uid for the question content specific of this submission
            :'question_content_uid' => { base_name: 'question_content_uid', type: 'String', required: true },
            
            # uid for the question manifest specific of this submission
            :'question_manifest_uid' => { base_name: 'question_manifest_uid', type: 'String', required: true },
            
            # answer object
            :'answer' => { base_name: 'answer', type: 'Object', required: true },
            
            # submission time
            :'created_at' => { base_name: 'created_at', type: 'DateTime', required: true }
            
          }
        end
      end
    end
  end
end
