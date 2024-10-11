RSpec.describe FunTranslations do
    specify '.version' do
        expect(described_class::VERSION).to be_a_kind_of(String)
    end
end