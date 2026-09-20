require Rails.root.join("config/behavior_profile").to_s

module Demo
  class BehaviorController < ApplicationController
    skip_forgery_protection

    def create
      ApplicationRecord.uncached do
        RailsSqliteSubject::QUERY_COUNT.times do
          Widget.where(id: -1).load
        end
      end

      DemoJob.perform_later
      render json: { ok: true }
    end
  end
end
