# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BoroughsController do
  let(:borough_params) { { name: 'the_name', designation: 'Inner', population: 150_500, website: 'www.hello.io' } }

  describe 'GET index' do
    it 'assigns @boroughs and renders the index template' do
      borough = create(:borough)

      get :index

      expect(assigns(:boroughs)).to eq([borough])
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'assigns @borough and renders the show template' do
      borough = create(:borough)

      get :show, params: { id: borough.id }

      expect(assigns(:borough)).to eq(borough)
      expect(response).to render_template('show')
    end
  end

  describe 'GET new' do
    it 'assigns @borough' do
      get :new

      expect(assigns(:borough)).to be_an_instance_of(Borough)
      expect(response).to render_template('new')
    end
  end

  describe 'GET edit' do
    it 'assigns @borough and renders the edit template' do
      borough = create(:borough)

      get :edit, params: { id: borough.id }

      expect(assigns(:borough)).to eq(borough)
      expect(response).to render_template('edit')
    end
  end

  describe 'POST create' do
    before { expect(Borough.count).to eq(0) }

    it 'creates a borough with provided attributes, assigns it to @borough and redirects to borough path' do
      params = { borough: borough_params }

      put :create, params: params

      expect(Borough.count).to eq(1)
      expect(assigns(:borough)).to have_attributes(params[:borough])
      expect(response).to redirect_to(borough_path(Borough.first))
    end
  end

  describe 'PUT update' do
    let(:borough) { create(:borough) }

    it 'assigns @borough, updates the attributes and redirects to the borough path' do
      params = { id: borough.id, borough: borough_params }

      put :update, params: params

      expect(assigns(:borough)).to have_attributes(params[:borough])
      expect(response).to redirect_to(borough_path(borough))
    end
  end

  describe 'PATCH update' do
    let(:borough) { create(:borough) }

    it 'assigns @borough, updates the attributes and redirects to the borough path' do
      params = { id: borough.id, borough: borough_params }

      patch :update, params: params

      expect(assigns(:borough)).to have_attributes(params[:borough])
      expect(response).to redirect_to(borough_path(borough))
    end
  end

  describe 'DELETE destroy' do
    let(:borough) { create(:borough) }

    before do
      borough
      expect(Borough.count).to eq(1)
    end

    it 'deletes the borough and renders the index template' do
      delete :destroy, params: { id: borough.id }

      expect(Borough.count).to eq(0)
      expect(response).to redirect_to(boroughs_path)
    end
  end
end
