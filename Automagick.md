## Automagick

node configuration via inventory management system.

User indicateds need to to repurpose a node via web based user interface.

The new node profile is deployed via puppet.

Sequence: 
- specifics input via user interface
- rfc created, emails sent as needed
- new profile test initiated via jenkins
- modification to node scheduled with approvals as needed
- node reconfigured via jenkins/puppet
- results pushed back to inventory system

Components
- inventory-db - inventory system database
- inventory-ui - inventory system user interface
- inv2pup - puppet and inventory system interface
- puppet-bdeng - puppet module of big data specific profiles
- puppet-envs - r10k deployment environments (platinum, gold, silver) specifics
- puppet-deploy - puppet master deployment and configuration
- gitlab - source management, wiki, issue tracking
- jenkins - continious integration
- bacula - development backups

Status:
- puppet-depoly - system test failing
- puppet-bdeng - system test passing
- puppet-envs - tested via puppet-deploy
- gitlab - beta deployment
- jenkins - alpha/devel depoloyment
- bacula - beta deployment

