class SampleDataTask
  class << self
    def setup
      puts "sample_data task"

      FactoryBot.create_list(:school, 5)

      %w(2017 2018 2019).each do |i|
        year = FactoryBot.create(:year, name: i)
        users = FactoryBot.create_list(:user, 10)
        users.each do |user|
          FactoryBot.create(:user_year, user: user, year: year)
        end
      end
    end
  end
end
