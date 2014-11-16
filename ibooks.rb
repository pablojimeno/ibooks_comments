require_relative 'base'
require_relative 'book'
require_relative 'annotation'

Base.data_path = ENV['DATA_DIR']

Book.all.each do |book|
  puts "## #{book.title}\n\n"

  book.annotations.each do |annotation|
    if annotation.selected_text?
      puts "##### Highlight:\n\n"
      puts annotation.selected_text + "\n\n"

      if annotation.note?
        puts "##### Note:\n"
        puts annotation.note + "\n\n\n"
      end
    end
  end
end
