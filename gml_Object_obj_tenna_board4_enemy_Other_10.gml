if (global.monsterhp[myself] <= (global.monstermaxhp[myself] * 0.1) && haveusedultimate == false)
    phaseturn = 11;

phaseturn++;

if (phaseturn == 1)
{
    myattackchoice = 5;
    difficulty = 0;
}

if (phaseturn == 2)
{
    myattackchoice = 1;
    difficulty = 0;
}

if (phaseturn == 3)
{
    myattackchoice = 5;
    difficulty = 0;
}

if (phaseturn == 4)
{
    myattackchoice = 6;
    difficulty = 0;
}

if (phaseturn == 5)
{
    myattackchoice = 7;
    difficulty = 0;
}

if (phaseturn == 6)
{
    myattackchoice = 8;
    difficulty = 0;
}

if (phaseturn == 7)
{
    myattackchoice = 5;
    difficulty = 0;
}

if (phaseturn == 8)
{
    myattackchoice = 6;
    difficulty = 0;
}

if (phaseturn == 9)
{
    myattackchoice = 7;
    difficulty = 0;
}

if (phaseturn == 10)
{
    myattackchoice = 8;
    difficulty = 0;
}

if (phaseturn == 11)
{
    myattackchoice = 4;
    haveusedultimate = true;
}
