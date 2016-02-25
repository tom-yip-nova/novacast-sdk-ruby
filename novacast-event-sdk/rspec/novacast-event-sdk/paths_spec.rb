module NovacastSDK
  module EventV1
    module RSpec
      module Helpers
        def generate_path(template, params)
          path = template.sub('{format}','json')
          params.reduce(path) do |result, (key, type)|
            value = case type.downcase
                      when 'integer', 'number'
                        123456
                      when 'boolean'
                        true
                      else
                        'string'
                    end
            result.sub("{#{key}}", value.to_s)
          end
        end

        def expect_path_routable(path)
          expect(path).to be_routable
        end
      end

  
      class DefaultApiPaths
        def self.specs
        
          ::RSpec.describe 'GET /assets/{asset_bundle_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/assets/{asset_bundle_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /assets/{asset_bundle_uid}/confirm/{file_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String',
              
                :'file_path' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/assets/{asset_bundle_uid}/confirm/{file_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /assets/{asset_bundle_uid}/contents/{file_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String',
              
                :'file_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/assets/{asset_bundle_uid}/contents/{file_path}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /assets/{asset_bundle_uid}/pre_upload', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/assets/{asset_bundle_uid}/pre_upload', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /channels/{channel_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/channels/{channel_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/assets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/assets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/assets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/assets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/events', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/events', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/events', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/events', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/question_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/question_sets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/question_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/question_sets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/slide_decks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/slide_decks', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/slide_decks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/slide_decks', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/streams', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/streams', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/streams', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/streams', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/user_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/user_sets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/user_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/user_sets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /data_sets/{data_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'data_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/data_sets/{data_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /data_sets/{data_set_uid}/partitions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'data_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/data_sets/{data_set_uid}/partitions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/attendances', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/attendances', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/contents', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/contents/{content_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'content_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/contents/{content_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/data_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/data_sets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/data_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/data_sets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/page_contents/{page_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'page_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/page_contents/{page_path}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/page_contents/{page_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'page_path' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/page_contents/{page_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/page_exceptions/{page_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'page_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/page_exceptions/{page_path}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/page_exceptions/{page_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'page_path' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/page_exceptions/{page_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/page_mappings', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/page_mappings', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/page_mappings', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/page_mappings', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/pages', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/pages', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/pages/{page_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'page_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/pages/{page_path}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/pages/{page_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'page_path' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/pages/{page_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/runtimes/{content_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'content_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/runtimes/{content_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/sessions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/sessions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/sessions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/sessions', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/stage', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/stage', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/user_set', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/user_set', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/live_cast/sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/live_cast/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/live_cast/sessions/{session_uid}/page', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/live_cast/sessions/{session_uid}/page', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /mods/live_cast/sessions/{session_uid}/page', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/mods/live_cast/sessions/{session_uid}/page', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/user_feedback/{session_uid}/feedbacks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/user_feedback/{session_uid}/feedbacks', path_params))
            end
          end
        
          ::RSpec.describe 'POST /mods/user_feedback/{session_uid}/feedbacks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/mods/user_feedback/{session_uid}/feedbacks', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /page_mappings/{mapping_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'mapping_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/page_mappings/{mapping_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /page_mappings/{mapping_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'mapping_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/page_mappings/{mapping_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_content_types', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_content_types', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_contents/{question_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_contents/{question_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /question_contents/{question_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/question_contents/{question_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /question_contents/{question_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/question_contents/{question_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_contents/{question_content_uid}/submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_contents/{question_content_uid}/submissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_contents/{question_content_uid}/users/{user_uid}/submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String',
              
                :'user_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_contents/{question_content_uid}/users/{user_uid}/submissions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /question_contents/{question_content_uid}/users/{user_uid}/submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String',
              
                :'user_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/question_contents/{question_content_uid}/users/{user_uid}/submissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_sets/{question_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_sets/{question_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /question_sets/{question_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/question_sets/{question_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /question_sets/{question_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/question_sets/{question_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_sets/{question_set_uid}/question_contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_sets/{question_set_uid}/question_contents', path_params))
            end
          end
        
          ::RSpec.describe 'POST /question_sets/{question_set_uid}/question_contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/question_sets/{question_set_uid}/question_contents', path_params))
            end
          end
        
          ::RSpec.describe 'POST /question_sets/{question_set_uid}/reorder', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/question_sets/{question_set_uid}/reorder', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /sessions/{session_uid}/modules', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/sessions/{session_uid}/modules', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/runtime', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/runtime', path_params))
            end
          end
        
          ::RSpec.describe 'GET /slide_decks/{slide_deck_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/slide_decks/{slide_deck_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /slide_decks/{slide_deck_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/slide_decks/{slide_deck_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /slide_decks/{slide_deck_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/slide_decks/{slide_deck_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /slide_decks/{slide_deck_uid}/delete_slides', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/slide_decks/{slide_deck_uid}/delete_slides', path_params))
            end
          end
        
          ::RSpec.describe 'POST /slide_decks/{slide_deck_uid}/rearrange', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/slide_decks/{slide_deck_uid}/rearrange', path_params))
            end
          end
        
          ::RSpec.describe 'POST /slide_decks/{slide_deck_uid}/upload', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/slide_decks/{slide_deck_uid}/upload', path_params))
            end
          end
        
          ::RSpec.describe 'POST /stream_sources/{stream_source_uid}/confirm', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_source_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/stream_sources/{stream_source_uid}/confirm', path_params))
            end
          end
        
          ::RSpec.describe 'GET /streams/{stream_medium_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/streams/{stream_medium_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /streams/{stream_medium_uid}/sources', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/streams/{stream_medium_uid}/sources', path_params))
            end
          end
        
          ::RSpec.describe 'POST /streams/{stream_medium_uid}/sources/pre_upload', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/streams/{stream_medium_uid}/sources/pre_upload', path_params))
            end
          end
        
          ::RSpec.describe 'GET /user_sets/{user_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/user_sets/{user_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /user_sets/{user_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/user_sets/{user_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /user_sets/{user_set_uid}/enroll', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/user_sets/{user_set_uid}/enroll', path_params))
            end
          end
        
          ::RSpec.describe 'POST /user_sets/{user_set_uid}/white_list', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/user_sets/{user_set_uid}/white_list', path_params))
            end
          end
        
        end
      end
  
    end
  end
end

RSpec.configure do |c|
  c.include NovacastSDK::EventV1::RSpec::Helpers
end
