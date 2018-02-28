class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :wikis
  has_many :collaborators, dependent: :destroy
  after_initialize :init

  def init
    self.role ||= :standard
  end

  enum role: [:standard, :admin, :premium]

  def upgrade
    self.role = :premium
  end

  def downgrade
    self.standard!
  end

  def collaborator_for(wiki)
    collaborators.where(wiki_id: wiki.id).first
  end
end
