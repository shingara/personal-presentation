migration 1, :create_orders  do
  up do
    create_table(:orders) do
      column(:id, Integer, :serial => true)
      column(:amount, Integer)
      column(:completed, Boolean)
      column(:description, String, :size => 255)
      column(:created_at, DateTime)
      column(:updated_at, DateTime)
    end
  end

  down do
    drop_table(:orders)
  end
end
