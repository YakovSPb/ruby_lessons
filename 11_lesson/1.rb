require 'fun_translations'

client = FunTranslations.client('123123123')
result = client.translate :pirate, "Hello sir! Fuck yourself"
puts result.translate_text