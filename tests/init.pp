#
class poolaccounts (
  $groups = hiera_hash('poolaccounts::groups'),
  $accounts = hiera_hash('poolaccounts::accounts'),
  $create_home_dirs = hiera('poolaccounts::create_home_dirs'),
  $userconf = hiera('poolaccounts::$userconf', undef),
){
  # 1. create groups
  # 2. create list of users from ID ranges
  # 3.
}
