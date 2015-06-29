exec { 'test pipe' :
  command => '/usr/bin/env ls -l | sort -n >tpup.out'
}
