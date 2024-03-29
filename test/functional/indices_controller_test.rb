require 'test_helper'

class IndicesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Index.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Index.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Index.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to index_url(assigns(:index))
  end

  def test_edit
    get :edit, :id => Index.first
    assert_template 'edit'
  end

  def test_update_invalid
    Index.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Index.first
    assert_template 'edit'
  end

  def test_update_valid
    Index.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Index.first
    assert_redirected_to index_url(assigns(:index))
  end

  def test_destroy
    index = Index.first
    delete :destroy, :id => index
    assert_redirected_to indices_url
    assert !Index.exists?(index.id)
  end
end
