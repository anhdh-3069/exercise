class ClassRoom
  @@class_lists = {}

  def initialize(name, math_score, literature_score, english_score)
    avg = (math_score+literature_score+english_score)/3.0
    @@class_lists[name] = {toan: math_score, van: literature_score, anh: english_score, avg: avg}
  end

  class << self
    def class_lists
      @@class_lists
    end

    def student_max_avg
      @@class_lists.max_by{|k, v| v[:avg] }
    end

    def max_avg
      student_max_avg[1][:avg]
    end

    def name_max_avg
      student_max_avg[0]
    end
  end
end

puts "Nhap so sinh vien: "
n = (gets.chomp || "").to_i
for i in (1..n) do
    puts "Nhap ten sinh vien: "
    student_name = gets.chomp || "no_name"
    puts "Nhap diem toan: "
    math_score = (gets.chomp || "").to_i
    puts "Nhap diem van: "
    literature_score = (gets.chomp || "").to_i
    puts "Nhap diem anh: "
    english_score = (gets.chomp || "").to_i
    ClassRoom.new(student_name, math_score, literature_score, english_score)
end

puts("Danh sach lop hoc: #{ClassRoom.class_lists}")
puts("Diem trung binh cao nhat: #{ClassRoom.max_avg}")
puts("Thong tin sinh vien: #{ClassRoom.student_max_avg}")
puts("Ten sinh vien: #{ClassRoom.name_max_avg}")