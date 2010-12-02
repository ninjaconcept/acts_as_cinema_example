class AddOriginalInputAndSourceParamToVideo < ActiveRecord::Migration
  def self.up
    add_column :videos, :original_input, :text
    add_column :videos, :source_param, :string
  end

  def self.down
    remove_column :videos, :source_param
    remove_column :videos, :original_input
  end
end
