Puppet::Type.newtype(:poolaccount) do
  ensurable
  newproperty(:suffix_start) do
    desc "Start for the suffix counter"
    validate do |value|
      unless value =~ /^\w+/
        raise ArgumentError, "%s is not a valid user name" % value
      end
    end
  end
  newproperty(:suffix_end) do

  end
  newproperty(:start_uid) do

  end
  newproperty(:end_uid) do

  end
  newproperty(:create_home_dirs) do

  end
  @doc = %q{Create a set of accounts."

        Example:
          poolaccount {'cms':
            ensure => present,
            suffix_start      => '0001',
            suffix_end        => '1000',
            start_uid         => 70000,
            end_uid           => 70999,
            create_home_dirs  => true,
            }
  }
end