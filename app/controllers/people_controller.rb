class PeopleController < ApplicationController

  def index

    if params[:sort_by]

      @people = 30.times.map do
        person = {
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          date_of_birth: (20.years.ago.to_date..4.years.ago.to_date).to_a.sample,
          eye_color: %w(brown blue hazel green).sample,
          telephone_number: Faker::PhoneNumber.phone_number
        }
      end.sort_by! do |people|
        people[params[:sort_by].to_sym]
      end

    else
      @people = 30.times.map do
      person = {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        date_of_birth: (20.years.ago.to_date..4.years.ago.to_date).to_a.sample,
        eye_color: %w(brown blue hazel green).sample,
        telephone_number: Faker::PhoneNumber.phone_number
      }
    end
    end

  end

end
