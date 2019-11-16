#!/bin/bash 
echo "*************************Welcome to TICTACTOE WORLD****************************"
declare -a boardOfTicTacToe
PLAYER="X"
COMPUTER="O"
function resetTheBoard()
{
 for (( i=1; i<=9; i++ ))
 do 
   boardOfTicTacToe["$i"]="-";
 done
}
resetTheBoard
echo ${boardOfTicTacToe[@]}
function whoPlayFirst()
{
 resultOfToss=$((RANDOM%2))
 if [ $resultOfToss -eq 0 ]
 then 
     echo "Player play First....."
 else
     echo "Computer play First..."
 fi
}
function displayBoard()
{
 echo "    |---|---|---|"
 echo "    | "${boardOfTicTacToe[1]}" | "${boardOfTicTacToe[2]}" | "${boardOfTicTacToe[3]}" |"
 echo "    |---|---|---|"
 echo "    | "${boardOfTicTacToe[4]}" | "${boardOfTicTacToe[5]}" | "${boardOfTicTacToe[6]}" |"
 echo "    |---|---|---|"
 echo "    | "${boardOfTicTacToe[7]}" | "${boardOfTicTacToe[8]}" | "${boardOfTicTacToe[9]}" |"
 echo "    |---|---|---|"
 }
whoPlayFirst
displayBoard
