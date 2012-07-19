require 'spec_helper'

describe Beginning do

  let(:user) { FactoryGirl.create(:user) }

  before { @beginning = user.beginnings.build(title: "blah", original_author: "mary mary", content: "Lorem ipsum") }

  subject { @beginning }

  it { should respond_to(:content) }
  it { should respond_to(:title) }
  it { should respond_to(:original_author) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }


  describe "when user_id is not present" do
    before { @beginning.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @beginning.content = " " }
    it { should_not be_valid }
  end

  describe "with blank title" do
    before { @beginning.title = " " }
    it { should_not be_valid }
  end
end
