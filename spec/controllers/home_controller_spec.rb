# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController do

  describe 'GET page' do
    it 'renders the page template' do
      get :page

      expect(response).to render_template('page')
    end
  end

end
