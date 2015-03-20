require 'rails_helper'

describe Comment do
  it { should validate_presence_of :author }
  it { should validate_presence_of :entry }
end
