class makevm {
  vsphere_vm { '/west1/vm/TSEs/tommy/vspheretest':
  ensure        => running,
  source        => '/west1/vm/Templates/windows-2012-updatedtools',
  resource_pool => '/tse1',
  }
}
