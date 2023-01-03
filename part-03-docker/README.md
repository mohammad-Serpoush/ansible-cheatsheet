
```
- name: Check docker installation
      shell: "which docker"
      ignore_errors: true
      register: result
```
register: put the result of running shell command in result variable
ignore_errors: if this task return error, ansible will ignore it

```
- name: Skip on ready nodes
      meta: end_host
      when: result.failed is true
```

meta module helps to reduce code duplication.

this module will stop something if when condition is true.

**meta options**:

- clear_facts
- clear_host_errors
- end_host
- end_play
- flush_handlers
- noop
- refresh_inventory
- reset_connection
- end_batch


**Tags**:
tag is a way to say to ansible that run specific task
```
$ ansible-playbook -i hosts.ini -t output play.yaml
```
