class Owner < ActiveRecord::Base
  has_many :repos
  has_many :style_configs, dependent: :destroy

  def self.upsert(github_id:, name:, organization:)
    owner = find_or_initialize_by(github_id: github_id)
    owner.name = name
    owner.organization = organization
    owner.save!
    owner
  end

  def to_s
    "#{self.class} ##{id}"
  end
end
