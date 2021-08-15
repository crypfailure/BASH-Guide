#!/bin/bash
# demonstration of trap commands

#       Signal     Value     Action   Comment
#      ──────────────────────────────────────────────────────────────────────
#      SIGHUP        1       Term    Hangup detected on controlling terminal
#                                    or death of controlling process
#      SIGINT        2       Term    Interrupt from keyboard
#        SIGQUIT       3       Core    Quit from keyboard
#      SIGILL        4       Core    Illegal Instruction
#       SIGABRT       6       Core    Abort signal from abort(3)
#       SIGFPE        8       Core    Floating-point exception
#       SIGKILL       9       Term    Kill signal
#       SIGSEGV      11       Core    Invalid memory reference
#       SIGPIPE      13       Term    Broken pipe: write to pipe with no
#                                     readers; see pipe(7)
#       SIGALRM      14       Term    Timer signal from alarm(2)
#       SIGTERM      15       Term    Termination signal
#       SIGUSR1   30,10,16    Term    User-defined signal 1
#       SIGUSR2   31,12,17    Term    User-defined signal 2
#       SIGCHLD   20,17,18    Ign     Child stopped or terminated
#       SIGCONT   19,18,25    Cont    Continue if stopped
#       SIGSTOP   17,19,23    Stop    Stop process
#       SIGTSTP   18,20,24    Stop    Stop typed at terminal
#       SIGTTIN   21,21,26    Stop    Terminal input for background process
#       SIGTTOU   22,22,27    Stop    Terminal output for background process

#       The signals SIGKILL and SIGSTOP cannot be caught, blocked, or ignored.

trap "echo Exit signal is detected" SIGINT
echo Process Id: $$
while (( count < 5 ))
do
	sleep 5
	(( count++ ))
	echo $count
done
exit 0
