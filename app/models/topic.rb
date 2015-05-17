class Topic < ActiveRecord::Base
  def self.all
    Rails.application.config.topics
  end
end
