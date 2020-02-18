require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "03d21ffdf385dfb8376360cc6d085591"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`
# pp forecast
# Example output:
#
 puts "In Evanson, it is currently #{forecast["currently"]["temperature"]} degress and #{forecast["currently"]["icon"]}"
puts "A daily extended forecast:"
for projection in forecast["daily"]["data"]
    puts "A high temperature of #{projection["temperatureHigh"]} and #{projection["summary"]}."
end
#"A high temperature of 33.98 and Mostly cloudy throughout the day.
#  A high temperature of 33.94 and Possible light snow until evening.
#  A high temperature of 32.73 and Mostly cloudy throughout the day.
#  A high temperature of 32.51 and Partly cloudy throughout the day.
#  A high temperature of 40.42 and Clear throughout the day.
#  A high temperature of 23.21 and Overcast throughout the day.
#  A high temperature of 29.12 and Clear throughout the day."