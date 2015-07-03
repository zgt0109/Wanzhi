class Position < ActiveRecord::Base
	validates_presence_of :name, :message => '不能为空!', :on => :create
	validates_uniqueness_of :name, :message => "已经存在!", :case_sensitive => false
	belongs_to :department
end
