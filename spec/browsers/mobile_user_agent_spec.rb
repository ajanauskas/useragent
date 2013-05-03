require 'user_agent'

describe "UserAgent: 'Nokia6800/2.0 (4.17) Profile/MIDP-1.0 Configuration/CLDC-1.0 UP.Link/5.1.2.9'" do
  before do
    @useragent = UserAgent.parse("Nokia6800/2.0 (4.17) Profile/MIDP-1.0 Configuration/CLDC-1.0 UP.Link/5.1.2.9")
  end

  it { @useragent.version.should == "2.0" }
  it { @useragent.browser.should == 'Nokia6800' }
  it { @useragent.platform.should be_nil }
  it { @useragent.os.should be_nil }
  it { @useragent.should be_mobile }
end

describe "UserAgent: 'Opera/8.01 (J2ME/MIDP; Opera Mini/3.0.6306/1528; en; U; ssr)'" do
  before do
    @useragent = UserAgent.parse("Opera/8.01 (J2ME/MIDP; Opera Mini/3.0.6306/1528; en; U; ssr)")
  end

  it { @useragent.browser.should == 'Opera' }
  it { @useragent.version.should == "8.01" }
  it { @useragent.platform.should == 'J2ME/MIDP' }
  it { @useragent.os.should == "Opera Mini/3.0.6306/1528" }
  it { @useragent.should be_mobile }
end

