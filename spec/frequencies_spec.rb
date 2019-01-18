 require_relative '../frequencies'


describe '#frequencies' do
  it 'should return and empty Hash when passed an empty string' do
    text = ""
    subject = frequencies(text)

    expect(subject).to eq({})
  end

  it 'should count the frequencies of words' do
    text = "the lazy dog jumped over the brown fox"
    subject = frequencies(text)

    expect(subject["the"]).to eq(2)
    expect(subject["fox"]).to eq(1)
    expect(subject["wagon"]).to eq(0)
  end
end
