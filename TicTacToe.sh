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
