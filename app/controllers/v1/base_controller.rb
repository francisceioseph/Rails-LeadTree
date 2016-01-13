class V1::BaseController < ApplicationController
  def id_params
    params.require(:id)
  end
end
