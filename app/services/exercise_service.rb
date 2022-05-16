class ExerciseService

  def self.get_all_exercises
    response = conn.get("exercises")
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: "https://exercisedb.p.rapidapi.com/") do |require|
      require.headers['X-RapidAPI-Host'] = 'exercisedb.p.rapidapi.com'
      require.headers['X-RapidAPI-Key'] = ENV['exercise_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
