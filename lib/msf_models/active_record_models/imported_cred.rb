class ImportedCred < ActiveRecord::Base
	include Msf::DBManager::DBSave

	belongs_to :workspace
end
