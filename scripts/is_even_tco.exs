Number.is_even_tco?(100_000_000)

# tobi@happy ~/github/elixir_playground $ /usr/bin/time -v mix run scripts/is_even_tco.exs 
# 	Command being timed: "mix run scripts/is_even_tco.exs"
# 	User time (seconds): 1.33
# 	System time (seconds): 0.08
# 	Percent of CPU this job got: 102%
# 	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:01.37
# 	Average shared text size (kbytes): 0
# 	Average unshared data size (kbytes): 0
# 	Average stack size (kbytes): 0
# 	Average total size (kbytes): 0
# 	Maximum resident set size (kbytes): 40524
# 	Average resident set size (kbytes): 0
# 	Major (requiring I/O) page faults: 0
# 	Minor (reclaiming a frame) page faults: 14622
# 	Voluntary context switches: 22900
# 	Involuntary context switches: 210
# 	Swaps: 0
# 	File system inputs: 0
# 	File system outputs: 24
# 	Socket messages sent: 0
# 	Socket messages received: 0
# 	Signals delivered: 0
# 	Page size (bytes): 4096
# 	Exit status: 0
#
