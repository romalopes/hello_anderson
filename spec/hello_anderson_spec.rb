require 'spec_helper'
require 'hello_anderson'

describe "Roma" do
  pending "write it"
end

describe "Roma_1" do
  pending "write it"
end


describe HelloAnderson do
	# let(:user) { FactoryGirl.create(:user) }
#	  before do
	    # This code is not idiomatically correct.
#	    @micropost = Micropost.new(content: "Lorem ipsum", user_id: user.id)
#	  end

	# before { @micropost = user.microposts.build(content: "Lorem ipsum") }

  # subject { @micropost }
	describe "when use call say hello" do
    	before { @a = HelloAnderson.say_hello }
    	# it { should_not eq "Roma" }
    	# puts HelloAnderson.say_hello
    	it "should return right string" do
    		# a = HelloAnderson.say_hello
    		expect(@a).to eq "Hello Anderson!"
    	end
	end

	# describe "when user_id is not present" do
 #    	before { HelloAnderson.say_hello }
 #    	it { should eq "Hello Anderson!" }
	# end

end