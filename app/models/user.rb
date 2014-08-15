# -*- coding: utf-8 -*-
class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword # for has_secure_password

  has_secure_password

  field :name
  field :email
  field :password_digest

  # validates :email,  presence: true, uniqueness: true
  # validates :password_digest,  presence: true


  attr_reader :password, :password_confirmation


end
