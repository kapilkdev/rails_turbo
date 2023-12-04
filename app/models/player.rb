class Player < ApplicationRecord
  store :stats, accessors: [:runs, :balls, :fours, :sixes, :overs, :wickets, :catches], prefix: true

  after_create_commit { broadcast_prepend_to("players")}
  after_destroy_commit { broadcast_remove_to 'players' }
  after_update_commit { broadcast_replace_to("players") }
end
