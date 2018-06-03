def enter_name
    visit '/'
    fill_in :player, with: "Matthew"
    click_button "Submit"
end