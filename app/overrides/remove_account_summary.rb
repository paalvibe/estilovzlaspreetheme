Deface::Override.new(:virtual_path => %q{spree/users/show},
                     :name => %q{remove_account_summary},
                     :insert_top => '',
                     :remove => %q{[data-hook='account_summary']})
