- hosts: all
  become: yes
  become_method: sudo
  roles:
    - vdp_scanner
