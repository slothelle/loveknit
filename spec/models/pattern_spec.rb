require 'spec_helper'

describe Pattern do
  it { should be_instance_of(Pattern) }
  it { should belong_to(:user) }
  it { should belong_to(:needle) }
  it { should belong_to(:garment) }
  it { should belong_to(:yarn_weight) }
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:gauge_row_inch) }
  it { should allow_mass_assignment_of(:gauge_per_inch) }
  it { should allow_mass_assignment_of(:hat_circumference) }
  it { should allow_mass_assignment_of(:user_id) }
  it { should allow_mass_assignment_of(:needle_id) }
  it { should allow_mass_assignment_of(:garment_id) }
  it { should allow_mass_assignment_of(:yarn_weight_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:gauge_row_inch) }
  it { should validate_presence_of(:gauge_per_inch) }
  it { should validate_presence_of(:hat_circumference) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:needle_id) }
  it { should validate_presence_of(:garment_id) }
  it { should validate_presence_of(:yarn_weight_id) }
end