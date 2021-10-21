require 'pycall'

input = 'Can I... can I get a selfie?'
# input = 'And now for something completely different'

nltk = PyCall.import_module('nltk')
text = nltk.word_tokenize(input)

print nltk.pos_tag(text)
# => [('And', 'CC'), ('now', 'RB'), ('for', 'IN'), ('something', 'NN'), ('completely', 'RB'), ('different', 'JJ')]
