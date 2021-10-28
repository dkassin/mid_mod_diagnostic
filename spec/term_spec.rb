require './lib/student'
require './lib/course'
require './lib/term'

describe Term do
  it '#exists' do
    term = Term.new()

    expect(term).to be_a Term
  end
end
