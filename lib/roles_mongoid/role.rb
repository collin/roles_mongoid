require 'roles_mongoid/base_role'

class Role
  include Mongoid::Document
  field :name, :type => String

  validates_uniqueness_of :name

  extend RoleClass::ClassMethods
end  
