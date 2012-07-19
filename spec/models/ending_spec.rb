require 'spec_helper'

describe Ending do

 let(:user) { FactoryGirl.create(:user) }

  before { @ending = user.endings.build(title: "blah", content: "Lorem ipsum") }

  subject { @ending }

  it { should respond_to(:content) }
  it { should respond_to(:title) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }


  describe "when user_id is not present" do
    before { @ending.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @ending.content = " " }
    it { should_not be_valid }
  end
end

