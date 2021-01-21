/***************************************************************************/ /**
  @file     main_effects_state.c
  @brief    Main Effects state functions.
  @author   Grupo 2 - Lab de Micros
 ******************************************************************************/

/*******************************************************************************
 * INCLUDE HEADER FILES
 ******************************************************************************/
#include "main_effects_state.h"
#include "queue.h"
/*******************************************************************************
 * CONSTANT AND MACRO DEFINITIONS USING #DEFINE
 ******************************************************************************/
/*******************************************************************************
 * ENUMERATIONS AND STRUCTURES AND TYPEDEFS
 ******************************************************************************/

/*******************************************************************************
 * GLOBAL VARIABLES WITH FILE LEVEL SCOPE
 ******************************************************************************/
static bool showingTitle;
static int titleTimerID = -1;
/*******************************************************************************
 * CONSTANT AND MACRO DEFINITIONS USING #DEFINE
 ******************************************************************************/
#define TITLE_TIME  2000

/*******************************************************************************
 * FUNCTION PROTOTYPES FOR PRIVATE FUNCTIONS WITH FILE LEVEL SCOPE
 ******************************************************************************/
/**
 * @brief Show the title of the state on the display. If the user interacts with the system, the title will stop showing.
 */
static void showTitle(void);
/**
 * @brief Stops showing the title of the state on the display.
 */
static void stopShowingTitle(void);

/**
 * @brief Stops showing the title of the state on the display due to a user's interaction.
 */
static void userInteractionStopsTitle(void);
/*******************************************************************************
 * FUNCTIONS WITH GLOBAL SCOPE
 ******************************************************************************/

void maineffects_initState(void)
{
    showTitle();
}

/*******************************************************************************
 *******************************************************************************
                        LOCAL FUNCTION DEFINITIONS
 *******************************************************************************
 ******************************************************************************/
static void showTitle(void)
{
	//TODO: show Title "Effects".
	showingTitle = true;
	titleTimerID = Timer_AddCallback(&stopShowingTitle,TITLE_TIME, true );
}


static void stopShowingTitle(void)
{
	    showingTitle = false;
	    //   TODO: erase screen
	    setCurrentOption();

}

static void userInteractionStopsTitle(void)
{
		Timer_Delete(titleTimerID);
		titleTimerID = -1;
		stopShowingTitle();
}
