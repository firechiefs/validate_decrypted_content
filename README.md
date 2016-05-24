# PURPOSE:
This function ensures when encrypted string variables are decrypted they do not match
this REGEX:

/^.*ENC\[PKCS7,.**\]

Accepts 1 or more arguments

## USAGE:
```
validate_decrypted_content($key[password],[$key2[password2]],[$key3[password3],...])
```


#### Puppetfile:
```
mod 'validate_decrypted_content',
  :git => 'https://github.com/firechiefs/validate_decrypted_content',
  :ref => '1.0.0'
```
