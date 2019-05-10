FactoryBot.define do
  factory :user do
    sei { Faker::Name.last_name }
    mei { Faker::Name.first_name }

    # すでに school が存在する場合はそれを利用し、存在しない場合は適当なデータを作る
    school do
      if School.exists?
        FixtureUtil.find_randomly_with(School)
      else
        FactoryBot.create(:school)
      end
    end
  end
end
