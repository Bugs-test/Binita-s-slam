require "application_system_test_case"

class SlambinitaTest < ApplicationSystemTestCase
  setup do
    @slambinitum = slambinita(:one)
  end

  test "visiting the index" do
    visit slambinita_url
    assert_selector "h1", text: "Slambinita"
  end

  test "creating a Slambinitum" do
    visit slambinita_url
    click_on "New Slambinitum"

    fill_in "Birthday", with: @slambinitum.birthday
    fill_in "Email", with: @slambinitum.email
    fill_in "Follow", with: @slambinitum.follow
    fill_in "Memory", with: @slambinitum.memory
    fill_in "Name", with: @slambinitum.name
    fill_in "Picture", with: @slambinitum.picture
    fill_in "Quote", with: @slambinitum.quote
    fill_in "Thoughts", with: @slambinitum.thoughts
    fill_in "Whatsapp", with: @slambinitum.whatsapp
    click_on "Create Slambinitum"

    assert_text "Slambinitum was successfully created"
    click_on "Back"
  end

  test "updating a Slambinitum" do
    visit slambinita_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @slambinitum.birthday
    fill_in "Email", with: @slambinitum.email
    fill_in "Follow", with: @slambinitum.follow
    fill_in "Memory", with: @slambinitum.memory
    fill_in "Name", with: @slambinitum.name
    fill_in "Picture", with: @slambinitum.picture
    fill_in "Quote", with: @slambinitum.quote
    fill_in "Thoughts", with: @slambinitum.thoughts
    fill_in "Whatsapp", with: @slambinitum.whatsapp
    click_on "Update Slambinitum"

    assert_text "Slambinitum was successfully updated"
    click_on "Back"
  end

  test "destroying a Slambinitum" do
    visit slambinita_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slambinitum was successfully destroyed"
  end
end
