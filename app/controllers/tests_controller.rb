# frozen_string_literal: true

class TestsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

  def index
    @tests = Test.all
  end

  def start
    set_test
    current_user.tests.push(set_test)
    redirect_to test_passage_result_path(find_user_result)
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def set_test
    @test = Test.find(params[:id])
  end

  def find_user_result
    Result.order(id: :desc).find_by(test: @test, user: current_user)
  end

  def rescue_with_test_not_found
    render plain: 'Test was not found'
  end
end
