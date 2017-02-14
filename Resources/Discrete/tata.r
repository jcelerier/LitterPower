/*
	File:		tata.r

	Contains:	Resources for tata

	Written by:	Peter Castine

	Copyright:	 � 2000-2002 Peter Castine. All rights reserved.

	Change History (most recent first):

        <11>     15�3�06    pc      Add expect message
        <10>     10�2�06    pc      Update minor revision to reflect change in library function
                                    MachineKharma().
         <9>     19�1�06    pc      Minor revision: Improve seeding algorith used for Taus88. 
         <8>     11�1�06    pc      Nudge revision. Updated to use more appropriate MSL version
                                    under Windows.
         <7>     21�1�04    pc      Go to final status.
         <6>     14�1�04    pc      Modify for Rez/RC compatibility
         <5>    7�7�2003    pc      Bump revision to final. Use STR# resource for Object List
                                    categories.
         <4>    5�7�2003    pc      Bump revision number (fixed seed & assist string problems).
         <3>  30�12�2002    pc      Make vers information carbon/classic-savvy. Drop faux 'Vers'
                                    resource. Bump/beta minor revision.
         <2>  29�11�2002    pc      Tidy up initial check in.
         <1>  29�11�2002    pc      Initial check in.
*/


	//
	// Configuration values for this object
	//
	// These must be unique within Litter Package. The Names must match constant values used
	// in the C/C++ source code (we try never to access resources by ID).
#define LPobjID			17498
#define LPobjName		"lp.tata"

	// -----------------------------------------
	// 'vers' stuff we need to maintain manually
#define LPobjStarter		1							// Comment out for Pro Bundles
#define LPobjMajorRev		1
#define LPobjMinorRev		3
#define LPobjBugFix			0
#define LPobjStage			finalStage
#define LPobjStageBuild		1
#define LPobjRegion			0							// US
#define LPobjVersStr		"1.3fc1"
#define LPobjCRYears		"2001-08"

#define	LPobjLitterCategory	"Litter RNGs"				// Litter category
#define LPobjMax3Category	"Arith/Logic/Bitwise"		// Category for Max 2.2 - 3.6x
#define LPobjMax4Category	"Math"						// Category starting at Max 4

	// Description string (for Windows Properties box, taken from documentation)
#define LPobjDescription	"Generate random numbers using the Tausworthe 88 algorithm"

	// The following sets up the 'mAxL' and 'vers' resources
	// It relies on the values above for resource IDs and names, as
	// well as concrete values for the 'vers'(1) resource.
#include "Litter Globals.r"
	//
	// -----------------------------------------


	//
	// Other resource definitions 
	//
	#ifdef RC_INVOKED
		#define LPlessEq		"<="
	#else
		#define LPlessEq		"�"
	#endif

	// Assistance strings
#define LPAssistIn1			"Bang (Generate random number)"
#define LPAssistIn2			"Int (Minimum)"
#define LPAssistIn3			"Int (Maximum)"
#define LPAssistOut1		"Int (Random value, %ld " LPlessEq " x " LPlessEq " %ld)"

#ifdef RC_INVOKED					// Must be Windows RC Compiler

	STRINGTABLE DISCARDABLE
		BEGIN
		lpStrIndexLastStandard + 1,		LPAssistIn1
		lpStrIndexLastStandard + 2,		LPAssistIn2
		lpStrIndexLastStandard + 3,		LPAssistIn3
		lpStrIndexLastStandard + 4,		LPAssistOut1
		END

#else								// Must be Mac OS Resource Compiler

	resource 'STR#' (LPobjID, LPobjName) {
		{	/* array StringArray: 4 elements */
			LPStdStrings,								// Standard Litter Strings
			
			// Assist strings
			LPAssistIn1, LPAssistIn2, LPAssistIn3,		// Inlets
			LPAssistOut1								// Outlets
		}
	};

#endif

