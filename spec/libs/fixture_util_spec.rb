require 'rails_helper'

RSpec.describe FixtureUtil, type: :libs do
  describe 'find_randomly_with' do
    # テストを適用するテーブルを作成、破棄
    before :all do
      m = ActiveRecord::Migration.new
      m.verbose = false
      m.create_table :test_application_records do |t|
        t.string :name
      end
    end
    after :all do
      m = ActiveRecord::Migration.new
      m.verbose = false
      m.drop_table :test_application_records
    end

    # テストを適用するモデル
    class self::TestApplicationRecord < ApplicationRecord
    end

    it do
      2.times {self.class::TestApplicationRecord.create!(name: Faker::Name.name)}
      record = FixtureUtil.find_randomly_with(self.class::TestApplicationRecord)
      expect(record).not_to be_nil
      expect(record).to be_a(self.class::TestApplicationRecord)
    end

    context 'The database is empty' do
      it 'returns nil' do
        record = FixtureUtil.find_randomly_with(self.class::TestApplicationRecord)
        expect(record).to be_nil
      end
    end
  end
end
