class Example < ActiveRecord::Base
	belongs_to :technology
	belongs_to :user
	belongs_to :page

	has_many :taggings
	has_many :tags, through: :taggings
has_attached_file :image, styles: {

	example: "100x100>"
}

validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	def self.tagged_with(name)
		Tag.find_by_name!(name).examples
	end

	def self.tag_counts
		Tag.select("tags.name, count(taggings.tag_id) as count").
		joins(:taggings).group("taggings.tag_id")
	end

	def all_tags
		tags.map(&:name).join(", ")
	end

	def all_tags=(names)
		self.tags = names.split(",").map do |n|
			Tag.where(name: n.strip).first_or_create!
		end
	end

	

	def to_s
		"#{name}"
	end

end
