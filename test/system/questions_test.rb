require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    take_screenshot
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
  end

  test "ask a question and coach responds saying it's silly" do
    visit ask_url
    fill_in "question", with: "How are you doing today?"
    click_on "Ask"
    take_screenshot
    assert_text "Silly question, get dressed and go to work!"
  end

  test "Tell the coach you're going to work responds great!" do
    visit ask_url
    fill_in "question", with: "I'm going to work"
    click_on "Ask"
    take_screenshot
    assert_text "Great!"
  end
end