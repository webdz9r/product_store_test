require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { facebook: @company.facebook, founded_date: @company.founded_date, hq_location: @company.hq_location, instagram: @company.instagram, linkedin: @company.linkedin, name: @company.name, short_summary: @company.short_summary, ticker: @company.ticker, twitter: @company.twitter, website: @company.website, youtube: @company.youtube }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { facebook: @company.facebook, founded_date: @company.founded_date, hq_location: @company.hq_location, instagram: @company.instagram, linkedin: @company.linkedin, name: @company.name, short_summary: @company.short_summary, ticker: @company.ticker, twitter: @company.twitter, website: @company.website, youtube: @company.youtube }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
