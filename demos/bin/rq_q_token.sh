#!/bin/bash
#
#source ~/rasqberry/bin/activate

[ -f ~/.qiskit/qiskitrc ] && rm ~/.qiskit/qiskitrc
[ -f ~/.Qconfig_IBMQ_experience.py ] && rm ~/.Qconfig_IBMQ_experience.py

echo; echo; echo "store IBM Q Experience access token";
echo "Get access to your IBM Q Experience token as decribed here:";
echo "https://quantum-computing.ibm.com/docs/manage/account/";
<<<<<<< HEAD:bin/rq_q_token.sh
=======
echo "Please wait for the prompt to enter your token";
>>>>>>> JRL-dev3:demos/bin/rq_q_token.sh
(echo "from qiskit import IBMQ"; 
 echo "from getpass import getpass"; 
 echo "token = getpass('Enter your IBM Q Experience Token: ')"; 
 echo "print ('APItoken = \'' + str(token) + '\'')";
 echo "IBMQ.save_account(token)") | python3 > ~/.Qconfig_IBMQ_experience.py

[ -f ~/qrasp/Qconfig_IBMQ_experience.py ] && rq_qrasp_token.sh
