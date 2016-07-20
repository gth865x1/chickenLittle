/*
    Catherine Chapman
    Final Project - Chicken Little

    The goal of Chicken Little is to explore your world, collecting objects to present to the king in order to convince him the sky is falling.
    You must collect seven, and avoid being eaten by Foxy Loxy, and return to the king to win!

    To navigate: use the arrow pad to run and fly around your world collecting pieces of the sky. Hold B to stop FoxyLoxy from moving
    and avoid him more easily. (This is your cheat, use it wisely!)

    -- 4/19/15 - Final Update
        All backgrounds implemented
        All state transitions implemented
        Collision map implemented
        Win condition modified - collect at least 5 of the items and go to the king
        Lose conditions implemented - both foxy collisions and time running out
        Cheat has been added - hold B to stop foxyLoxy from moving so he can't eat you.
        Music and sounds have been added and tweaked a bit.

*/

#include <stdio.h>
#include <stdlib.h>
#include "myLib.h"
#include "startScreen.h"
#include "instructScreen.h"
#include "text.h"
#include "loseScreen.h"
#include "winScreen.h"
#include "pauseScreen.h"
#include "BGgrassSky2.h"
#include "BGclouds.h"
#include "spritesheet.h"
#include "collisionmap.h"
#include "chickendance4.h"
#include "loserSound.h"
#include "winnerSound.h"
#include "cluck.h"
#include "thunder.h"


#define STARTSCREEN 0
#define INSTRUCTIONS 1
#define GAMESCREEN 2
#define LOSESCREEN 3
#define WINSCREEN 4
#define PAUSESCREEN 5


OBJ_ATTR shadowOAM[128];

int collMapSize = 512;

#define ROWMASK 0xFF
#define COLMASK 0x1FF

typedef struct  
{
    int row;
    int col;
    int rdel;
    int cdel;
    int bigRow;
    int bigCol;
    int width;
        int height;
        int aniCounter;
        int aniState;
        int prevAniState;
        int currFrame;
} SPRITE;

SPRITE chicken;
SPRITE foxy;
SPRITE king;
SPRITE proof1;
SPRITE proof2;
SPRITE proof3;
SPRITE proof4;
SPRITE proof5;
SPRITE proof6;
SPRITE proof7;
SPRITE proof8;
SPRITE proof9;
SPRITE proof10;

enum {CHICKENFRONT, CHICKENBACK, CHICKENRIGHT, CHICKENLEFT, CHICKENIDLE};
enum {FOXYSTAND, FOXYRUN, FOXYIDLE}; //For FoxyLoxy


typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
}SOUND;

SOUND soundA;
SOUND soundB;
int vbCountA;
int vbCountB;

int BG0hOff=0;
int BG0vOff=0;
int BG1hOff=0;
int BG1vOff=0;


unsigned int buttons;
unsigned int oldButtons;


int state = STARTSCREEN;
char buffer[41];

int timer, tempTimer, newTimer;
int collectedItems;

void game();
void hideSprites();
void updateOAM();

void initializeGameBGs();
void initializeGame();
void initializeGameMusic();

int main() {
    REG_DISPCTL = MODE4 | BG2_ENABLE;

    setupInterrupts();
    setupSounds();

    PALETTE[WHITEINDEX] = WHITE; 
    PALETTE[BLACKINDEX] = BLACK; 
    PALETTE[REDINDEX] = RED;
    PALETTE[BLUEINDEX] = BLUE;

    soundA.loops = 1;
    playSoundA(thunder, THUNDERLEN, THUNDERFREQ);
    
    while(1)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		switch(state)
		{
			case STARTSCREEN:
				splash();
				break;
            case INSTRUCTIONS:
                instructions();
                break;
			case GAMESCREEN:
				game();
				break;
			case PAUSESCREEN:
				pause();
				break;
			case WINSCREEN:
				win();
				break;
			case LOSESCREEN:
				lose();
				break;
		}  
	}
	return 0;
    
}

void splash(){
    flipPage();
    loadPalette(startScreenPal);
    drawBackgroundImage4(startScreenBitmap);
    waitForVblank();

    flipPage();
    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

        if(BUTTON_PRESSED(BUTTON_START)){

            fillScreen4(BLACKINDEX);
            state = GAMESCREEN;
            initializeGameBGs();
            initializeGame();
            initializeGameMusic();
            return;
        }
        if(BUTTON_PRESSED(BUTTON_A)){
            fillScreen4(BLACKINDEX);
            state = INSTRUCTIONS;
            return;
        }

    }
}

void instructions(){
    flipPage();
    loadPalette(instructScreenPal);
    drawBackgroundImage4(instructScreenBitmap);
    
    waitForVblank();
    flipPage();
    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

        if(BUTTON_PRESSED(BUTTON_START)){
            fillScreen4(BLACKINDEX);
            state = GAMESCREEN;
            initializeGameBGs();
            initializeGame();
            initializeGameMusic();
            return;
        }
        if(BUTTON_PRESSED(BUTTON_A)){
            fillScreen4(BLACKINDEX);
            state = STARTSCREEN;
        }

    }
}

void pause(){
    REG_DISPCTL = MODE4 | BG2_ENABLE;
    flipPage();
    loadPalette(pauseScreenPal);
    drawBackgroundImage4(pauseScreenBitmap);
    sprintf(buffer,"Time Left Before The Sky Falls: %i", timer);
    drawString4(80, 10, buffer, WHITEINDEX);
    sprintf(buffer,"You've collected %i item(s)", collectedItems);
    drawString4(90, 10, buffer, WHITEINDEX);
    waitForVblank();
    flipPage();
    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

        if(BUTTON_PRESSED(BUTTON_START)){
            unpauseSound();
            fillScreen4(BLACKINDEX);
            state = GAMESCREEN;
            initializeGameBGs();
            timer = newTimer;
            return;
        }
        if(BUTTON_PRESSED(BUTTON_SELECT)){
            stopSound();
            fillScreen4(BLACKINDEX);
            soundA.loops = 1;
            playSoundA(thunder, THUNDERLEN, THUNDERFREQ);
            state = STARTSCREEN;
            return;
        }

    }
}

void win(){
    REG_DISPCTL = MODE4 | BG2_ENABLE;
    flipPage();
    loadPalette(winScreenPal);
    drawBackgroundImage4(winScreenBitmap);
    waitForVblank();
    flipPage();
    while(1){
        oldButtons = buttons;
		buttons = BUTTONS;

        if(BUTTON_PRESSED(BUTTON_START)){
            stopSound();
            fillScreen4(BLACKINDEX);
            soundA.loops = 1;
            playSoundA(thunder, THUNDERLEN, THUNDERFREQ);
            state = STARTSCREEN;

            return;
        }

    }
}

void lose(){
    REG_DISPCTL = MODE4 | BG2_ENABLE;
    flipPage();
    loadPalette(loseScreenPal);
    drawBackgroundImage4(loseScreenBitmap);
    waitForVblank();
    flipPage();
    while(1){
        oldButtons = buttons;
		buttons = BUTTONS;

        if(BUTTON_PRESSED(BUTTON_START)){
            stopSound();
            fillScreen4(BLACKINDEX);
            soundA.loops = 1;
            playSoundA(thunder, THUNDERLEN, THUNDERFREQ);
            state = STARTSCREEN;
            return;
        }

    }
}

void game(){

    while(1){
        oldButtons = buttons;
        buttons = BUTTONS;

        chicken.bigRow = chicken.row + BG0vOff;
        chicken.bigCol = chicken.col + BG0hOff;

        foxy.row = foxy.bigRow - BG0vOff;
        foxy.col = foxy.bigCol - BG0hOff;

        king.row = king.bigRow - BG0vOff;
        king.col = king.bigCol - BG0hOff;

        proof1.row = proof1.bigRow - BG0vOff;
        proof1.col = proof1.bigCol - BG0hOff;

        proof2.row = proof2.bigRow - BG0vOff;
        proof2.col = proof2.bigCol - BG0hOff;

        proof3.row = proof3.bigRow - BG0vOff;
        proof3.col = proof3.bigCol - BG0hOff;

        proof4.row = proof4.bigRow - BG0vOff;
        proof4.col = proof4.bigCol - BG0hOff;

        proof5.row = proof5.bigRow - BG0vOff;
        proof5.col = proof5.bigCol - BG0hOff;

        proof6.row = proof6.bigRow - BG0vOff;
        proof6.col = proof6.bigCol - BG0hOff;

        proof7.row = proof7.bigRow - BG0vOff;
        proof7.col = proof7.bigCol - BG0hOff;

        proof8.row = proof8.bigRow - BG0vOff;
        proof8.col = proof8.bigCol - BG0hOff;        

        proof9.row = proof9.bigRow - BG0vOff;
        proof9.col = proof9.bigCol - BG0hOff;

        proof10.row = proof10.bigRow - BG0vOff;
        proof10.col = proof10.bigCol - BG0hOff;        

        if(BUTTON_PRESSED(BUTTON_START)){
            state = PAUSESCREEN;
            pauseSound();
            newTimer = timer;
            return;
        }


        if(chicken.aniState != CHICKENIDLE){
            chicken.prevAniState = chicken.aniState;
            chicken.aniCounter++;
        }
        if(chicken.aniCounter%20==0){
            chicken.currFrame = (chicken.currFrame+1) % 3;
        }
                

        if(BUTTON_HELD(BUTTON_UP))
        {
            chicken.aniState = CHICKENBACK;
            if(collisionmapBitmap[OFFSET(chicken.bigRow-1, chicken.bigCol, 512)] && (chicken.row)){
                if(chicken.row > 72){
                    chicken.row--;
                }
                else if(BG0vOff > 0){
                    BG0vOff--;
                }
                else if((chicken.row >= BG0vOff) && (chicken.row > 0)){
                    chicken.row--;
                }

            }
        }
        if(BUTTON_HELD(BUTTON_DOWN))
        {
            chicken.aniState = CHICKENFRONT;
            if(collisionmapBitmap[OFFSET(chicken.bigRow+chicken.height+1, chicken.bigCol, 512)] && (chicken.row+chicken.height)){
                if(chicken.row < 72){
                    chicken.row++;
                }
                else if(BG0vOff < 96){
                    BG0vOff++; 
                }
                else if(chicken.row < (160-chicken.height)){
                    chicken.row++;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_LEFT))
        {
            chicken.aniState = CHICKENLEFT;
            BG1hOff--;

            if(collisionmapBitmap[OFFSET(chicken.bigRow, chicken.bigCol-1, 512)] && (chicken.col)){
                if(chicken.col > 112){
                    chicken.col--;
                }
                else if(BG0hOff > 0){
                    BG0hOff--;
                }
                else if(chicken.col > 0){
                    chicken.col--;
                }

            }
        }
        if(BUTTON_HELD(BUTTON_RIGHT))
        {
            chicken.aniState = CHICKENRIGHT;
            BG1hOff++;

            if(collisionmapBitmap[OFFSET(chicken.bigRow, chicken.bigCol+chicken.width+1, 512)] && (chicken.col+chicken.width)){
                if(chicken.col + chicken.width < 170-chicken.width){
                    chicken.col++;
                }
                else if(BG0hOff < 850){
                    BG0hOff++;
                }


            }
        }


        if(BUTTON_PRESSED(BUTTON_A)){
            chicken.row = chicken.row - chicken.rdel*5;
            chicken.col = chicken.col+ chicken.cdel;
            chicken.row = chicken.row+chicken.rdel*2;
        }

        updateOAM();


        REG_BG0HOFS = BG0hOff;
        REG_BG0VOFS = BG0vOff;
        REG_BG1HOFS = BG1hOff;
        REG_BG1VOFS = BG1vOff;
        
        waitForVblank();
        
        timer--;

        if(timer == 3900){
            BG1vOff= BG1vOff - 8;
        }
        if(timer == 3800){
            BG1vOff = BG1vOff - 10;
        }
        if(timer == 3750){
            BG1vOff= BG1vOff - 13;
        }
        if(timer == 3500){
            BG1vOff = BG1vOff - 15;
        }
        if(timer == 3000){
            BG1vOff= BG1vOff - 17;
        }
        if(timer == 2500){
            BG1vOff = BG1vOff - 9;
        }
        if(timer == 1700){
            BG1vOff= BG1vOff - 8;
        }
        if(timer == 1000){
            BG1vOff = BG1vOff - 7;
        }
        if(timer == 750){
            BG1vOff = BG1vOff - 2;
        }
        if(timer == 500){
            BG1vOff = BG1vOff - 3;
        }
        if(timer == 300){
            BG1vOff = BG1vOff - 6;
        }
        if(timer == 200){
            BG1vOff = BG1vOff - 3;
        }
        if(timer == 100){
            BG1vOff--;
        }
        if(timer == 50){
            BG1vOff--;
        }
        if(timer == 0){
            soundA.loops = 0;
            playSoundA(loserSound, LOSERSOUNDLEN, LOSERSOUNDFREQ);
            state = LOSESCREEN;
            return;
        }


        //*Holding B in this case is the cheat for this game.
        if(!BUTTON_HELD(BUTTON_B)){
            if((foxy.bigCol - chicken.bigCol+chicken.width < 100) && (foxy.bigCol > 244) && (foxy.bigRow - (chicken.bigRow+chicken.height) < 3)){
                if(collisionmapBitmap[OFFSET(foxy.bigRow, foxy.bigCol, 512)]){
                    foxy.bigCol = foxy.bigCol-foxy.cdel;
                }

                if(((chicken.bigRow+chicken.height) > (foxy.bigRow+foxy.height/3)) && ((chicken.bigCol+chicken.width) >= foxy.bigCol + 8)
                    && (chicken.bigCol <= (foxy.bigCol+foxy.width-8))){
                    stopSound();
                    soundA.loops = 0;
                    playSoundA(loserSound, LOSERSOUNDLEN, LOSERSOUNDFREQ);
                    state = LOSESCREEN;
                    return;
                }
            }
        }

        if(((chicken.bigRow+chicken.height) > proof1.bigRow) && ((chicken.bigCol+chicken.width) >= proof1.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof1.bigRow + proof1.height/2)) && (chicken.bigCol <= (proof1.bigCol+proof1.width))){
            collectedItems++;
            proof1.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }

        if(((chicken.bigRow+chicken.height) > proof2.bigRow) && ((chicken.bigCol+chicken.width) >= proof2.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof2.bigRow + proof2.height/2)) && (chicken.bigCol <= (proof2.bigCol+proof2.width))){
            collectedItems++;
            proof2.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }
        if(((chicken.bigRow+chicken.height) > proof3.bigRow) && ((chicken.bigCol+chicken.width) >= proof3.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof3.bigRow + proof3.height/2)) && (chicken.bigCol <= (proof3.bigCol+proof3.width))){
            collectedItems++;
            proof3.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }

        if(((chicken.bigRow+chicken.height) > proof4.bigRow) && ((chicken.bigCol+chicken.width) >= proof4.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof4.bigRow + proof4.height/2)) && (chicken.bigCol <= (proof4.bigCol+proof4.width))){
            collectedItems++;
            proof4.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);

        }
        if(((chicken.bigRow+chicken.height) > proof5.bigRow) && ((chicken.bigCol+chicken.width) >= proof5.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof5.bigRow + proof5.height/2)) && (chicken.bigCol <= (proof5.bigCol+proof5.width))){
            collectedItems++;
            proof5.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }
        if(((chicken.bigRow+chicken.height) > proof6.bigRow) && ((chicken.bigCol+chicken.width) >= proof6.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof6.bigRow + proof6.height/2)) && (chicken.bigCol <= (proof6.bigCol+proof1.width))){
            collectedItems++;
            proof6.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }
        if(((chicken.bigRow+chicken.height) > proof7.bigRow) && ((chicken.bigCol+chicken.width) >= proof7.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof7.bigRow + proof7.height/2)) && (chicken.bigCol <= (proof7.bigCol+proof7.width))){
            collectedItems++;
            proof7.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }

        if(((chicken.bigRow+chicken.height) > proof8.bigRow) && ((chicken.bigCol+chicken.width) >= proof8.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof8.bigRow + proof8.height/2)) && (chicken.bigCol <= (proof8.bigCol+proof8.width))){
            collectedItems++;
            proof8.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }

        if(((chicken.bigRow+chicken.height) > proof9.bigRow) && ((chicken.bigCol+chicken.width) >= proof9.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof9.bigRow + proof9.height/2)) && (chicken.bigCol <= (proof9.bigCol+proof9.width))){
            collectedItems++;
            proof9.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }

        if(((chicken.bigRow+chicken.height) > proof10.bigRow) && ((chicken.bigCol+chicken.width) >= proof10.bigCol) && 
            (chicken.bigRow+chicken.height/2 <= (proof10.bigRow + proof10.height/2)) && (chicken.bigCol <= (proof10.bigCol+proof10.width))){
            collectedItems++;
            proof10.bigRow=0;
            soundB.loops = 0;
            playSoundB(cluck, CLUCKLEN, CLUCKFREQ);
        }

        if (collectedItems >= 7 && (chicken.bigRow - king.row+king.height <= 60) && (king.col - chicken.bigCol+chicken.width <= 45)){
            stopSound();
            soundA.loops = 0;
            playSoundA(winnerSound, WINNERSOUNDLEN, WINNERSOUNDFREQ);
            state = WINSCREEN;
            return;
        }
    
    }

    
}

void initializeGameBGs(){

    REG_DISPCTL = MODE0| BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    
    REG_BG0CNT = CBB(0) | SBB(27) | BG_SIZE1 | COLOR256 | 2;
    REG_BG1CNT = CBB(1) | SBB(29) | BG_SIZE1 | COLOR256 | 1;
    

    loadPalette(BGgrassSky2Pal);
    DMANow(3, BGgrassSky2Tiles, &CHARBLOCKBASE[0], BGgrassSky2TilesLen/2);
    DMANow(3, BGgrassSky2Map, &SCREENBLOCKBASE[27], BGgrassSky2MapLen/2);

    loadPalette(BGcloudsPal);
    DMANow(3, BGcloudsTiles, &CHARBLOCKBASE[1], BGcloudsTilesLen/2);
    DMANow(3, BGcloudsMap, &SCREENBLOCKBASE[29], BGcloudsMapLen/2);

    DMANow(3, spritesheetPal, SPRITE_PALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCKBASE[4], spritesheetTilesLen/2);
    
}

void initializeGame(){


    hideSprites();
    initialize();    

    BG0vOff = 40;
    BG0hOff = 0;
    BG1vOff = 75;
    BG1hOff = 0;

    timer=4000;
    tempTimer = 100000;
    collectedItems=0;
}

void initializeGameMusic(){
    soundA.loops = 1;
    playSoundA(chickendance4, CHICKENDANCE4LEN, CHICKENDANCE4FREQ);
}

void initialize(){

    chicken.width = 16;
    chicken.height = 16;
    chicken.rdel = 1;
    chicken.cdel = 1;
    chicken.row = 250/2-chicken.width/2;
    chicken.col = 50/2-chicken.height/2;

    chicken.aniCounter = 0;
    chicken.currFrame = 0;

    chicken.aniState = CHICKENFRONT; 

    foxy.width = 64;
    foxy.height = 32;
    foxy.rdel = 1;
    foxy.cdel = 1;
    foxy.bigRow = 248 - foxy.width/2;
    foxy.bigCol = 370 + foxy.height/2;

    foxy.aniCounter = 0;
    foxy.currFrame = 0;

    foxy.aniState = FOXYSTAND;

    king.width = 32;
    king.height = 32;
    king.rdel = 1;
    king.cdel = 1;
    king.bigRow = 50 - king.width/2;
    king.bigCol = 380 + king.height/2;

    proof1.width = 32;
    proof1.height = 32;
    proof1.rdel = 0;
    proof1.cdel = 0;
    proof1.bigRow = 170 + proof1.width/2;
    proof1.bigCol = 70 - proof1.height/2;

    proof2.width = 32;
    proof2.height = 32;
    proof2.rdel = 0;
    proof2.cdel = 0;
    proof2.bigRow = 82 - proof2.width/2;
    proof2.bigCol = 335 + proof2.height/2;

    proof3.width = 32;
    proof3.height = 32;
    proof3.rdel = 0;
    proof3.cdel = 0;
    proof3.bigRow = 190 + proof3.width/2;
    proof3.bigCol = 625 - proof3.height/2;

    proof4.width = 16;
    proof4.height = 16;
    proof4.rdel = 0;
    proof4.cdel = 0;
    proof4.bigRow = 240 - proof4.width/2;
    proof4.bigCol = 435 + proof4.height/2;

    proof5.width = 16;
    proof5.height = 16;
    proof5.rdel = 0;
    proof5.cdel = 0;
    proof5.bigRow = 150 + proof5.width/2;
    proof5.bigCol = 500 - proof5.height/2;

    proof6.width = 16;
    proof6.height = 16;
    proof6.bigRow = 150 + proof6.width/2;
    proof6.bigCol = 160 - proof6.height/2;

    proof7.width = 16;
    proof7.height = 16;
    proof7.bigRow = 100 + proof7.width/2;
    proof7.bigCol = 780 - proof7.height/2;

    proof8.width = 32;
    proof8.height = 16;
    proof8.bigRow = 200 + proof8.width/2;
    proof8.bigCol = 870 - proof8.height/2;

    proof9.width = 16;
    proof9.height = 16;
    proof9.bigRow = 150 + proof9.width/2;
    proof9.bigCol = 900 - proof9.height/2;

    proof10.width = 16;
    proof10.height = 16;
    proof10.bigRow = 85 + proof10.width/2;
    proof10.bigCol = 815 - proof10.height/2;

}

void hideSprites(){
    for(int i=0; i<128; i++){
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
}

void updateOAM(){
        shadowOAM[0].attr0 = ROWMASK & chicken.row;
        shadowOAM[0].attr1 = (COLMASK & chicken.col) | ATTR1_SIZE16;
        shadowOAM[0].attr2 = (SPRITEOFFSET16((chicken.currFrame*2), (chicken.prevAniState*2))) | (ATTR2_PALBANK(0));

        shadowOAM[1].attr0 = (ROWMASK & foxy.row) | ATTR0_WIDE;
        shadowOAM[1].attr1 = (COLMASK & foxy.col) | ATTR1_HFLIP | ATTR1_SIZE64;
        shadowOAM[1].attr2 = (SPRITEOFFSET16(14, 0)) | (ATTR2_PALBANK(2));

        shadowOAM[2].attr0 = (ROWMASK & king.row);
        shadowOAM[2].attr1 = (COLMASK & king.col) | ATTR1_SIZE32;
        shadowOAM[2].attr2 = (SPRITEOFFSET16(6, 0)) | (ATTR2_PALBANK(1));

        shadowOAM[3].attr0 = (ROWMASK & proof1.row);
        shadowOAM[3].attr1 = (COLMASK & proof1.col) | ATTR1_SIZE32;
        shadowOAM[3].attr2 = (SPRITEOFFSET16(26, 0)) | (ATTR2_PALBANK(3));

        shadowOAM[4].attr0 = (ROWMASK & proof2.row);
        shadowOAM[4].attr1 = (COLMASK & proof2.col) | (ATTR1_SIZE16);
        shadowOAM[4].attr2 = (SPRITEOFFSET16(26, 8)) | (ATTR2_PALBANK(3));

        shadowOAM[5].attr0 = (ROWMASK & proof3.row);
        shadowOAM[5].attr1 = (COLMASK & proof3.col) | (ATTR1_SIZE32);
        shadowOAM[5].attr2 = (SPRITEOFFSET16(26, 10)) | (ATTR2_PALBANK(3));

        shadowOAM[6].attr0 = (ROWMASK & proof4.row);
        shadowOAM[6].attr1 = (COLMASK & proof4.col) | (ATTR1_SIZE16);
        shadowOAM[6].attr2 = (SPRITEOFFSET16(30, 4)) | (ATTR2_PALBANK(4));

        shadowOAM[7].attr0 = (ROWMASK & proof5.row);
        shadowOAM[7].attr1 = (COLMASK & proof5.col) | (ATTR1_SIZE16);
        shadowOAM[7].attr2 = (SPRITEOFFSET16(30, 0)) | (ATTR2_PALBANK(3));

        shadowOAM[8].attr0 = (ROWMASK & proof6.row);
        shadowOAM[8].attr1 = (COLMASK & proof6.col) | (ATTR1_SIZE16);
        shadowOAM[8].attr2 = (SPRITEOFFSET16(30, 6)) | (ATTR2_PALBANK(4));

        shadowOAM[9].attr0 = (ROWMASK & proof7.row);
        shadowOAM[9].attr1 = (COLMASK & proof7.col) | (ATTR1_SIZE16);
        shadowOAM[9].attr2 = (SPRITEOFFSET16(30, 10)) | (ATTR2_PALBANK(4));

        shadowOAM[10].attr0 = (ROWMASK & proof8.row) | ATTR0_WIDE;
        shadowOAM[10].attr1 = (COLMASK & proof8.col) | (ATTR1_SIZE32);
        shadowOAM[10].attr2 = (SPRITEOFFSET16(30, 12)) | (ATTR2_PALBANK(4));

        shadowOAM[11].attr0 = (ROWMASK & proof9.row);
        shadowOAM[11].attr1 = (COLMASK & proof9.col) | (ATTR1_SIZE16);
        shadowOAM[11].attr2 = (SPRITEOFFSET16(30, 11)) | (ATTR2_PALBANK(3));

        shadowOAM[12].attr0 = (ROWMASK & proof10.row);
        shadowOAM[12].attr1 = (COLMASK & proof10.col) | (ATTR1_SIZE16);
        shadowOAM[12].attr2 = (SPRITEOFFSET16(30, 8)) | (ATTR2_PALBANK(4));

        DMANow(3, shadowOAM, OAM, 512);

}

void setupSounds(){
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                        DSA_OUTPUT_RATIO_100 | 
                        DSA_OUTPUT_TO_BOTH | 
                        DSA_TIMER0 | 
                        DSA_FIFO_RESET |
                        DSB_OUTPUT_RATIO_100 | 
                        DSB_OUTPUT_TO_BOTH | 
                        DSB_TIMER1 | 
                        DSB_FIFO_RESET;

    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency) {

    
        dma[1].cnt = 0;
        vbCountA = 0;
    
        int interval = 16777216/frequency;
    
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
    
        REG_TM0CNT = 0;
    
        REG_TM0D = -interval;
        REG_TM0CNT = TIMER_ON;

         soundA.data = sound;
         soundA.length = length;
         soundA.frequency = frequency;
         soundA.isPlaying = 1;
         soundA.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
         soundA.priority = 1;
}


void playSoundB( const unsigned char* sound, int length, int frequency) {

        dma[2].cnt = 0;
        vbCountB = 0;

        int interval = 16777216/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
    
        REG_TM1D = -interval;
        REG_TM1CNT = TIMER_ON;
    
        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.isPlaying = 1;
        soundB.duration = ((60*length)/frequency) - ((length/frequency)*3)-1;
        soundB.priority = 2;

}

void pauseSound()
{

    REG_TM0CNT = 0;
    soundA.isPlaying = 0;
    

    REG_TM1CNT = 0;
    soundB.isPlaying = 0;

}

void unpauseSound()
{

    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;

}

void stopSound()
{
    dma[1].cnt = 0;
    REG_TM0CNT = 0;
    soundA.isPlaying = 0;
    dma[2].cnt = 0;
    REG_TM1CNT = 0;
    soundB.isPlaying = 0;

}

void setupInterrupts()
{
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int)interruptHandler;
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler()
{
    REG_IME = 0;
    if(REG_IF & INT_VBLANK)
    {

        if(soundA.isPlaying){
            vbCountA++;
        }
        if(soundA.isPlaying && (vbCountA > soundA.duration) && soundA.loops){
            playSoundA(soundA.data, soundA.length, soundA.frequency);
        }
        if(soundA.isPlaying && (vbCountA > soundA.duration)){
            dma[1].cnt = 0;
            REG_TM0CNT = 0;
            soundA.isPlaying = 0;
        }
        if(soundB.isPlaying){
            vbCountB++;
        }
        if((vbCountB > soundB.duration) && soundB.isPlaying && soundB.loops){
            playSoundB(soundB.data, soundB.length, soundB.frequency);
        }
        if((vbCountB > soundB.duration) && soundB.isPlaying){
            dma[2].cnt = 0;
            REG_TM1CNT = 0;
            soundB.isPlaying = 0;
        }


        REG_IF = INT_VBLANK; 
    }

    REG_IME = 1;
}


