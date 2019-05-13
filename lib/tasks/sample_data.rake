# frozen_string_literal: true

namespace :sample_data do
  desc 'Preparing sample data for the development environment'
  task setup: :environment do
    abort 'This task can not be used for the production environment.' if Rails.env.production?
    SampleDataTask.setup
  end
end
