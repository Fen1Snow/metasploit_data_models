class EmailTemplate < ActiveRecord::Base
	belongs_to :campaign
	has_and_belongs_to_many :attachments

	extend Msf::DBManager::SerializedPrefs

	serialize :prefs, Msf::Base64Serializer.new

	serialized_prefs_attr_accessor :exploit_module, :exploit_attach_name
	serialized_prefs_attr_accessor :attach_exe
	serialized_prefs_attr_accessor :attach_exploit
end
