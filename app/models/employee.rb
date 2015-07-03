class Employee < ActiveRecord::Base
	validates_presence_of :name, :englishname, :telephone, :phone, :qq, :email, :message => '不能为空!', :on => :create
	validates_format_of :email, :message => "邮箱格式不正确!", :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i , :on => :create
	validates_numericality_of :telephone, :phone, :qq, :only_integer => true
	validates_uniqueness_of :name, :message => "已经存在!", :case_sensitive => false
	belongs_to :department
	belongs_to :position
end