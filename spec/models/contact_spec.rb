require 'spec_helper'

describe Contact do
  it { should have_valid(:email).when("tom.corley@yahoo.com", "TOM@hotmail.vendor.com") }
  it { should_not have_valid(:email).when("tom.com", nil, " ") }

  it { should have_valid(:subject).when("dog", "cat") }
  it { should_not have_valid(:subject).when(nil, " ") }

  it { should have_valid(:description).when("the dog", "that cat") }
  it { should_not have_valid(:description).when(nil, " ") }

  it { should have_valid(:first_name).when("Peter", "sally") }
  it { should_not have_valid(:first_name).when(nil, " ") }

  it { should have_valid(:last_name).when("Corley", "Newton-Shea") }
  it { should_not have_valid(:last_name).when(nil, " ") }
end
