class Project < ApplicationRecord
  has_many :coverages
  validates_uniqueness_of :tag


 def controllers
    controllers_date = []
    coverages.each do |c|
      controllers_date.push(c.controller)
    end
    return controllers_date
  end

  def models
    models_date = []
    coverages.each do |c|
      models_date.push(c.model)
    end
    puts models_date
    return models_date
  end
  def requests
    requests_date = []
    coverages.each do |c|
      requests_date.push(c.request)
    end
    puts requests_date
    return requests_date
  end
end
