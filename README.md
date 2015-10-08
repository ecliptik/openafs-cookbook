openafs Cookbook
================
[Chef](https://www.chef.io/) cookbook to install and configure [OpenAFS](https://openafs.org).

This cookbook currently only installs OpenAFS 1.6.14 client on Ubuntu 12.04 and 14.04 and by default connects to the *grand.central.org* and *wu-wien.ac.at* AFS cells for reference.

This cookbook was originally inspired from https://github.com/GLOBAL2000/chef-openafs

Requirements
------------
#### packages
- `linux-headers` - specific to the running kernel, uses OHAI var to determine version
- `build-essential` - to compile the DKMS kernel module
- `openafs-modules-dkms` - OpenAFS DKMS kernel module
- `openafs-client` - OpenAFS client

Attributes
----------
e.g.
#### openafs::openafs-client
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['openafs']['client']</tt></td>
    <td>Boolean</td>
    <td>Enable the OpenAFS client</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['afsdb']</tt></td>
    <td>Boolean</td>
    <td>Enable the OpenAFS DB</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['crypt']</tt></td>
    <td>Boolean</td>
    <td>Enable the OpenAFS encryption</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['dynroot']</tt></td>
    <td>String</td>
    <td>Enable the OpenAFS dynamic root</td>
    <td><tt>No</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['fakestat']</tt></td>
    <td>Boolean</td>
    <td>Enable the OpenAFS fakestat on file/dir attributes</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['thiscell']</tt></td>
    <td>String</td>
    <td>Default OpenAFS cell name</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['verbose']</tt></td>
    <td>String</td>
    <td>OpenAFS verbosity level</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['options']</tt></td>
    <td>String</td>
    <td>Other OpenAFS options</td>
    <td><tt>AUTOMATIC</tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['afs_post_init']</tt></td>
    <td>String</td>
    <td>OpenAFS post-init options</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['afs_pre_shudown']</tt></td>
    <td>String</td>
    <td>OpenAFS pre-shutdown options</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['openafs']['cellservdb']</tt></td>
    <td>Hash</td>
    <td>Hash of AFS cells and associated AFS servers for CellServDB configuration</td>
    <td><tt>See http://www.central.org/csdb.html</tt></td>
  </tr>
</table>

Usage
-----
#### openafs::openafs-client

Update the default attributes to point to your cell and AFS servers and add the openafs-client recipe to your run list.

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[openafs::openafs-client]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Micheal Waltz (ecliptik@gmail.com)
