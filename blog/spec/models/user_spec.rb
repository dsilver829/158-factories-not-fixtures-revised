require 'spec_helper'

describe User do
  it "authenticates with matching username and password" do
    user = create(:user, username: "batman", password: "secret")
    User.authenticate("batman", "secret").should eq(user)
  end

  it "does not authenticate with incorrect password" do
    create(:user, username: "batman", password: "secret")
    User.authenticate("batman", "incorrect").should be_nil
  end
end
