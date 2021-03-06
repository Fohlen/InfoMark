require 'rails_helper'

RSpec.describe "slides/edit", type: :view do
  before(:each) do
    @slide = assign(:slide, Slide.create!(
      :file => "MyString",
      :course => nil,
      :public => false,
      :info => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit slide form" do
    render

    assert_select "form[action=?][method=?]", slide_path(@slide), "post" do

      assert_select "input#slide_file[name=?]", "slide[file]"

      assert_select "input#slide_course_id[name=?]", "slide[course_id]"

      assert_select "input#slide_public[name=?]", "slide[public]"

      assert_select "input#slide_info[name=?]", "slide[info]"

      assert_select "input#slide_title[name=?]", "slide[title]"
    end
  end
end
