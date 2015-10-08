#OpenAFS config
default['openafs']['client'] = true
default['openafs']['afsdb'] = true
default['openafs']['crypt'] = true
default['openafs']['dynroot'] = 'Yes'
default['openafs']['fakestat'] = true
default['openafs']['thiscell'] = 'grand.central.org'
default['openafs']['verbose'] = ''
default['openafs']['options'] = 'AUTOMATIC'
default['openafs']['afs_post_init'] = ''
default['openafs']['afs_pre_shutdown'] = ''
default['openafs']['cellservdb'] = { 'grand.central.org' =>
                                     { 'comment' => 'GCO Public CellServDB 13 Jul 2015',
                                       '18.9.48.14' => 'grand.mit.edu',
                                       '128.2.13.219' => 'grand-old-opry.central.org'
                                     },
                                     'andrew.cmu.edu' =>
                                     { 'comment' => 'Carnegie Mellon University - Computing Services Cell',
                                       '128.2.10.2' => 'afsdb-01.andrew.cmu.edu',
                                       '128.2.10.7' => 'afsdb-02.andrew.cmu.edu',
                                       '128.2.10.11' => 'afsdb-03.andrew.cmu.edu'
                                     }
                                   }
