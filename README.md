# Shell-script-to-capture-perf-stats-remotely
Say we have machine A,B,&amp;C which are involved in some testing.The tests are started in machine A.We need to do multiple tests runs(iterations).We can start collecting perf stat on machine B &amp; C continuously for all the runs and write it to a single file.But it is very difficult to correlate each perf stat from each machine while analyzing.If the machine are located in different timezone will make it more complex.The below example shows how to start collecting the perf stat remotely when i start test from machine A for each iteration separately

Script details,We have 3 scripts

  1)collectperfstat.sh
  2)collectperfstop.sh
  3)remoteperfstst.sh

  keep script 1 & 2 on all the machines(Machine A,B &C)
  keep script 3 on machine from where we need to start the tests(Machine A)



Script execution(execution sequence)

  On the machine from where we are starting the tests follow the procedure as shown below

      sh remoteperfstast.sh  collectperfstat.sh {directory name}
      sh  collectperfstat.sh {directory name}
 
  Start the test
  once the tests is over

      sh  collectperfstop.sh {directory name}
      sh remoteperfstat.sh  collectperfstop.sh {directory name}
