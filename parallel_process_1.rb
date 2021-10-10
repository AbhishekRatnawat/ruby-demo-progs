
pool_size = 10
workers = (0...pool_size).map do
  Thread.new do
    begin
      puts "sleeping from #{workers}"
      sleep 10
    rescue ThreadError => e
      unless e.message == 'queue empty'
        Aq::Log.error "Thread error: #{e.message}\n#{e.backtrace}"
      end
    end
  end
end
workers.map(&:join)




      #Aq::Log.info('All task send threads have ended.')
      #begin
      #  loop do
      #    result = done_queue.pop(true)
      #    if result['state'] == 'done'
      #      Aq::Log.info("Server: #{result['name']} is state=done in task_id: #{result['task_id']}, attempt (#{result['attempt']}/#{max_retries})".green)
      #    elsif result['attempt'] == max_retries
      #      Aq::Log.info("Server: #{result['name']} is state=#{result['state']} in task_id: #{result['task_id']}, attempt (#{result['attempt']}/#{max_retries})".red)
      #    else
      #      Aq::Log.info("Server: #{result['name']} is state=#{result['state']} in task_id: #{result['task_id']}, attempt (#{result['attempt']}/#{max_retries})".yellow)
      #    end
      #  end
      #rescue ThreadError => e
      #  unless e.message == 'queue empty'
      #    Aq::Log.error "Thread error: #{e.message}\n#{e.backtrace}"
      #  end
      #end
