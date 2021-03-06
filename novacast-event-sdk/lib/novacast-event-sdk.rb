require 'novacast-sdk-core'

require 'novacast-event-sdk/errors.rb'

# Models

require 'novacast-event-sdk/models/access_filter'

require 'novacast-event-sdk/models/access_policy'

require 'novacast-event-sdk/models/access_policy_create_request'

require 'novacast-event-sdk/models/access_policy_extended'

require 'novacast-event-sdk/models/access_policy_list'

require 'novacast-event-sdk/models/access_policy_update_request'

require 'novacast-event-sdk/models/account'

require 'novacast-event-sdk/models/account_creation_response'

require 'novacast-event-sdk/models/account_creation_response_list'

require 'novacast-event-sdk/models/account_display_info'

require 'novacast-event-sdk/models/account_extended'

require 'novacast-event-sdk/models/account_extended_list'

require 'novacast-event-sdk/models/account_list'

require 'novacast-event-sdk/models/account_request'

require 'novacast-event-sdk/models/account_resource_roles'

require 'novacast-event-sdk/models/account_resource_roles_list'

require 'novacast-event-sdk/models/account_role_update_request'

require 'novacast-event-sdk/models/active_data_set_update_request'

require 'novacast-event-sdk/models/active_path'

require 'novacast-event-sdk/models/active_path_list'

require 'novacast-event-sdk/models/active_poll'

require 'novacast-event-sdk/models/active_poll_list'

require 'novacast-event-sdk/models/active_questionnaire'

require 'novacast-event-sdk/models/active_questionnaire_list'

require 'novacast-event-sdk/models/add_poll_stat_request'

require 'novacast-event-sdk/models/add_questionnaire_stat_request'

require 'novacast-event-sdk/models/archive_activity'

require 'novacast-event-sdk/models/archive_activity_list'

require 'novacast-event-sdk/models/asset_bundle'

require 'novacast-event-sdk/models/asset_bundle_create_request'

require 'novacast-event-sdk/models/asset_bundle_info'

require 'novacast-event-sdk/models/asset_bundle_info_list'

require 'novacast-event-sdk/models/attendance'

require 'novacast-event-sdk/models/attendance_response'

require 'novacast-event-sdk/models/batch_track_attendance_request'

require 'novacast-event-sdk/models/batch_track_attendance_response'

require 'novacast-event-sdk/models/bundle_content'

require 'novacast-event-sdk/models/bundle_content_confirm_request'

require 'novacast-event-sdk/models/bundle_content_pre_upload_request'

require 'novacast-event-sdk/models/channel'

require 'novacast-event-sdk/models/channel_batch_request'

require 'novacast-event-sdk/models/channel_data'

require 'novacast-event-sdk/models/channel_list'

require 'novacast-event-sdk/models/client_request_info'

require 'novacast-event-sdk/models/data_set'

require 'novacast-event-sdk/models/data_set_create_request'

require 'novacast-event-sdk/models/data_set_list'

require 'novacast-event-sdk/models/data_set_partition'

require 'novacast-event-sdk/models/data_set_partition_list'

require 'novacast-event-sdk/models/dictionary_entry'

require 'novacast-event-sdk/models/dictionary_filter_response'

require 'novacast-event-sdk/models/dictionary_query_response'

require 'novacast-event-sdk/models/enrollment'

require 'novacast-event-sdk/models/enrollment_extended'

require 'novacast-event-sdk/models/enrollment_field'

require 'novacast-event-sdk/models/enrollment_field_value'

require 'novacast-event-sdk/models/enrollment_list_response'

require 'novacast-event-sdk/models/error'

require 'novacast-event-sdk/models/error_field'

require 'novacast-event-sdk/models/event'

require 'novacast-event-sdk/models/event_content'

require 'novacast-event-sdk/models/event_create_request'

require 'novacast-event-sdk/models/event_extended'

require 'novacast-event-sdk/models/event_list'

require 'novacast-event-sdk/models/event_page'

require 'novacast-event-sdk/models/event_page_create_request'

require 'novacast-event-sdk/models/event_page_list'

require 'novacast-event-sdk/models/event_page_update_request'

require 'novacast-event-sdk/models/event_session'

require 'novacast-event-sdk/models/event_session_command'

require 'novacast-event-sdk/models/event_session_command_list'

require 'novacast-event-sdk/models/event_session_extended'

require 'novacast-event-sdk/models/event_session_info_request'

require 'novacast-event-sdk/models/event_session_list'

require 'novacast-event-sdk/models/event_stage_request'

require 'novacast-event-sdk/models/event_update_request'

require 'novacast-event-sdk/models/filter_access_action'

require 'novacast-event-sdk/models/filter_access_request'

require 'novacast-event-sdk/models/filter_access_response'

require 'novacast-event-sdk/models/forum_post'

require 'novacast-event-sdk/models/forum_post_create_request'

require 'novacast-event-sdk/models/forum_post_extended'

require 'novacast-event-sdk/models/forum_post_extended_list'

require 'novacast-event-sdk/models/forum_post_like'

require 'novacast-event-sdk/models/forum_post_like_list'

require 'novacast-event-sdk/models/forum_post_like_request'

require 'novacast-event-sdk/models/forum_post_list'

require 'novacast-event-sdk/models/forum_post_update_request'

require 'novacast-event-sdk/models/get_account_display_info_request'

require 'novacast-event-sdk/models/get_account_display_info_response'

require 'novacast-event-sdk/models/live_cast_page_change_request'

require 'novacast-event-sdk/models/live_cast_page_change_response'

require 'novacast-event-sdk/models/live_cast_slide_page'

require 'novacast-event-sdk/models/live_cast_state'

require 'novacast-event-sdk/models/manifest_submissions'

require 'novacast-event-sdk/models/module_runtime'

require 'novacast-event-sdk/models/page_content'

require 'novacast-event-sdk/models/page_content_delete_response'

require 'novacast-event-sdk/models/page_content_list'

require 'novacast-event-sdk/models/page_content_update_request'

require 'novacast-event-sdk/models/page_runtime'

require 'novacast-event-sdk/models/paging'

require 'novacast-event-sdk/models/paging_details'

require 'novacast-event-sdk/models/path_mapping'

require 'novacast-event-sdk/models/path_mapping_request'

require 'novacast-event-sdk/models/poll_status'

require 'novacast-event-sdk/models/poll_status_control_request'

require 'novacast-event-sdk/models/presigned_upload'

require 'novacast-event-sdk/models/preview_token'

require 'novacast-event-sdk/models/preview_token_info'

require 'novacast-event-sdk/models/public_alias'

require 'novacast-event-sdk/models/public_alias_create_request'

require 'novacast-event-sdk/models/public_alias_list'

require 'novacast-event-sdk/models/public_alias_update_request'

require 'novacast-event-sdk/models/question_content'

require 'novacast-event-sdk/models/question_content_create_request'

require 'novacast-event-sdk/models/question_content_list'

require 'novacast-event-sdk/models/question_content_order_request'

require 'novacast-event-sdk/models/question_content_type'

require 'novacast-event-sdk/models/question_content_type_list'

require 'novacast-event-sdk/models/question_content_update_request'

require 'novacast-event-sdk/models/question_manifest'

require 'novacast-event-sdk/models/question_manifest_create_request'

require 'novacast-event-sdk/models/question_manifest_delete_response'

require 'novacast-event-sdk/models/question_manifest_list'

require 'novacast-event-sdk/models/question_manifest_update_request'

require 'novacast-event-sdk/models/question_set'

require 'novacast-event-sdk/models/question_set_create_request'

require 'novacast-event-sdk/models/question_set_info'

require 'novacast-event-sdk/models/question_set_info_list'

require 'novacast-event-sdk/models/question_set_list'

require 'novacast-event-sdk/models/question_set_update_request'

require 'novacast-event-sdk/models/question_submission'

require 'novacast-event-sdk/models/question_submission_create'

require 'novacast-event-sdk/models/question_submission_create_request'

require 'novacast-event-sdk/models/question_submission_query_response'

require 'novacast-event-sdk/models/question_submissions_list'

require 'novacast-event-sdk/models/questionnaire_answer'

require 'novacast-event-sdk/models/questionnaire_status'

require 'novacast-event-sdk/models/questionnaire_status_control_request'

require 'novacast-event-sdk/models/runtime_info'

require 'novacast-event-sdk/models/session_attendance'

require 'novacast-event-sdk/models/session_attendance_response'

require 'novacast-event-sdk/models/session_module'

require 'novacast-event-sdk/models/session_module_config'

require 'novacast-event-sdk/models/session_module_list'

require 'novacast-event-sdk/models/session_module_resource'

require 'novacast-event-sdk/models/session_module_update'

require 'novacast-event-sdk/models/session_module_update_config'

require 'novacast-event-sdk/models/session_module_update_item'

require 'novacast-event-sdk/models/session_module_update_request'

require 'novacast-event-sdk/models/session_runtime'

require 'novacast-event-sdk/models/session_status'

require 'novacast-event-sdk/models/session_user_list'

require 'novacast-event-sdk/models/slide'

require 'novacast-event-sdk/models/slide_deck'

require 'novacast-event-sdk/models/slide_deck_create_request'

require 'novacast-event-sdk/models/slide_deck_info'

require 'novacast-event-sdk/models/slide_deck_info_list'

require 'novacast-event-sdk/models/slide_deck_update_request'

require 'novacast-event-sdk/models/slide_delete_request'

require 'novacast-event-sdk/models/slide_order_request'

require 'novacast-event-sdk/models/slide_update_request'

require 'novacast-event-sdk/models/stream_medium'

require 'novacast-event-sdk/models/stream_medium_create_request'

require 'novacast-event-sdk/models/stream_medium_info'

require 'novacast-event-sdk/models/stream_medium_info_list'

require 'novacast-event-sdk/models/stream_medium_update_request'

require 'novacast-event-sdk/models/stream_source'

require 'novacast-event-sdk/models/stream_source_confirm_request'

require 'novacast-event-sdk/models/stream_source_create_request'

require 'novacast-event-sdk/models/stream_source_pre_upload_request'

require 'novacast-event-sdk/models/switch_mapping_request'

require 'novacast-event-sdk/models/template_manifest'

require 'novacast-event-sdk/models/template_manifest_list'

require 'novacast-event-sdk/models/track_attendance_request'

require 'novacast-event-sdk/models/translation_filter_options_response'

require 'novacast-event-sdk/models/update_dictionary_definition_request'

require 'novacast-event-sdk/models/user_feedback'

require 'novacast-event-sdk/models/user_feedback_list'

require 'novacast-event-sdk/models/user_feedback_post_request'

require 'novacast-event-sdk/models/user_runtime_data'

require 'novacast-event-sdk/models/user_set'

require 'novacast-event-sdk/models/user_set_create_request'

require 'novacast-event-sdk/models/user_set_enroll_request'

require 'novacast-event-sdk/models/user_set_extended'

require 'novacast-event-sdk/models/user_set_list'

require 'novacast-event-sdk/models/user_set_update_request'

require 'novacast-event-sdk/models/whitelist_pattern'

require 'novacast-event-sdk/models/whitelist_pattern_list'

require 'novacast-event-sdk/models/whitelist_request'


# APIs
require 'novacast-event-sdk/api/default_api'
require 'novacast-event-sdk/api/internal_api'

module NovacastSDK
  module EventV1
    def self.configure
      yield self.config if block_given?
    end

    def self.config
      @config ||= NovacastSDK::Client::Configuration.new
    end
  end
end

NovacastSDK::EventV1.config.base_path = '/api/v1'
