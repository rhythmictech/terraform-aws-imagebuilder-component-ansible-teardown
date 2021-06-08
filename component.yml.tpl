name: ${name}-document
%{ if description != null ~}
description: ${description}
%{ endif ~}
schemaVersion: 1.0
phases:
  - name: build
    steps:
      - name: cleanup
        action: ExecuteBash
        inputs:
          commands:
            - sudo yum remove -y ansible ${additional_pkgs}
            - sudo yum autoremove -y
            - sudo rm -rf packer-generic-images
            - sudo rm -rf ~/.ansible/roles /usr/share/ansible/roles /etc/ansible/roles
