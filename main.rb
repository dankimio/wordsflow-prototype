require 'srt'
require 'csv'
require 'byebug'
require 'rwordnet'
require 'lemmatizer'

FILENAME = 'input.srt'

vocabulary = File.open 'weighted_wordnet_vocabulary.txt'
csv = CSV.new(vocabulary).read
lem = Lemmatizer.new

file = SRT::File.parse(File.new(FILENAME))
byebug
file.lines.each do |line|
  puts line.text
    .join(' ')
    # https://stackoverflow.com/a/37499722/2505156
    .split(/[^[[:word:]]]+/)
    .select { |word| word.length > 3 }
    .map(&:downcase)
    .uniq
    # .map { |word| lem.lemma(word) }
end
