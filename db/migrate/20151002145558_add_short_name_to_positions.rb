class AddShortNameToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :short_name, :string
  end

  Position.create(name: 'Chief Executive Officer', short_name: 'CEO')
end
