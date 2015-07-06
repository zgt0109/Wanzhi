class Department < ActiveRecord::Base
	# validates :name,presence:true
	validates_presence_of :name, :message => '不能为空!', :on => :create
	validates_uniqueness_of :name, :message => "已经存在!", :case_sensitive => false
 
    has_many :employees
    has_many :positions

end
