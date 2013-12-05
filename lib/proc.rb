my_proc  = Proc.new { |e| (2 * e) }

[1,2,3].each(&my_proc)
