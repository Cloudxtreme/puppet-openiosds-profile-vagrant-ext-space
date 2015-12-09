openiosds::sdsagent {'sds-agent-0':
}
openiosds::namespace {'OPENIO':
  ns => 'OPENIO',
  conscience_url => "VAGRANT_MAIN_VM:6000",
  zookeeper_url  => "VAGRANT_MAIN_VM:6011",
  oioproxy_url   => "VAGRANT_MAIN_VM:6012",
  eventagent_url => "tcp://VAGRANT_MAIN_VM:6013",
}
openiosds::meta2 {'meta2-4':
  num            => '4',
  ns             => 'OPENIO',
  ipaddress      => "${ipaddress_enp0s8}",
  port           => "6000",
}
openiosds::rawx {'rawx-4':
  num            => '4',
  ns             => 'OPENIO',
  ipaddress      => "${ipaddress_enp0s8}",
  port           => "6001",
}
