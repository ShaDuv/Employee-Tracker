require 'rails_helper'

describe Employee do
  it { should have_many(:projects).through(:employee_projects) }

end
