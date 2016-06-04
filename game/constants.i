SKIPPED_FRAMES_DISPLAY			equ 1
MPANEL_COPPER_WAIT			equ $9ad1 ; controls the vertical position of the message panel

PLAYER_MOVE_UP				equ 1
PLAYER_MOVE_DOWN			equ 2
PLAYER_MOVE_LEFT			equ 3
PLAYER_MOVE_RIGHT			equ 4

PLAYER_LIVES_COUNTER			equ '0003'

PLAYER_INITIAL_X			equ $c0
PLAYER_LEFT_X				equ $c0
PLAYER_INITIAL_Y			equ $e4-32
PLAYER_BOTTOM_Y				equ $e4+16
PLAYER_TOP_Y				equ (PLAYER_BOTTOM_Y-(7*16))
PLAYER_SPRITE_VERTICAL_BYTES		equ ((16*4)+12)

PLAYER_JUMP_PIXELS			equ 8  ; PLAYER_JUMP_PIXELS * PLAYER_MOVE_PIXELS must equal 16
PLAYER_MOVE_PIXELS			equ 2

PLAYER_FAST_PAUSE_PIXELS		equ 2 number of pixel waits between jumps
PLAYER_FAST_CHECK_MISS_PIXELS		equ 1

PATHWAY_CONFIG_FREE			equ 0
PATHWAY_CONFIG_HORIZONTAL		equ 1
PATHWAY_CONFIG_VERTICAL			equ 2
PATHWAY_CONFIG_TOP_LEFT			equ 3
PATHWAY_CONFIG_TOP_RIGHT		equ 4
PATHWAY_CONFIG_BOT_LEFT			equ 5
PATHWAY_CONFIG_BOT_RIGHT		equ 6


FOREGROUND_DELAY_BIT			equ 0
FOREGROUND_SCROLL_SHIFT_CONVERT	     	equ 4
FOREGROUND_SCROLL_TILE_INDEX_CONVERT 	equ 3
FOREGROUND_SCROLL_PIXELS	     	equ 16
FOREGROUND_PLAYAREA_WIDTH_WORDS		equ 24
FOREGROUND_PLAYAREA_RIGHT_MARGIN_BYTES	equ 12
FOREGROUND_PLAYAREA_HEIGHT_WORDS	equ 8
FOREGROUND_MOVING_COUNTER		equ 100

FOREGROUND_TILE_ENDLEVEL		equ $7098
FOREGROUND_TILE_EMPTY			equ $709a

BACKGROUND_SCROLL_SHIFT_CONVERT	     	equ 4
BACKGROUND_SCROLL_TILE_INDEX_CONVERT 	equ 3
BACKGROUND_SCROLL_PIXELS		equ 16
	
ITEM_SPRITE_HEIGHT			equ 15
ITEM_SPRITE_SPACING			equ 16
ITEM_SPRITE_SPACING_SHIFT_CONVERT	equ 4
ITEM_SPRITE_NUM_VERTICAL_SPRITES	equ 6
ITEM_SPRITE_VERTICAL_BYTES		equ ((ITEM_SPRITE_HEIGHT*4)+4)
ITEM_SPRITE_VERTICAL_BYTES_SHIFT_CONVERT equ 6
ITEM_SPRITE_BYTES			equ (ITEM_SPRITE_NUM_VERTICAL_SPRITES*ITEM_SPRITE_VERTICAL_BYTES)+4
ITEM_SINGLE_SPRITE_BYTES		equ (ITEM_SPRITE_VERTICAL_BYTES)+4
ITEM_SPRITE_VSTART			equ 149
ITEM_NUM_BEES				equ 2
ITEM_NUM_NON_ANIMATED_ITEMS		equ 2
ITEM_NUM_SLOTS				equ ((8*3)+ITEM_NUM_BEES+ITEM_NUM_NON_ANIMATED_ITEMS)
ITEM_SPRITE_HORIZONTAL_START_PIXELS	equ 32
ITEM_SPRITE_Y_COLLISION_OFFSET		equ 1

;ITEM_SPRITE_EYE_INDEX			equ 26
;ITEM_SPRITE_BEE_DOWN_INDEX		equ 24
;ITEM_SPRITE_BEE_UP_INDEX		equ 25
ITEM_SPRITE_ARROW_INDEX			equ 16
ITEM_SPRITE_COINB_INDEX			equ 8

;item control struct offsets
ITEM_X					equ 0
ITEM_Y_OFFSET				equ 2
ITEM_Y					equ 4
ITEM_SPRITE				equ 6
ITEM_INDEX				equ 8
ITEM_SPRITE_ENABLED			equ 10
ITEM_SPRITE_ADDRESS			equ 12
ITEM_STRUCT_SIZE			equ 16

ITEM_STRUCT_MULU_SHIFT			equ 4
ITEM_NUM_COIN_ANIMS			equ 7

ITEM_Y_OFFSET_SHIFT_CONVERT		equ 1
BEE_COLLIDE_SIZE			equ 8

BIGBANG_ANIM_DELAY			equ 4
BIGBANG_POST_DELAY			equ 15

SCORE_COINS_ADDITION			equ 100
SCORE_ARROW_SUBTRACTION			equ 500
SCORE_MAX				equ 99999

SCREEN_WIDTH				equ 320
SCREEN_HEIGHT		    		equ 256
SCREEN_WIDTH_BYTES	    		equ (SCREEN_WIDTH/8)
SCREEN_WIDTH_WORDS	    		equ SCREEN_WIDTH_BYTES/2
BITPLANE_WIDTH		    		equ 352
BITPLANE_WIDTH_BYTES	    		equ BITPLANE_WIDTH/8
BITPLANE_WIDTH_WORDS	    		equ BITPLANE_WIDTH_BYTES/2
TILEMAP_WIDTH		    		equ 320
TILEMAP_WIDTH_BYTES	    		equ TILEMAP_WIDTH/8
TILEMAP_WIDTH_WORDS	    		equ TILEMAP_WIDTH_BYTES/2
BACKGROUND_TILEMAP_WIDTH		equ 128
BACKGROUND_TILEMAP_WIDTH_BYTES		equ BACKGROUND_TILEMAP_WIDTH/8
BACKGROUND_TILEMAP_WIDTH_WORDS 		equ BACKGROUND_TILEMAP_WIDTH_BYTES/2

SCREEN_BIT_DEPTH			equ 3

SCREEN_RES				equ 8 	; 8=lo resolution, 4=hi resolution
RASTER_X_START				equ $81	; hard coded coordinates from hardware manual
RASTER_Y_START				equ $2c
RASTER_X_STOP				equ RASTER_X_START+SCREEN_WIDTH
RASTER_Y_STOP				equ RASTER_Y_START+256
IMAGESIZE				equ BITPLANE_WIDTH_BYTES*SCREEN_BIT_DEPTH*(SCREEN_HEIGHT)
LINESIZE				equ BITPLANE_WIDTH_BYTES*SCREEN_BIT_DEPTH


PANEL_BIT_DEPTH				equ 4
PANEL_LIVES_X				equ 236
PANEL_PLAYER1_X				equ 214
PANEL_COLUMNS_REMAINING_X		equ 100
PANEL_SCORE_X				equ 29

COUNTDOWN_BITMAP_WIDTH			equ 80
COUNTDOWN_BLIT_WIDTH_BYTES		equ 2
COUNTDOWN_BLIT_WIDTH_WORDS		equ 1

LIVES_PLAYER_BONUS			equ 5000

BOB_X			equ 4
BOB_Y			equ 8
BOB_DX			equ 12
BOB_SOURCE_ADDRESS	equ 16
BOB_MASK_ADDRESS	equ 20
BOB_SAVE_BUFFER_ADDRESS equ 24
BOB_LAST_DEST_ADDRESS	equ 32
BOB_BLIT_SIZE		equ 40	

BOB_BLIT_HEIGHT		equ 32
BOB_BLIT_WIDTH_WORDS	equ 3
BOB_BLIT_WIDTH_BYTES	equ BOB_BLIT_WIDTH_WORDS*2
BOB_MODULO		equ BACKGROUND_TILEMAP_WIDTH_BYTES-BOB_BLIT_WIDTH_BYTES
BOB_SHIFT_CONVERT	equ 4
BOB_SAVE_SIZE		equ BOB_BLIT_WIDTH_BYTES*SCREEN_BIT_DEPTH*BOB_BLIT_HEIGHT
BOB_IDLE_X		equ (-31<<BOB_SHIFT_CONVERT)
BOB_BALLOON_DX		equ 2<<BOB_SHIFT_CONVERT
BOB_CLOUD_DX		equ 12
BOB_MAX_BOBS		equ 4

BOB_TOTAL_SAVE		equ BOB_SAVE_SIZE*BOB_MAX_BOBS*2