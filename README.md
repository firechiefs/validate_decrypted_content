# PURPOSE:
This function ensures when encrypted string variables are decrypted they do not match
this REGEX:

/^.*ENC\[PKCS7,.**\]

## USAGE:
```
validate_decrypted_content($key[password])
```


#### Puppetfile:
```
mod 'validate_decrypted_content',
  :git => 'https://github.com/firechiefs/validate_decrypted_content',
  :ref => '1.0.0'
```
