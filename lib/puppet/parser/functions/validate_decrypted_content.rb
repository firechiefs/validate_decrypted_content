module Puppet::Parser::Functions
  newfunction(:validate_decrypted_content, :doc => <<-ENDHEREDOC
   Validates that a provided string is decrypted (that it does not contain
    ENC[PKCS7,...])
    ENDHEREDOC
             ) do |args|
      # argument count checking
      unless args.length > 0 then
        raise Puppet::ParseError, ("validate_decrypted_content(): wrong number of arguments(#{args.length}); must be > 0")
      end

      args.each do |arg|
        string = arg.to_s
        # Check to see if our string matches the password regex, if so throw a Puppet Error
        # The regex is the pattern that matches hiera-eyaml notation (ENC[PKCS7,....])
        if string =~ /^.*ENC\[PKCS7,.*\]/
          raise Puppet::ParseError, "validate_decrypted_content(): input was not decrypted"
        else
          # nothing to see here, the passed string was decrypted, or atleast didn't match the ENC pattern
        end
      end
    end
end
