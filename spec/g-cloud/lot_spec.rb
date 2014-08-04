require "helper"

describe GCloud::Lot do

  describe ".by_number" do
    it { expect(described_class.by_number nil).to eq nil }
    it { expect(described_class.by_number 0).to eq nil }
    it { expect(described_class.by_number 1).to eq "IaaS" }
    it { expect(described_class.by_number 2).to eq "PaaS" }
    it { expect(described_class.by_number 3).to eq "SaaS" }
    it { expect(described_class.by_number 4).to eq "SCS" }
  end

  describe ".by_term" do
    it { expect(described_class.by_term nil).to eq nil }
    it { expect(described_class.by_term "Other").to eq nil }
    it { expect(described_class.by_term "IaaS").to eq 1 }
    it { expect(described_class.by_term "PaaS").to eq 2 }
    it { expect(described_class.by_term "SaaS").to eq 3 }
    it { expect(described_class.by_term "SCS").to eq 4 }
  end

end