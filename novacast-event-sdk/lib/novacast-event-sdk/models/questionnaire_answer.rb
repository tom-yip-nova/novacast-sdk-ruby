module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionnaireAnswer < NovacastSDK::BaseModel
        attr_accessor :question_content_uid, :question_content_type, :choice

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # the question content that is associated with this answer
            :'question_content_uid' => { base_name: 'question_content_uid', type: 'String', required: true },
            # the question content type to help processing the answer at the server end
            :'question_content_type' => { base_name: 'question_content_type', type: 'String', required: false },
            # a JSON encoded string to represent the choices chosen
            :'choice' => { base_name: 'choice', type: 'Object', required: true }
          }
        end
      end
    end
  end
end
