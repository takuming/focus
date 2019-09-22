class RemoveDestroyFromLog < ActiveRecord::Migration[6.0]
  def change

    remove_column :logs, :destroy, :string
  end
end
