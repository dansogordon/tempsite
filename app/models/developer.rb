class Developer < ActiveRecord::Base
  validates :email, presence: true
  validates_uniqueness_of :email, :message => '%{value} has already registered.'

  def self.to_csv
    column_names  = %w{email}
    CSV.generate(headers: true) do |csv|
      csv << column_names
      all.each do |developer|
        csv << developer.attributes.values_at(*column_names)
      end
    end
  end
end
