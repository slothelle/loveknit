require 'spec_helper'

describe Pattern do
  it { should be_instance_of(Pattern) }
  it { should belong_to(:user) }
  it { should belong_to(:hat_pattern) }
  it { should allow_mass_assignment_of(:user_id) }
  it { should allow_mass_assignment_of(:hat_pattern_id) }
  it { should allow_mass_assignment_of(:user) }
  it { should allow_mass_assignment_of(:hat_pattern) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:hat_pattern_id) }
end