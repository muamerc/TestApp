class AddSeqToUserId < ActiveRecord::Migration[5.2]
  def change
    execute "CREATE SEQUENCE users_counter_seq OWNED BY
    users.id INCREMENT BY 1 START WITH 1"
  end
end
