require "calabash-android/management/adb"
require "calabash-android/operations"

Before do |scenario|
  is_manual = ENV['manual'].to_s == 'true'
  restarted_scenarios = ["@first_scenario"]
  auto_scenarios = ["@background_scenario"]
  if (is_manual && (scenario.source_tag_names & auto_scenarios).any?) || (scenario.source_tag_names & restarted_scenarios).any?
    clear_app_data
    start_test_server_in_background
  end

  if !is_manual && (scenario.source_tag_names & auto_scenarios).any?
    skip_this_scenario
  end
end

After('@last_scenario') do
  shutdown_test_server
end

After do |scenario|
  if scenario.failed?
    screenshot_embed
  end
  # shutdown_test_server
end