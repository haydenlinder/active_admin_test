require "application_system_test_case"

class LinesTest < ApplicationSystemTestCase
  setup do
    @line = lines(:one)
  end

  test "visiting the index" do
    visit lines_url
    assert_selector "h1", text: "Lines"
  end

  test "creating a Line" do
    visit lines_url
    click_on "New Line"

    fill_in "A", with: @line.a
    fill_in "B", with: @line.b
    fill_in "C", with: @line.c
    fill_in "D", with: @line.d
    fill_in "E", with: @line.e
    fill_in "F", with: @line.f
    fill_in "G", with: @line.g
    fill_in "H", with: @line.h
    fill_in "I", with: @line.i
    fill_in "J", with: @line.j
    fill_in "K", with: @line.k
    fill_in "L", with: @line.l
    fill_in "M", with: @line.m
    fill_in "N", with: @line.n
    fill_in "O", with: @line.o
    fill_in "P", with: @line.p
    fill_in "Q", with: @line.q
    fill_in "R", with: @line.r
    fill_in "S", with: @line.s
    fill_in "T", with: @line.t
    fill_in "U", with: @line.u
    fill_in "V", with: @line.v
    fill_in "W", with: @line.w
    fill_in "X", with: @line.x
    fill_in "Y", with: @line.y
    fill_in "Z", with: @line.z
    click_on "Create Line"

    assert_text "Line was successfully created"
    click_on "Back"
  end

  test "updating a Line" do
    visit lines_url
    click_on "Edit", match: :first

    fill_in "A", with: @line.a
    fill_in "B", with: @line.b
    fill_in "C", with: @line.c
    fill_in "D", with: @line.d
    fill_in "E", with: @line.e
    fill_in "F", with: @line.f
    fill_in "G", with: @line.g
    fill_in "H", with: @line.h
    fill_in "I", with: @line.i
    fill_in "J", with: @line.j
    fill_in "K", with: @line.k
    fill_in "L", with: @line.l
    fill_in "M", with: @line.m
    fill_in "N", with: @line.n
    fill_in "O", with: @line.o
    fill_in "P", with: @line.p
    fill_in "Q", with: @line.q
    fill_in "R", with: @line.r
    fill_in "S", with: @line.s
    fill_in "T", with: @line.t
    fill_in "U", with: @line.u
    fill_in "V", with: @line.v
    fill_in "W", with: @line.w
    fill_in "X", with: @line.x
    fill_in "Y", with: @line.y
    fill_in "Z", with: @line.z
    click_on "Update Line"

    assert_text "Line was successfully updated"
    click_on "Back"
  end

  test "destroying a Line" do
    visit lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line was successfully destroyed"
  end
end
