
COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Berkeley Softworks 1990 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		Epson 24-pin driver
FILE:		epson24dj505JMInfo.asm

AUTHOR:		Tsutomu Owa

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Owa	1/94		Initial revision

DESCRIPTION:
	This file contains the device information for the HP Desk Jet printer

	Other Printers Supported by this resource:
		HP Desk Jet 505J (B/W)

	$Id: epson24dj505JMInfo.asm,v 1.1 97/04/18 11:53:24 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

;----------------------------------------------------------------------------
;	HP Desk Jet 505J (B/W)
;----------------------------------------------------------------------------

dj505JMInfo	segment	resource

	; info blocks

PrinterInfo		   <		; ---- PrinterType -------------
				< PT_RASTER,
				BMF_MONO >,
					; ---- PrinterConnections ------
				< IC_NO_IEEE488,
				CC_NO_CUSTOM,
				SC_NO_SCSI,
				RC_NO_RS232C,
				CC_CENTRONICS,
				FC_FILE,
				AC_NO_APPLETALK >,
					; ---- PrinterSmarts -----------
				PS_DUMB_RASTER,	
					;-------Custom Entry Routine-------
				NULL,
					;-------Custom Exit Routine-------
				NULL,		
					; ---- Mode Info Offsets -------
				offset dj505JMlowRes,
				offset dj505JMmedRes,
				NULL,
; High resolution mode is deleted because of bug #32895
;				offset dj505JMhiRes,
                                offset printerFontInfo:lq800draft,
                                offset printerFontInfo:lq800nlq,
                                        ; ---- Font Geometry -----------
                                offset dj505JMfontGeometries,
                                        ; ---- Symbol Set list -----------
                                NULL,
					; ---- PaperMargins ------------
				< 10,	;PR_MARGIN_LEFT,; Tractor Margins
				19,	;PR_MARGIN_TRACTOR, 
				10,	;PR_MARGIN_RIGHT,
				50>,	;PR_MARGIN_TRACTOR >,
				< 10,	;ASF Margins, left 3mm - 8.5pt
				19,	; top: 6.5mm
				10,	;
				50>,	; bottom: 12.7mm + 5mm
					; ---- PaperInputOptions -------
				< MF_MANUAL1,
				TF_NO_TRACTOR,
				ASF_TRAY1 >,
					; ---- PaperOutputOptions ------
				< OC_NO_COPIES,
				PS_REVERSE,
				OD_SIMPLEX,
				SO_NO_STAPLER,
				OS_NO_SORTER,
				OB_NO_OUTPUTBIN >,
					;
				683,	; paper width (points).	241mm
                                NULL,   ; Main UI
				ASF1BinOnlyOptionsDialogBox, ; Options UI
				PrintEvalASF1BinOnly    ; eval routine address

			      >

;----------------------------------------------------------------------------
;	Graphics modes info
;----------------------------------------------------------------------------

dj505JMlowRes	GraphicsProperties < LO_RES_X_RES,	; xres
				     LO_RES_Y_RES,	; yres
				     LO_RES_BAND_HEIGHT,  ; band height
                                     LO_RES_BUFF_HEIGHT,  ; buffer height
                                     LO_RES_INTERLEAVE_FACTOR, ;#interleaves
				     BMF_MONO,		;color format
				     NULL >		; color format

dj505JMmedRes	GraphicsProperties < MED_RES_X_RES,	; xres
				     MED_RES_Y_RES,	; yres
				     MED_RES_BAND_HEIGHT,  ; band height
                                     MED_RES_BUFF_HEIGHT,  ; buffer height
                                     MED_RES_INTERLEAVE_FACTOR, ;#interleaves
				     BMF_MONO,		;color format
				     NULL >		; color format

;dj505JMhiRes	GraphicsProperties < HI_RES_X_RES,	; xres
;				     HI_RES_Y_RES,	; yres
;				     HI_RES_BAND_HEIGHT,  ; band height
;                                     HI_RES_BUFF_HEIGHT,  ; buffer height
;                                     HI_RES_INTERLEAVE_FACTOR, ;#interleaves
;				     BMF_MONO,		;color format
;				     NULL >		; color format

;----------------------------------------------------------------------------
;	Text modes info
;----------------------------------------------------------------------------

                ;need to add geometries in ascending pointsize, grouped by font
dj505JMfontGeometries     FontGeometry \
                <       FID_DTC_URW_ROMAN,
                        8,
                        offset dj505JM_8ptpitchTab >,
                <       FID_DTC_URW_ROMAN,
                        12,
                        offset dj505JM_12ptpitchTab >,
                <       FID_DTC_URW_SANS,
                        8,
                        offset dj505JM_8ptpitchTab >,
                <       FID_DTC_URW_SANS,
                        12,
                        offset dj505JM_12ptpitchTab >
                word    FID_INVALID             ;table terminator

dj505JM_8ptpitchTab      label   byte
        byte    TP_15_PITCH
        byte    TP_PROPORTIONAL         ;"table Terminator"

dj505JM_12ptpitchTab      label   byte
        byte    TP_20_PITCH
        byte    TP_17_PITCH
        byte    TP_12_PITCH
        byte    TP_10_PITCH
        byte    TP_6_PITCH
        byte    TP_5_PITCH
        byte    TP_PROPORTIONAL         ;"table Terminator"


dj505JMInfo	ends
