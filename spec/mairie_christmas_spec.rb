require_relative '../lib/mairie_christmas.rb'

describe "the get_townhall_urls method:" do 
  it "should return true if ran correctly" do
    expect(get_townhall_urls).to eq(true)
end
end

describe "the get_townhall_email method:" do 
  it "should return an email" do
    expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).to eq("mairie.ableiges95@wanadoo.fr")
end
end