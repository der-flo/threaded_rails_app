class TestController < ApplicationController

  def cpu_bound
    1_000_000.times { 100^100 }
    render text: 'CPU bound'
  end
  def io_bound
    ActiveRecord::Base.connection.execute('SELECT SLEEP(0.1);')
    render text: 'I/O bound'
  end


  # def test
  #   x = Benchmark.ms do
  #     1_000_000.times { 100^100 }
  #     #ActiveRecord::Base.connection.execute('SELECT SLEEP(0.1);')
  #   end

  #   render text: "performance test #{x}"
  # end
end
