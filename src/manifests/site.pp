notice('Start the test for SAP!')

class {'::sap_test':
  package         => 'texinfo',
  package_version => '6.5.0.dfsg.1-2',
  }
