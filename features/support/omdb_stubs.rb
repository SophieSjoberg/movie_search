module OMDBStubs
  def self.multiple_response
    File.read(fixtures_folder + "/multiple_movies_result.json")
  end

  def self.fixtures_folder
    File.join(Rails.root, "features", "support", "fixtures")
  end
end
