**Define Variable:**
- vars
- var_files

**Variables:**
- list

```
name:["john" , "Doe"]
```

- list

```
name:
  - john
  - doe
```
- dict
```
mydict:
    key1:"value1"
    key2:"value2"
```

**Predefiend Variables**
- inventory_hostname
- groups
- hostvars
- ansible_facts : ansible_facts["all_ipv4_addresses"][0]