class makevm {
  vsphere_vm { '/west1/vm/TSEs/tommy/vspheretest1':
  ensure        => running,
  source        => '/west1/vm/Templates/windows-2012-updatedtools',
  resource_pool => '/west1/tse1',
  customization_spec => 'tlstest',
  }
}
