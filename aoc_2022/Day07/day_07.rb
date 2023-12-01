class Day07
  file = File.readlines('./Day07/sample.txt')

  # identificar o diretorio lido
  # calcular a soma do tamanho de cada documento dentro do diretorio
  # selecionar os diretorios com menos de 100.000

  diretorio = []
  dir_size = []
  total = 0

  file
    .map(&:chomp)
    .map{ |l| l.split(' ') }
    .each do |line|
      case line
        in ['$', 'cd', '..']
        diretorio.pop
        in ['$', 'cd', dir]
        p dir
        diretorio << dir
        dir_size << total
        total = 0
        in ['$', 'ls']
        in ['dir', dir]
        in [size, file_name]
        total += size.to_i
        p total

      end
      p dir_size
    end



end
