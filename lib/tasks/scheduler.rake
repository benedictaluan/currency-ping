desc 'Fetches and alerts the latest currency from OrbitRemit API'
task :fetch_latest_rates => :environment do
  Base.update_data
end