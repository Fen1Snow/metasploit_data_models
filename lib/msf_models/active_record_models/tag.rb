class Tag < ActiveRecord::Base
	include Msf::DBManager::DBSave
	has_and_belongs_to_many :hosts, :join_table => :hosts_tags

	def to_s
		name
	end
end