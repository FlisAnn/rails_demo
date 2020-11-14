feature "Visitor can write an article" do
  before do
    visit root_path
    click_on 'Write an Article'
  end

  context 'by providing all necessary information' do
    before do
      fill_in 'Title', with: 'Another great demo from Emma'
      fill_in 'Content', with: 'Learning Rails is weird'
      click_on 'Create Article'
    end
  
    it 'is expected to save a new article in the database' do
        expect(Article.count).to eq 1
    end  

    it 'is expected to respond with a flash message' do
      expect(page).to have_content 'Article was successfully updated'
    end

    it 'is expected to re-route user to applications root path' do
      expect(current_path).to eq root_path
    end
  end
end