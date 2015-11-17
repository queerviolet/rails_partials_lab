require 'test_helper'

class ColorsControllerTest < ActionController::TestCase
  test "shows a single color" do
    get :show, {colors: 'Aquamarine'}
    assert_template :show
    assert_select '.color', 'Aquamarine'
  end

  test "shows a list of colors" do
    get :show, {colors: 'Aquamarine,Antique Brass'}
    assert_template :list
    assert_select '.color', 'Aquamarine'
    assert_select '.color', 'Antique Brass'
  end

  test "single colors have hex codes in their names" do
    get :show, {colors: 'Aquamarine'}
    assert_select '.color', "Aquamarine (#{Color::Aquamarine.hex})"
  end

  test "colors in a list have hex codes in their names" do
    get :show, {colors: 'Aquamarine,Antique Brass'}
    assert_select '.color', "Aquamarine (#{Color::Aquamarine.hex})"
    assert_select '.color', "Antique Brass (#{Color::AntiqueBrass.hex})"
  end
end
