require "application_system_test_case"

class UniversitiesTest < ApplicationSystemTestCase
  setup do
    @university = universities(:one)
  end

  test "visiting the index" do
    visit universities_url
    assert_selector "h1", text: "Universities"
  end

  test "should create university" do
    visit universities_url
    click_on "New university"

    fill_in "Chuyennganh", with: @university.chuyennganh
    fill_in "Name", with: @university.name
    fill_in "Nganhdaotao", with: @university.nganhdaotao
    fill_in "Soluong", with: @university.soluong
    fill_in "Thoigianhd", with: @university.thoigianhd
    fill_in "Vitri", with: @university.vitri
    click_on "Create University"

    assert_text "University was successfully created"
    click_on "Back"
  end

  test "should update University" do
    visit university_url(@university)
    click_on "Edit this university", match: :first

    fill_in "Chuyennganh", with: @university.chuyennganh
    fill_in "Name", with: @university.name
    fill_in "Nganhdaotao", with: @university.nganhdaotao
    fill_in "Soluong", with: @university.soluong
    fill_in "Thoigianhd", with: @university.thoigianhd
    fill_in "Vitri", with: @university.vitri
    click_on "Update University"

    assert_text "University was successfully updated"
    click_on "Back"
  end

  test "should destroy University" do
    visit university_url(@university)
    click_on "Destroy this university", match: :first

    assert_text "University was successfully destroyed"
  end
end
