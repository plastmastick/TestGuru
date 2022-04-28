# frozen_string_literal: true
class AddTestsLevelDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:tests, :level, from: nil, to: 1)
  end
end
