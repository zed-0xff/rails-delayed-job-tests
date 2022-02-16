# By default GoodJob will delete job records after they are run, regardless of whether they succeed or not 
GoodJob.preserve_job_records = true

# By default jobs with exceptions will be retried infinitely without delay
GoodJob.retry_on_unhandled_error = false

#GoodJob.on_thread_error = -> (exception) { puts "GOOD_JOB ERROR: #{exception}" }
