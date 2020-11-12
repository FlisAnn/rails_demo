feature "Visitor can write an article" do
  before do
    visit root_path
    click_on 'Write an Article'
  end

  it 'is expected to be saved in the database' do
    fill_in 'Title', with: 'Another great demo from Emma'
    fill_in 'Content', with: 'Learning Rails is weird'
    click_on 'Create Article'
    expect(Article.count).to eq 1
  end
end