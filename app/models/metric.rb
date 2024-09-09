class Metric
  include Neo4j::ActiveNode

  property :key, type: String
  property :value, type: Integer
  property :created_at, type: DateTime

  validates :key, presence: true
  validates :value, presence: true, numericality: { only_integer: true }

  before_create :set_created_at

  def set_created_at
    self.created_at ||= Time.now
  end
end
