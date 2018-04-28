# encoding: utf-8
# copyright: 2017, The Authors

title 'Virtual Network Properties'

control 'azure-generic-virtual-network-2.0' do

  impact 1.0
  title 'Ensure that the virtual network has been created with the correct address space and subnet'

  describe azure_generic_resource(group_name: 'default-PCSNETWORK-PROD-RG',
                          name: 'default-PCS-VNET') do

    # Check that this named resource is indeed a virtual network
    its('type') { should cmp 'Microsoft.Network/virtualNetworks' }
    its('location') { should cmp 'eastus2' }

    # There should be no tags
    it { should_not have_tags }

    # Ensure that the address prefix for the VNet is correct
    # This will return an array so the `include` matcher needs to be used to
    # see if the specified address prefix is present
    its('properties.addressSpace.addressPrefixes') { should include '10.150.0.0/16'}

    # There should be one subnet
    its('properties.subnets.count') { should eq 6 }
    
  end
end