$array_variable = ['Accenture','HCL']
$hash_variable = {
  name1 => "kartik",
  name2 => "kj",
  name3 => "puppet_rocks",
  }

$array_variable.each |$array_variable| {  
  notify {$array_variable:
#    message => "Value from array variable is: ${array_variable}"
         }
  }

#$hash_variable.each |$hash_variable| {
#  notify {$hash_variable:
#    message => "Value from hash variable is: ${hash_variable}"
#      }
#  }
