{==============================================================================
    ____  _____ __  __ _     
   / ___||  ___|  \/  | |    
   \___ \| |_  | |\/| | |    
    ___) |  _| | |  | | |___ 
   |____/|_|   |_|  |_|_____|
  Simple Fast Multimedia Layer

 Pascal bindings that allow you to use SFML and other useful C libraries
 with Delphi.

 Included:
   - CSFML (https://github.com/SFML/CSFML)
   - pl_mpeg (https://github.com/phoboslab/pl_mpeg)
   - Nuklear (https://github.com/Immediate-Mode-UI/Nuklear)
   - physfs (https://github.com/icculus/physfs)
   - minizip (https://github.com/madler/zlib)
      
 Minimum Requirements:
   - Windows 10+ (64 bits)
   - Delphi Community Edition (Win64 platform only)
   
 Usage:
   You simply add CLibs to your uses section and everything will be linked in
   and ready for use. You will have direct access to all the aforementioned
   libraries.

 Copyright © 2021-2022 tinyBigGAMES™ LLC
 All Rights Reserved.

 Website: https://tinybiggames.com
 Email  : support@tinybiggames.com

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software in
    a product, an acknowledgment in the product documentation would be
    appreciated but is not required.
 2. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.

 3. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in
    the documentation and/or other materials provided with the
    distribution.

 4. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.

 5. All video, audio, graphics and other content accessed through the
    software in this distro is the property of the applicable content owner
    and may be protected by applicable copyright law. This License gives
    Customer no rights to such content, and Company disclaims any liability
    for misuse of content.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
============================================================================= }

{$IFNDEF WIN64}
  {$MESSAGE Error 'Unsupported platform'}
{$ENDIF}

{$Z4}
{$A8}

unit SFML;

interface

uses
  WinAPI.Windows;

const
  NK_INCLUDE_STANDARD_BOOL = 1;
  NK_INCLUDE_FIXED_TYPES = 1;
  NK_INCLUDE_STANDARD_IO = 1;
  NK_INCLUDE_STANDARD_VARARGS = 1;
  NK_INCLUDE_DEFAULT_ALLOCATOR = 1;
  NK_INCLUDE_FONT_BAKING = 1;
  NK_INCLUDE_DEFAULT_FONT = 1;
  NK_INCLUDE_SOFTWARE_FONT = 1;
  CSFML_VERSION_MAJOR = 2;
  CSFML_VERSION_MINOR = 5;
  CSFML_VERSION_PATCH = 1;
  NK_UNDEFINED = (-1.0);
  NK_UTF_INVALID = $FFFD;
  NK_UTF_SIZE = 4;
  NK_INPUT_MAX = 16;
  NK_MAX_NUMBER_BUFFER = 64;
  NK_SCROLLBAR_HIDING_TIMEOUT = 4.0;
  NK_TEXTEDIT_UNDOSTATECOUNT = 99;
  NK_TEXTEDIT_UNDOCHARCOUNT = 999;
  NK_MAX_LAYOUT_ROW_TEMPLATE_COLUMNS = 16;
  NK_CHART_MAX_SLOT = 4;
  NK_WINDOW_MAX_NAME = 64;
  NK_BUTTON_BEHAVIOR_STACK_SIZE = 8;
  NK_FONT_STACK_SIZE = 8;
  NK_STYLE_ITEM_STACK_SIZE = 16;
  NK_FLOAT_STACK_SIZE = 32;
  NK_VECTOR_STACK_SIZE = 16;
  NK_FLAGS_STACK_SIZE = 32;
  NK_COLOR_STACK_SIZE = 32;
  NK_PI = 3.141592654;
  NK_MAX_FLOAT_PRECISION = 2;
  PHYSFS_VER_MAJOR = 3;
  PHYSFS_VER_MINOR = 1;
  PHYSFS_VER_PATCH = 0;
  PLM_PACKET_INVALID_TS = -1;
  PLM_AUDIO_SAMPLES_PER_FRAME = 1152;
  PLM_BUFFER_DEFAULT_SIZE = (128*1024);
  Z_BZIP2ED = 12;
  ZIP_OK = (0);
  ZIP_EOF = (0);
  ZIP_ERRNO = (-1);
  ZIP_PARAMERROR = (-102);
  ZIP_BADZIPFILE = (-103);
  ZIP_INTERNALERROR = (-104);
  Z_DEFLATED = 8;
  Z_DEFAULT_STRATEGY = 0;
  APPEND_STATUS_CREATE = (0);
  APPEND_STATUS_CREATEAFTER = (1);
  APPEND_STATUS_ADDINZIP = (2);
  sfFalse = 0;
  sfTrue = 1;
  sfStopped = 0;
  sfPaused = 1;
  sfPlaying = 2;
  sfJoystickCount = 8;
  sfJoystickButtonCount = 32;
  sfJoystickAxisCount = 8;
  sfJoystickX = 0;
  sfJoystickY = 1;
  sfJoystickZ = 2;
  sfJoystickR = 3;
  sfJoystickU = 4;
  sfJoystickV = 5;
  sfJoystickPovX = 6;
  sfJoystickPovY = 7;
  sfKeyUnknown = -1;
  sfKeyA = 0;
  sfKeyB = 1;
  sfKeyC = 2;
  sfKeyD = 3;
  sfKeyE = 4;
  sfKeyF = 5;
  sfKeyG = 6;
  sfKeyH = 7;
  sfKeyI = 8;
  sfKeyJ = 9;
  sfKeyK = 10;
  sfKeyL = 11;
  sfKeyM = 12;
  sfKeyN = 13;
  sfKeyO = 14;
  sfKeyP = 15;
  sfKeyQ = 16;
  sfKeyR = 17;
  sfKeyS = 18;
  sfKeyT = 19;
  sfKeyU = 20;
  sfKeyV = 21;
  sfKeyW = 22;
  sfKeyX = 23;
  sfKeyY = 24;
  sfKeyZ = 25;
  sfKeyNum0 = 26;
  sfKeyNum1 = 27;
  sfKeyNum2 = 28;
  sfKeyNum3 = 29;
  sfKeyNum4 = 30;
  sfKeyNum5 = 31;
  sfKeyNum6 = 32;
  sfKeyNum7 = 33;
  sfKeyNum8 = 34;
  sfKeyNum9 = 35;
  sfKeyEscape = 36;
  sfKeyLControl = 37;
  sfKeyLShift = 38;
  sfKeyLAlt = 39;
  sfKeyLSystem = 40;
  sfKeyRControl = 41;
  sfKeyRShift = 42;
  sfKeyRAlt = 43;
  sfKeyRSystem = 44;
  sfKeyMenu = 45;
  sfKeyLBracket = 46;
  sfKeyRBracket = 47;
  sfKeySemicolon = 48;
  sfKeyComma = 49;
  sfKeyPeriod = 50;
  sfKeyQuote = 51;
  sfKeySlash = 52;
  sfKeyTilde = 54;
  sfKeyEqual = 55;
  sfKeyHyphen = 56;
  sfKeySpace = 57;
  sfKeyEnter = 58;
  sfKeyBackspace = 59;
  sfKeyTab = 60;
  sfKeyPageUp = 61;
  sfKeyPageDown = 62;
  sfKeyEnd = 63;
  sfKeyHome = 64;
  sfKeyInsert = 65;
  sfKeyDelete = 66;
  sfKeyAdd = 67;
  sfKeySubtract = 68;
  sfKeyMultiply = 69;
  sfKeyDivide = 70;
  sfKeyLeft = 71;
  sfKeyRight = 72;
  sfKeyUp = 73;
  sfKeyDown = 74;
  sfKeyNumpad0 = 75;
  sfKeyNumpad1 = 76;
  sfKeyNumpad2 = 77;
  sfKeyNumpad3 = 78;
  sfKeyNumpad4 = 79;
  sfKeyNumpad5 = 80;
  sfKeyNumpad6 = 81;
  sfKeyNumpad7 = 82;
  sfKeyNumpad8 = 83;
  sfKeyNumpad9 = 84;
  sfKeyF1 = 85;
  sfKeyF2 = 86;
  sfKeyF3 = 87;
  sfKeyF4 = 88;
  sfKeyF5 = 89;
  sfKeyF6 = 90;
  sfKeyF7 = 91;
  sfKeyF8 = 92;
  sfKeyF9 = 93;
  sfKeyF10 = 94;
  sfKeyF11 = 95;
  sfKeyF12 = 96;
  sfKeyF13 = 97;
  sfKeyF14 = 98;
  sfKeyF15 = 99;
  sfKeyPause = 100;
  sfKeyCount = 101;
  sfKeyDash = 56;
  sfKeyBack = 59;
  sfKeyBackSlash = 53;
  sfKeyReturn = 58;
  sfMouseLeft = 0;
  sfMouseRight = 1;
  sfMouseMiddle = 2;
  sfMouseXButton1 = 3;
  sfMouseXButton2 = 4;
  sfMouseButtonCount = 5;
  sfMouseVerticalWheel = 0;
  sfMouseHorizontalWheel = 1;
  sfSensorAccelerometer = 0;
  sfSensorGyroscope = 1;
  sfSensorMagnetometer = 2;
  sfSensorGravity = 3;
  sfSensorUserAcceleration = 4;
  sfSensorOrientation = 5;
  sfSensorCount = 6;
  sfEvtClosed = 0;
  sfEvtResized = 1;
  sfEvtLostFocus = 2;
  sfEvtGainedFocus = 3;
  sfEvtTextEntered = 4;
  sfEvtKeyPressed = 5;
  sfEvtKeyReleased = 6;
  sfEvtMouseWheelMoved = 7;
  sfEvtMouseWheelScrolled = 8;
  sfEvtMouseButtonPressed = 9;
  sfEvtMouseButtonReleased = 10;
  sfEvtMouseMoved = 11;
  sfEvtMouseEntered = 12;
  sfEvtMouseLeft = 13;
  sfEvtJoystickButtonPressed = 14;
  sfEvtJoystickButtonReleased = 15;
  sfEvtJoystickMoved = 16;
  sfEvtJoystickConnected = 17;
  sfEvtJoystickDisconnected = 18;
  sfEvtTouchBegan = 19;
  sfEvtTouchMoved = 20;
  sfEvtTouchEnded = 21;
  sfEvtSensorChanged = 22;
  sfEvtCount = 23;
  sfNone = 0;
  sfTitlebar = 1;
  sfResize = 2;
  sfClose = 4;
  sfFullscreen = 8;
  sfDefaultStyle = 7;
  sfContextDefault = 0;
  sfContextCore = 1;
  sfContextDebug = 4;
  sfCursorArrow = 0;
  sfCursorArrowWait = 1;
  sfCursorWait = 2;
  sfCursorText = 3;
  sfCursorHand = 4;
  sfCursorSizeHorizontal = 5;
  sfCursorSizeVertical = 6;
  sfCursorSizeTopLeftBottomRight = 7;
  sfCursorSizeBottomLeftTopRight = 8;
  sfCursorSizeAll = 9;
  sfCursorCross = 10;
  sfCursorHelp = 11;
  sfCursorNotAllowed = 12;
  sfBlendFactorZero = 0;
  sfBlendFactorOne = 1;
  sfBlendFactorSrcColor = 2;
  sfBlendFactorOneMinusSrcColor = 3;
  sfBlendFactorDstColor = 4;
  sfBlendFactorOneMinusDstColor = 5;
  sfBlendFactorSrcAlpha = 6;
  sfBlendFactorOneMinusSrcAlpha = 7;
  sfBlendFactorDstAlpha = 8;
  sfBlendFactorOneMinusDstAlpha = 9;
  sfBlendEquationAdd = 0;
  sfBlendEquationSubtract = 1;
  sfBlendEquationReverseSubtract = 2;
  sfPoints = 0;
  sfLines = 1;
  sfLineStrip = 2;
  sfTriangles = 3;
  sfTriangleStrip = 4;
  sfTriangleFan = 5;
  sfQuads = 6;
  sfLinesStrip = 2;
  sfTrianglesStrip = 4;
  sfTrianglesFan = 5;
  sfTextRegular = 0;
  sfTextBold = 1;
  sfTextItalic = 2;
  sfTextUnderlined = 4;
  sfTextStrikeThrough = 8;
  sfVertexBufferStream = 0;
  sfVertexBufferDynamic = 1;
  sfVertexBufferStatic = 2;
  sfFtpBinary = 0;
  sfFtpAscii = 1;
  sfFtpEbcdic = 2;
  sfFtpRestartMarkerReply = 110;
  sfFtpServiceReadySoon = 120;
  sfFtpDataConnectionAlreadyOpened = 125;
  sfFtpOpeningDataConnection = 150;
  sfFtpOk = 200;
  sfFtpPointlessCommand = 202;
  sfFtpSystemStatus = 211;
  sfFtpDirectoryStatus = 212;
  sfFtpFileStatus = 213;
  sfFtpHelpMessage = 214;
  sfFtpSystemType = 215;
  sfFtpServiceReady = 220;
  sfFtpClosingConnection = 221;
  sfFtpDataConnectionOpened = 225;
  sfFtpClosingDataConnection = 226;
  sfFtpEnteringPassiveMode = 227;
  sfFtpLoggedIn = 230;
  sfFtpFileActionOk = 250;
  sfFtpDirectoryOk = 257;
  sfFtpNeedPassword = 331;
  sfFtpNeedAccountToLogIn = 332;
  sfFtpNeedInformation = 350;
  sfFtpServiceUnavailable = 421;
  sfFtpDataConnectionUnavailable = 425;
  sfFtpTransferAborted = 426;
  sfFtpFileActionAborted = 450;
  sfFtpLocalError = 451;
  sfFtpInsufficientStorageSpace = 452;
  sfFtpCommandUnknown = 500;
  sfFtpParametersUnknown = 501;
  sfFtpCommandNotImplemented = 502;
  sfFtpBadCommandSequence = 503;
  sfFtpParameterNotImplemented = 504;
  sfFtpNotLoggedIn = 530;
  sfFtpNeedAccountToStore = 532;
  sfFtpFileUnavailable = 550;
  sfFtpPageTypeUnknown = 551;
  sfFtpNotEnoughMemory = 552;
  sfFtpFilenameNotAllowed = 553;
  sfFtpInvalidResponse = 1000;
  sfFtpConnectionFailed = 1001;
  sfFtpConnectionClosed = 1002;
  sfFtpInvalidFile = 1003;
  sfHttpGet = 0;
  sfHttpPost = 1;
  sfHttpHead = 2;
  sfHttpPut = 3;
  sfHttpDelete = 4;
  sfHttpOk = 200;
  sfHttpCreated = 201;
  sfHttpAccepted = 202;
  sfHttpNoContent = 204;
  sfHttpResetContent = 205;
  sfHttpPartialContent = 206;
  sfHttpMultipleChoices = 300;
  sfHttpMovedPermanently = 301;
  sfHttpMovedTemporarily = 302;
  sfHttpNotModified = 304;
  sfHttpBadRequest = 400;
  sfHttpUnauthorized = 401;
  sfHttpForbidden = 403;
  sfHttpNotFound = 404;
  sfHttpRangeNotSatisfiable = 407;
  sfHttpInternalServerError = 500;
  sfHttpNotImplemented = 501;
  sfHttpBadGateway = 502;
  sfHttpServiceNotAvailable = 503;
  sfHttpGatewayTimeout = 504;
  sfHttpVersionNotSupported = 505;
  sfHttpInvalidResponse = 1000;
  sfHttpConnectionFailed = 1001;
  sfSocketDone = 0;
  sfSocketNotReady = 1;
  sfSocketPartial = 2;
  sfSocketDisconnected = 3;
  sfSocketError = 4;
  nk_false = 0;
  nk_true = 1;
  NK_UP = 0;
  NK_RIGHT = 1;
  NK_DOWN = 2;
  NK_LEFT = 3;
  NK_BUTTON_DEFAULT = 0;
  NK_BUTTON_REPEATER = 1;
  NK_FIXED = 0;
  NK_MODIFIABLE = 1;
  NK_VERTICAL = 0;
  NK_HORIZONTAL = 1;
  NK_MINIMIZED = 0;
  NK_MAXIMIZED = 1;
  NK_HIDDEN = 0;
  NK_SHOWN = 1;
  NK_CHART_LINES = 0;
  NK_CHART_COLUMN = 1;
  NK_CHART_MAX = 2;
  NK_CHART_HOVERING = 1;
  NK_CHART_CLICKED = 2;
  NK_RGB = 0;
  NK_RGBA = 1;
  NK_POPUP_STATIC = 0;
  NK_POPUP_DYNAMIC = 1;
  NK_DYNAMIC = 0;
  NK_STATIC = 1;
  NK_TREE_NODE = 0;
  NK_TREE_TAB = 1;
  NK_SYMBOL_NONE = 0;
  NK_SYMBOL_X = 1;
  NK_SYMBOL_UNDERSCORE = 2;
  NK_SYMBOL_CIRCLE_SOLID = 3;
  NK_SYMBOL_CIRCLE_OUTLINE = 4;
  NK_SYMBOL_RECT_SOLID = 5;
  NK_SYMBOL_RECT_OUTLINE = 6;
  NK_SYMBOL_TRIANGLE_UP = 7;
  NK_SYMBOL_TRIANGLE_DOWN = 8;
  NK_SYMBOL_TRIANGLE_LEFT = 9;
  NK_SYMBOL_TRIANGLE_RIGHT = 10;
  NK_SYMBOL_PLUS = 11;
  NK_SYMBOL_MINUS = 12;
  NK_SYMBOL_MAX = 13;
  NK_KEY_NONE = 0;
  NK_KEY_SHIFT = 1;
  NK_KEY_CTRL = 2;
  NK_KEY_DEL = 3;
  NK_KEY_ENTER = 4;
  NK_KEY_TAB = 5;
  NK_KEY_BACKSPACE = 6;
  NK_KEY_COPY = 7;
  NK_KEY_CUT = 8;
  NK_KEY_PASTE = 9;
  NK_KEY_UP = 10;
  NK_KEY_DOWN = 11;
  NK_KEY_LEFT = 12;
  NK_KEY_RIGHT = 13;
  NK_KEY_TEXT_INSERT_MODE = 14;
  NK_KEY_TEXT_REPLACE_MODE = 15;
  NK_KEY_TEXT_RESET_MODE = 16;
  NK_KEY_TEXT_LINE_START = 17;
  NK_KEY_TEXT_LINE_END = 18;
  NK_KEY_TEXT_START = 19;
  NK_KEY_TEXT_END = 20;
  NK_KEY_TEXT_UNDO = 21;
  NK_KEY_TEXT_REDO = 22;
  NK_KEY_TEXT_SELECT_ALL = 23;
  NK_KEY_TEXT_WORD_LEFT = 24;
  NK_KEY_TEXT_WORD_RIGHT = 25;
  NK_KEY_SCROLL_START = 26;
  NK_KEY_SCROLL_END = 27;
  NK_KEY_SCROLL_DOWN = 28;
  NK_KEY_SCROLL_UP = 29;
  NK_KEY_MAX = 30;
  NK_BUTTON_LEFT = 0;
  NK_BUTTON_MIDDLE = 1;
  NK_BUTTON_RIGHT = 2;
  NK_BUTTON_DOUBLE = 3;
  NK_BUTTON_MAX = 4;
  NK_ANTI_ALIASING_OFF = 0;
  NK_ANTI_ALIASING_ON = 1;
  NK_CONVERT_SUCCESS = 0;
  NK_CONVERT_INVALID_PARAM = 1;
  NK_CONVERT_COMMAND_BUFFER_FULL = 2;
  NK_CONVERT_VERTEX_BUFFER_FULL = 4;
  NK_CONVERT_ELEMENT_BUFFER_FULL = 8;
  NK_WINDOW_BORDER = 1;
  NK_WINDOW_MOVABLE = 2;
  NK_WINDOW_SCALABLE = 4;
  NK_WINDOW_CLOSABLE = 8;
  NK_WINDOW_MINIMIZABLE = 16;
  NK_WINDOW_NO_SCROLLBAR = 32;
  NK_WINDOW_TITLE = 64;
  NK_WINDOW_SCROLL_AUTO_HIDE = 128;
  NK_WINDOW_BACKGROUND = 256;
  NK_WINDOW_SCALE_LEFT = 512;
  NK_WINDOW_NO_INPUT = 1024;
  NK_WIDGET_INVALID = 0;
  NK_WIDGET_VALID = 1;
  NK_WIDGET_ROM = 2;
  NK_WIDGET_STATE_MODIFIED = 2;
  NK_WIDGET_STATE_INACTIVE = 4;
  NK_WIDGET_STATE_ENTERED = 8;
  NK_WIDGET_STATE_HOVER = 16;
  NK_WIDGET_STATE_ACTIVED = 32;
  NK_WIDGET_STATE_LEFT = 64;
  NK_WIDGET_STATE_HOVERED = 18;
  NK_WIDGET_STATE_ACTIVE = 34;
  NK_TEXT_ALIGN_LEFT = 1;
  NK_TEXT_ALIGN_CENTERED = 2;
  NK_TEXT_ALIGN_RIGHT = 4;
  NK_TEXT_ALIGN_TOP = 8;
  NK_TEXT_ALIGN_MIDDLE = 16;
  NK_TEXT_ALIGN_BOTTOM = 32;
  NK_TEXT_LEFT = 17;
  NK_TEXT_CENTERED = 18;
  NK_TEXT_RIGHT = 20;
  NK_EDIT_DEFAULT = 0;
  NK_EDIT_READ_ONLY = 1;
  NK_EDIT_AUTO_SELECT = 2;
  NK_EDIT_SIG_ENTER = 4;
  NK_EDIT_ALLOW_TAB = 8;
  NK_EDIT_NO_CURSOR = 16;
  NK_EDIT_SELECTABLE = 32;
  NK_EDIT_CLIPBOARD = 64;
  NK_EDIT_CTRL_ENTER_NEWLINE = 128;
  NK_EDIT_NO_HORIZONTAL_SCROLL = 256;
  NK_EDIT_ALWAYS_INSERT_MODE = 512;
  NK_EDIT_MULTILINE = 1024;
  NK_EDIT_GOTO_END_ON_ACTIVATE = 2048;
  NK_EDIT_SIMPLE = 512;
  NK_EDIT_FIELD = 608;
  NK_EDIT_BOX = 1640;
  NK_EDIT_EDITOR = 1128;
  NK_EDIT_ACTIVE = 1;
  NK_EDIT_INACTIVE = 2;
  NK_EDIT_ACTIVATED = 4;
  NK_EDIT_DEACTIVATED = 8;
  NK_EDIT_COMMITED = 16;
  NK_COLOR_TEXT = 0;
  NK_COLOR_WINDOW = 1;
  NK_COLOR_HEADER = 2;
  NK_COLOR_BORDER = 3;
  NK_COLOR_BUTTON = 4;
  NK_COLOR_BUTTON_HOVER = 5;
  NK_COLOR_BUTTON_ACTIVE = 6;
  NK_COLOR_TOGGLE = 7;
  NK_COLOR_TOGGLE_HOVER = 8;
  NK_COLOR_TOGGLE_CURSOR = 9;
  NK_COLOR_SELECT = 10;
  NK_COLOR_SELECT_ACTIVE = 11;
  NK_COLOR_SLIDER = 12;
  NK_COLOR_SLIDER_CURSOR = 13;
  NK_COLOR_SLIDER_CURSOR_HOVER = 14;
  NK_COLOR_SLIDER_CURSOR_ACTIVE = 15;
  NK_COLOR_PROPERTY = 16;
  NK_COLOR_EDIT = 17;
  NK_COLOR_EDIT_CURSOR = 18;
  NK_COLOR_COMBO = 19;
  NK_COLOR_CHART = 20;
  NK_COLOR_CHART_COLOR = 21;
  NK_COLOR_CHART_COLOR_HIGHLIGHT = 22;
  NK_COLOR_SCROLLBAR = 23;
  NK_COLOR_SCROLLBAR_CURSOR = 24;
  NK_COLOR_SCROLLBAR_CURSOR_HOVER = 25;
  NK_COLOR_SCROLLBAR_CURSOR_ACTIVE = 26;
  NK_COLOR_TAB_HEADER = 27;
  NK_COLOR_COUNT = 28;
  NK_CURSOR_ARROW = 0;
  NK_CURSOR_TEXT = 1;
  NK_CURSOR_MOVE = 2;
  NK_CURSOR_RESIZE_VERTICAL = 3;
  NK_CURSOR_RESIZE_HORIZONTAL = 4;
  NK_CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT = 5;
  NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT = 6;
  NK_CURSOR_COUNT = 7;
  NK_COORD_UV = 0;
  NK_COORD_PIXEL = 1;
  NK_FONT_ATLAS_ALPHA8 = 0;
  NK_FONT_ATLAS_RGBA32 = 1;
  NK_BUFFER_FIXED = 0;
  NK_BUFFER_DYNAMIC = 1;
  NK_BUFFER_FRONT = 0;
  NK_BUFFER_BACK = 1;
  NK_BUFFER_MAX = 2;
  NK_TEXT_EDIT_SINGLE_LINE = 0;
  NK_TEXT_EDIT_MULTI_LINE = 1;
  NK_TEXT_EDIT_MODE_VIEW = 0;
  NK_TEXT_EDIT_MODE_INSERT = 1;
  NK_TEXT_EDIT_MODE_REPLACE = 2;
  _NK_COMMAND_NOP = 0;
  _NK_COMMAND_SCISSOR = 1;
  _NK_COMMAND_LINE = 2;
  _NK_COMMAND_CURVE = 3;
  _NK_COMMAND_RECT = 4;
  _NK_COMMAND_RECT_FILLED = 5;
  _NK_COMMAND_RECT_MULTI_COLOR = 6;
  _NK_COMMAND_CIRCLE = 7;
  _NK_COMMAND_CIRCLE_FILLED = 8;
  _NK_COMMAND_ARC = 9;
  _NK_COMMAND_ARC_FILLED = 10;
  _NK_COMMAND_TRIANGLE = 11;
  _NK_COMMAND_TRIANGLE_FILLED = 12;
  _NK_COMMAND_POLYGON = 13;
  _NK_COMMAND_POLYGON_FILLED = 14;
  _NK_COMMAND_POLYLINE = 15;
  _NK_COMMAND_TEXT = 16;
  _NK_COMMAND_IMAGE = 17;
  _NK_COMMAND_CUSTOM = 18;
  NK_CLIPPING_OFF = 0;
  NK_CLIPPING_ON = 1;
  NK_STYLE_ITEM_COLOR = 0;
  NK_STYLE_ITEM_IMAGE = 1;
  NK_STYLE_ITEM_NINE_SLICE = 2;
  NK_HEADER_LEFT = 0;
  NK_HEADER_RIGHT = 1;
  NK_PANEL_NONE = 0;
  NK_PANEL_WINDOW = 1;
  NK_PANEL_GROUP = 2;
  NK_PANEL_POPUP = 4;
  NK_PANEL_CONTEXTUAL = 16;
  NK_PANEL_COMBO = 32;
  NK_PANEL_MENU = 64;
  NK_PANEL_TOOLTIP = 128;
  NK_PANEL_SET_NONBLOCK = 240;
  NK_PANEL_SET_POPUP = 244;
  NK_PANEL_SET_SUB = 246;
  NK_LAYOUT_DYNAMIC_FIXED = 0;
  NK_LAYOUT_DYNAMIC_ROW = 1;
  NK_LAYOUT_DYNAMIC_FREE = 2;
  NK_LAYOUT_DYNAMIC = 3;
  NK_LAYOUT_STATIC_FIXED = 4;
  NK_LAYOUT_STATIC_ROW = 5;
  NK_LAYOUT_STATIC_FREE = 6;
  NK_LAYOUT_STATIC = 7;
  NK_LAYOUT_TEMPLATE = 8;
  NK_LAYOUT_COUNT = 9;
  NK_WINDOW_PRIVATE = 2048;
  NK_WINDOW_DYNAMIC = 2048;
  NK_WINDOW_ROM = 4096;
  NK_WINDOW_NOT_INTERACTIVE = 5120;
  NK_WINDOW_HIDDEN = 8192;
  NK_WINDOW_CLOSED = 16384;
  NK_WINDOW_MINIMIZED = 32768;
  NK_WINDOW_REMOVE_ROM = 65536;
  PHYSFS_ENUM_ERROR = -1;
  PHYSFS_ENUM_STOP = 0;
  PHYSFS_ENUM_OK = 1;
  PHYSFS_FILETYPE_REGULAR = 0;
  PHYSFS_FILETYPE_DIRECTORY = 1;
  PHYSFS_FILETYPE_SYMLINK = 2;
  PHYSFS_FILETYPE_OTHER = 3;
  PHYSFS_ERR_OK = 0;
  PHYSFS_ERR_OTHER_ERROR = 1;
  PHYSFS_ERR_OUT_OF_MEMORY = 2;
  PHYSFS_ERR_NOT_INITIALIZED = 3;
  PHYSFS_ERR_IS_INITIALIZED = 4;
  PHYSFS_ERR_ARGV0_IS_NULL = 5;
  PHYSFS_ERR_UNSUPPORTED = 6;
  PHYSFS_ERR_PAST_EOF = 7;
  PHYSFS_ERR_FILES_STILL_OPEN = 8;
  PHYSFS_ERR_INVALID_ARGUMENT = 9;
  PHYSFS_ERR_NOT_MOUNTED = 10;
  PHYSFS_ERR_NOT_FOUND = 11;
  PHYSFS_ERR_SYMLINK_FORBIDDEN = 12;
  PHYSFS_ERR_NO_WRITE_DIR = 13;
  PHYSFS_ERR_OPEN_FOR_READING = 14;
  PHYSFS_ERR_OPEN_FOR_WRITING = 15;
  PHYSFS_ERR_NOT_A_FILE = 16;
  PHYSFS_ERR_READ_ONLY = 17;
  PHYSFS_ERR_CORRUPT = 18;
  PHYSFS_ERR_SYMLINK_LOOP = 19;
  PHYSFS_ERR_IO = 20;
  PHYSFS_ERR_PERMISSION = 21;
  PHYSFS_ERR_NO_SPACE = 22;
  PHYSFS_ERR_BAD_FILENAME = 23;
  PHYSFS_ERR_BUSY = 24;
  PHYSFS_ERR_DIR_NOT_EMPTY = 25;
  PHYSFS_ERR_OS_ERROR = 26;
  PHYSFS_ERR_DUPLICATE = 27;
  PHYSFS_ERR_BAD_PASSWORD = 28;
  PHYSFS_ERR_APP_CALLBACK = 29;

type

  { sfSoundStatus  }
  sfSoundStatus = Integer;

  { PsfSoundStatus  }
  PsfSoundStatus = ^sfSoundStatus;

  { _anonymous_type_1  }
  _anonymous_type_1 = Integer;

  { P_anonymous_type_1  }
  P_anonymous_type_1 = ^_anonymous_type_1;

  { sfJoystickAxis  }
  sfJoystickAxis = Integer;

  { PsfJoystickAxis  }
  PsfJoystickAxis = ^sfJoystickAxis;

  { sfKeyCode  }
  sfKeyCode = Integer;

  { PsfKeyCode  }
  PsfKeyCode = ^sfKeyCode;

  { sfMouseButton  }
  sfMouseButton = Integer;

  { PsfMouseButton  }
  PsfMouseButton = ^sfMouseButton;

  { sfMouseWheel  }
  sfMouseWheel = Integer;

  { PsfMouseWheel  }
  PsfMouseWheel = ^sfMouseWheel;

  { sfSensorType  }
  sfSensorType = Integer;

  { PsfSensorType  }
  PsfSensorType = ^sfSensorType;

  { sfEventType  }
  sfEventType = Integer;

  { PsfEventType  }
  PsfEventType = ^sfEventType;

  { sfWindowStyle  }
  sfWindowStyle = Integer;

  { PsfWindowStyle  }
  PsfWindowStyle = ^sfWindowStyle;

  { sfContextAttribute  }
  sfContextAttribute = Integer;

  { PsfContextAttribute  }
  PsfContextAttribute = ^sfContextAttribute;

  { sfCursorType  }
  sfCursorType = Integer;

  { PsfCursorType  }
  PsfCursorType = ^sfCursorType;

  { sfBlendFactor  }
  sfBlendFactor = Integer;

  { PsfBlendFactor  }
  PsfBlendFactor = ^sfBlendFactor;

  { sfBlendEquation  }
  sfBlendEquation = Integer;

  { PsfBlendEquation  }
  PsfBlendEquation = ^sfBlendEquation;

  { sfPrimitiveType  }
  sfPrimitiveType = Integer;

  { PsfPrimitiveType  }
  PsfPrimitiveType = ^sfPrimitiveType;

  { sfTextStyle  }
  sfTextStyle = Integer;

  { PsfTextStyle  }
  PsfTextStyle = ^sfTextStyle;

  { sfVertexBufferUsage  }
  sfVertexBufferUsage = Integer;

  { PsfVertexBufferUsage  }
  PsfVertexBufferUsage = ^sfVertexBufferUsage;

  { sfFtpTransferMode  }
  sfFtpTransferMode = Integer;

  { PsfFtpTransferMode  }
  PsfFtpTransferMode = ^sfFtpTransferMode;

  { sfFtpStatus  }
  sfFtpStatus = Integer;

  { PsfFtpStatus  }
  PsfFtpStatus = ^sfFtpStatus;

  { sfHttpMethod  }
  sfHttpMethod = Integer;

  { PsfHttpMethod  }
  PsfHttpMethod = ^sfHttpMethod;

  { sfHttpStatus  }
  sfHttpStatus = Integer;

  { PsfHttpStatus  }
  PsfHttpStatus = ^sfHttpStatus;

  { sfSocketStatus  }
  sfSocketStatus = Integer;

  { PsfSocketStatus  }
  PsfSocketStatus = ^sfSocketStatus;

  { _anonymous_type_2  }
  _anonymous_type_2 = Integer;

  { P_anonymous_type_2  }
  P_anonymous_type_2 = ^_anonymous_type_2;

  { nk_heading  }
  nk_heading = Integer;

  { Pnk_heading  }
  Pnk_heading = ^nk_heading;

  { nk_button_behavior  }
  nk_button_behavior = Integer;

  { Pnk_button_behavior  }
  Pnk_button_behavior = ^nk_button_behavior;

  { nk_modify  }
  nk_modify = Integer;

  { Pnk_modify  }
  Pnk_modify = ^nk_modify;

  { nk_orientation  }
  nk_orientation = Integer;

  { Pnk_orientation  }
  Pnk_orientation = ^nk_orientation;

  { nk_collapse_states  }
  nk_collapse_states = Integer;

  { Pnk_collapse_states  }
  Pnk_collapse_states = ^nk_collapse_states;

  { nk_show_states  }
  nk_show_states = Integer;

  { Pnk_show_states  }
  Pnk_show_states = ^nk_show_states;

  { nk_chart_type  }
  nk_chart_type = Integer;

  { Pnk_chart_type  }
  Pnk_chart_type = ^nk_chart_type;

  { nk_chart_event  }
  nk_chart_event = Integer;

  { Pnk_chart_event  }
  Pnk_chart_event = ^nk_chart_event;

  { nk_color_format  }
  nk_color_format = Integer;

  { Pnk_color_format  }
  Pnk_color_format = ^nk_color_format;

  { nk_popup_type  }
  nk_popup_type = Integer;

  { Pnk_popup_type  }
  Pnk_popup_type = ^nk_popup_type;

  { nk_layout_format  }
  nk_layout_format = Integer;

  { Pnk_layout_format  }
  Pnk_layout_format = ^nk_layout_format;

  { nk_tree_type  }
  nk_tree_type = Integer;

  { Pnk_tree_type  }
  Pnk_tree_type = ^nk_tree_type;

  { nk_symbol_type  }
  nk_symbol_type = Integer;

  { Pnk_symbol_type  }
  Pnk_symbol_type = ^nk_symbol_type;

  { nk_keys  }
  nk_keys = Integer;

  { Pnk_keys  }
  Pnk_keys = ^nk_keys;

  { nk_buttons  }
  nk_buttons = Integer;

  { Pnk_buttons  }
  Pnk_buttons = ^nk_buttons;

  { nk_anti_aliasing  }
  nk_anti_aliasing = Integer;

  { Pnk_anti_aliasing  }
  Pnk_anti_aliasing = ^nk_anti_aliasing;

  { nk_convert_result  }
  nk_convert_result = Integer;

  { Pnk_convert_result  }
  Pnk_convert_result = ^nk_convert_result;

  { nk_panel_flags  }
  nk_panel_flags = Integer;

  { Pnk_panel_flags  }
  Pnk_panel_flags = ^nk_panel_flags;

  { nk_widget_layout_states  }
  nk_widget_layout_states = Integer;

  { Pnk_widget_layout_states  }
  Pnk_widget_layout_states = ^nk_widget_layout_states;

  { nk_widget_states  }
  nk_widget_states = Integer;

  { Pnk_widget_states  }
  Pnk_widget_states = ^nk_widget_states;

  { nk_text_align  }
  nk_text_align = Integer;

  { Pnk_text_align  }
  Pnk_text_align = ^nk_text_align;

  { nk_text_alignment  }
  nk_text_alignment = Integer;

  { Pnk_text_alignment  }
  Pnk_text_alignment = ^nk_text_alignment;

  { nk_edit_flags  }
  nk_edit_flags = Integer;

  { Pnk_edit_flags  }
  Pnk_edit_flags = ^nk_edit_flags;

  { nk_edit_types  }
  nk_edit_types = Integer;

  { Pnk_edit_types  }
  Pnk_edit_types = ^nk_edit_types;

  { nk_edit_events  }
  nk_edit_events = Integer;

  { Pnk_edit_events  }
  Pnk_edit_events = ^nk_edit_events;

  { nk_style_colors  }
  nk_style_colors = Integer;

  { Pnk_style_colors  }
  Pnk_style_colors = ^nk_style_colors;

  { nk_style_cursor  }
  nk_style_cursor = Integer;

  { Pnk_style_cursor  }
  Pnk_style_cursor = ^nk_style_cursor;

  { nk_font_coord_type  }
  nk_font_coord_type = Integer;

  { Pnk_font_coord_type  }
  Pnk_font_coord_type = ^nk_font_coord_type;

  { nk_font_atlas_format  }
  nk_font_atlas_format = Integer;

  { Pnk_font_atlas_format  }
  Pnk_font_atlas_format = ^nk_font_atlas_format;

  { nk_allocation_type  }
  nk_allocation_type = Integer;

  { Pnk_allocation_type  }
  Pnk_allocation_type = ^nk_allocation_type;

  { nk_buffer_allocation_type  }
  nk_buffer_allocation_type = Integer;

  { Pnk_buffer_allocation_type  }
  Pnk_buffer_allocation_type = ^nk_buffer_allocation_type;

  { nk_text_edit_type  }
  nk_text_edit_type = Integer;

  { Pnk_text_edit_type  }
  Pnk_text_edit_type = ^nk_text_edit_type;

  { nk_text_edit_mode  }
  nk_text_edit_mode = Integer;

  { Pnk_text_edit_mode  }
  Pnk_text_edit_mode = ^nk_text_edit_mode;

  { nk_command_type  }
  nk_command_type = Integer;

  { Pnk_command_type  }
  Pnk_command_type = ^nk_command_type;

  { nk_command_clipping  }
  nk_command_clipping = Integer;

  { Pnk_command_clipping  }
  Pnk_command_clipping = ^nk_command_clipping;

  { nk_style_item_type  }
  nk_style_item_type = Integer;

  { Pnk_style_item_type  }
  Pnk_style_item_type = ^nk_style_item_type;

  { nk_style_header_align  }
  nk_style_header_align = Integer;

  { Pnk_style_header_align  }
  Pnk_style_header_align = ^nk_style_header_align;

  { nk_panel_type  }
  nk_panel_type = Integer;

  { Pnk_panel_type  }
  Pnk_panel_type = ^nk_panel_type;

  { nk_panel_set  }
  nk_panel_set = Integer;

  { Pnk_panel_set  }
  Pnk_panel_set = ^nk_panel_set;

  { nk_panel_row_layout_type  }
  nk_panel_row_layout_type = Integer;

  { Pnk_panel_row_layout_type  }
  Pnk_panel_row_layout_type = ^nk_panel_row_layout_type;

  { nk_window_flags  }
  nk_window_flags = Integer;

  { Pnk_window_flags  }
  Pnk_window_flags = ^nk_window_flags;

  { PHYSFS_EnumerateCallbackResult  }
  PHYSFS_EnumerateCallbackResult = Integer;

  { PPHYSFS_EnumerateCallbackResult  }
  PPHYSFS_EnumerateCallbackResult = ^PHYSFS_EnumerateCallbackResult;

  { PHYSFS_FileType  }
  PHYSFS_FileType = Integer;

  { PPHYSFS_FileType  }
  PPHYSFS_FileType = ^PHYSFS_FileType;

  { PHYSFS_ErrorCode  }
  PHYSFS_ErrorCode = Integer;

  { PPHYSFS_ErrorCode  }
  PPHYSFS_ErrorCode = ^PHYSFS_ErrorCode;
  // Forward declarations

  { PPUTF8Char  }
  PPUTF8Char = ^PUTF8Char;

  { PUInt8  }
  PUInt8 = ^UInt8;

  { PWideChar  }
  PWideChar = ^WideChar;

  { PPointer  }
  PPointer = ^Pointer;

  { PNativeUInt  }
  PNativeUInt = ^NativeUInt;

  { PHWND__  }
  PHWND__ = Pointer;

  { PPHWND__  }
  PPHWND__ = ^PHWND__;

  { Pnk_draw_command  }
  Pnk_draw_command = Pointer;

  { PPnk_draw_command  }
  PPnk_draw_command = ^Pnk_draw_command;

  { Pnk_draw_list  }
  Pnk_draw_list = Pointer;

  { PPnk_draw_list  }
  PPnk_draw_list = ^Pnk_draw_list;

  { Pnk_draw_vertex_layout_element  }
  Pnk_draw_vertex_layout_element = Pointer;

  { PPnk_draw_vertex_layout_element  }
  PPnk_draw_vertex_layout_element = ^Pnk_draw_vertex_layout_element;

  { Pnk_style_slide  }
  Pnk_style_slide = Pointer;

  { PPnk_style_slide  }
  PPnk_style_slide = ^Pnk_style_slide;

  { PsfTime  }
  PsfTime = ^sfTime;

  { PsfInputStream  }
  PsfInputStream = ^sfInputStream;

  { PsfVector2i  }
  PsfVector2i = ^sfVector2i;

  { PsfVector2u  }
  PsfVector2u = ^sfVector2u;

  { PsfVector2f  }
  PsfVector2f = ^sfVector2f;

  { PsfVector3f  }
  PsfVector3f = ^sfVector3f;

  { PsfTimeSpan  }
  PsfTimeSpan = ^sfTimeSpan;

  { PsfSoundStreamChunk  }
  PsfSoundStreamChunk = ^sfSoundStreamChunk;

  { PsfJoystickIdentification  }
  PsfJoystickIdentification = ^sfJoystickIdentification;

  { PsfKeyEvent  }
  PsfKeyEvent = ^sfKeyEvent;

  { PsfTextEvent  }
  PsfTextEvent = ^sfTextEvent;

  { PsfMouseMoveEvent  }
  PsfMouseMoveEvent = ^sfMouseMoveEvent;

  { PsfMouseButtonEvent  }
  PsfMouseButtonEvent = ^sfMouseButtonEvent;

  { PsfMouseWheelEvent  }
  PsfMouseWheelEvent = ^sfMouseWheelEvent;

  { PsfMouseWheelScrollEvent  }
  PsfMouseWheelScrollEvent = ^sfMouseWheelScrollEvent;

  { PsfJoystickMoveEvent  }
  PsfJoystickMoveEvent = ^sfJoystickMoveEvent;

  { PsfJoystickButtonEvent  }
  PsfJoystickButtonEvent = ^sfJoystickButtonEvent;

  { PsfJoystickConnectEvent  }
  PsfJoystickConnectEvent = ^sfJoystickConnectEvent;

  { PsfSizeEvent  }
  PsfSizeEvent = ^sfSizeEvent;

  { PsfTouchEvent  }
  PsfTouchEvent = ^sfTouchEvent;

  { PsfSensorEvent  }
  PsfSensorEvent = ^sfSensorEvent;

  { PsfVideoMode  }
  PsfVideoMode = ^sfVideoMode;

  { PsfContextSettings  }
  PsfContextSettings = ^sfContextSettings;

  { PsfBlendMode  }
  PsfBlendMode = ^sfBlendMode;

  { PsfColor  }
  PsfColor = ^sfColor;

  { PsfFloatRect  }
  PsfFloatRect = ^sfFloatRect;

  { PsfIntRect  }
  PsfIntRect = ^sfIntRect;

  { PsfTransform  }
  PsfTransform = ^sfTransform;

  { PsfFontInfo  }
  PsfFontInfo = ^sfFontInfo;

  { PsfGlyph  }
  PsfGlyph = ^sfGlyph;

  { PsfRenderStates  }
  PsfRenderStates = ^sfRenderStates;

  { PsfVertex  }
  PsfVertex = ^sfVertex;

  { PsfGlslBvec2  }
  PsfGlslBvec2 = ^sfGlslBvec2;

  { PsfGlslIvec3  }
  PsfGlslIvec3 = ^sfGlslIvec3;

  { PsfGlslBvec3  }
  PsfGlslBvec3 = ^sfGlslBvec3;

  { PsfGlslVec4  }
  PsfGlslVec4 = ^sfGlslVec4;

  { PsfGlslIvec4  }
  PsfGlslIvec4 = ^sfGlslIvec4;

  { PsfGlslBvec4  }
  PsfGlslBvec4 = ^sfGlslBvec4;

  { PsfGlslMat3  }
  PsfGlslMat3 = ^sfGlslMat3;

  { PsfGlslMat4  }
  PsfGlslMat4 = ^sfGlslMat4;

  { PsfIpAddress  }
  PsfIpAddress = ^sfIpAddress;

  { Pnk_color  }
  Pnk_color = ^nk_color;

  { Pnk_colorf  }
  Pnk_colorf = ^nk_colorf;

  { Pnk_vec2  }
  Pnk_vec2 = ^nk_vec2;

  { Pnk_vec2i  }
  Pnk_vec2i = ^nk_vec2i;

  { Pnk_rect  }
  Pnk_rect = ^nk_rect;

  { Pnk_recti  }
  Pnk_recti = ^nk_recti;

  { Pnk_image  }
  Pnk_image = ^nk_image;

  { Pnk_nine_slice  }
  Pnk_nine_slice = ^nk_nine_slice;

  { Pnk_cursor  }
  Pnk_cursor = ^nk_cursor;

  { Pnk_scroll  }
  Pnk_scroll = ^nk_scroll;

  { Pnk_allocator  }
  Pnk_allocator = ^nk_allocator;

  { Pnk_draw_null_texture  }
  Pnk_draw_null_texture = ^nk_draw_null_texture;

  { Pnk_convert_config  }
  Pnk_convert_config = ^nk_convert_config;

  { Pnk_list_view  }
  Pnk_list_view = ^nk_list_view;

  { Pnk_user_font_glyph  }
  Pnk_user_font_glyph = ^nk_user_font_glyph;

  { Pnk_user_font  }
  Pnk_user_font = ^nk_user_font;

  { PPnk_user_font  }
  PPnk_user_font = ^Pnk_user_font;

  { Pnk_baked_font  }
  Pnk_baked_font = ^nk_baked_font;

  { Pnk_font_config  }
  Pnk_font_config = ^nk_font_config;

  { Pnk_font_glyph  }
  Pnk_font_glyph = ^nk_font_glyph;

  { Pnk_font  }
  Pnk_font = ^nk_font;

  { Pnk_font_atlas  }
  Pnk_font_atlas = ^nk_font_atlas;

  { Pnk_memory_status  }
  Pnk_memory_status = ^nk_memory_status;

  { Pnk_buffer_marker  }
  Pnk_buffer_marker = ^nk_buffer_marker;

  { Pnk_memory  }
  Pnk_memory = ^nk_memory;

  { Pnk_buffer  }
  Pnk_buffer = ^nk_buffer;

  { Pnk_str  }
  Pnk_str = ^nk_str;

  { Pnk_clipboard  }
  Pnk_clipboard = ^nk_clipboard;

  { Pnk_text_undo_record  }
  Pnk_text_undo_record = ^nk_text_undo_record;

  { Pnk_text_undo_state  }
  Pnk_text_undo_state = ^nk_text_undo_state;

  { Pnk_text_edit  }
  Pnk_text_edit = ^nk_text_edit;

  { Pnk_command  }
  Pnk_command = ^nk_command;

  { Pnk_command_scissor  }
  Pnk_command_scissor = ^nk_command_scissor;

  { Pnk_command_line  }
  Pnk_command_line = ^nk_command_line;

  { Pnk_command_curve  }
  Pnk_command_curve = ^nk_command_curve;

  { Pnk_command_rect  }
  Pnk_command_rect = ^nk_command_rect;

  { Pnk_command_rect_filled  }
  Pnk_command_rect_filled = ^nk_command_rect_filled;

  { Pnk_command_rect_multi_color  }
  Pnk_command_rect_multi_color = ^nk_command_rect_multi_color;

  { Pnk_command_triangle  }
  Pnk_command_triangle = ^nk_command_triangle;

  { Pnk_command_triangle_filled  }
  Pnk_command_triangle_filled = ^nk_command_triangle_filled;

  { Pnk_command_circle  }
  Pnk_command_circle = ^nk_command_circle;

  { Pnk_command_circle_filled  }
  Pnk_command_circle_filled = ^nk_command_circle_filled;

  { Pnk_command_arc  }
  Pnk_command_arc = ^nk_command_arc;

  { Pnk_command_arc_filled  }
  Pnk_command_arc_filled = ^nk_command_arc_filled;

  { Pnk_command_polygon  }
  Pnk_command_polygon = ^nk_command_polygon;

  { Pnk_command_polygon_filled  }
  Pnk_command_polygon_filled = ^nk_command_polygon_filled;

  { Pnk_command_polyline  }
  Pnk_command_polyline = ^nk_command_polyline;

  { Pnk_command_image  }
  Pnk_command_image = ^nk_command_image;

  { Pnk_command_custom  }
  Pnk_command_custom = ^nk_command_custom;

  { Pnk_command_text  }
  Pnk_command_text = ^nk_command_text;

  { Pnk_command_buffer  }
  Pnk_command_buffer = ^nk_command_buffer;

  { Pnk_mouse_button  }
  Pnk_mouse_button = ^nk_mouse_button;

  { Pnk_mouse  }
  Pnk_mouse = ^nk_mouse;

  { Pnk_key  }
  Pnk_key = ^nk_key;

  { Pnk_keyboard  }
  Pnk_keyboard = ^nk_keyboard;

  { Pnk_input  }
  Pnk_input = ^nk_input;

  { Pnk_style_item  }
  Pnk_style_item = ^nk_style_item;

  { Pnk_style_text  }
  Pnk_style_text = ^nk_style_text;

  { Pnk_style_button  }
  Pnk_style_button = ^nk_style_button;

  { Pnk_style_toggle  }
  Pnk_style_toggle = ^nk_style_toggle;

  { Pnk_style_selectable  }
  Pnk_style_selectable = ^nk_style_selectable;

  { Pnk_style_slider  }
  Pnk_style_slider = ^nk_style_slider;

  { Pnk_style_progress  }
  Pnk_style_progress = ^nk_style_progress;

  { Pnk_style_scrollbar  }
  Pnk_style_scrollbar = ^nk_style_scrollbar;

  { Pnk_style_edit  }
  Pnk_style_edit = ^nk_style_edit;

  { Pnk_style_property  }
  Pnk_style_property = ^nk_style_property;

  { Pnk_style_chart  }
  Pnk_style_chart = ^nk_style_chart;

  { Pnk_style_combo  }
  Pnk_style_combo = ^nk_style_combo;

  { Pnk_style_tab  }
  Pnk_style_tab = ^nk_style_tab;

  { Pnk_style_window_header  }
  Pnk_style_window_header = ^nk_style_window_header;

  { Pnk_style_window  }
  Pnk_style_window = ^nk_style_window;

  { Pnk_style  }
  Pnk_style = ^nk_style;

  { Pnk_chart_slot  }
  Pnk_chart_slot = ^nk_chart_slot;

  { Pnk_chart  }
  Pnk_chart = ^nk_chart;

  { Pnk_row_layout  }
  Pnk_row_layout = ^nk_row_layout;

  { Pnk_popup_buffer  }
  Pnk_popup_buffer = ^nk_popup_buffer;

  { Pnk_menu_state  }
  Pnk_menu_state = ^nk_menu_state;

  { Pnk_panel  }
  Pnk_panel = ^nk_panel;

  { Pnk_popup_state  }
  Pnk_popup_state = ^nk_popup_state;

  { Pnk_edit_state  }
  Pnk_edit_state = ^nk_edit_state;

  { Pnk_property_state  }
  Pnk_property_state = ^nk_property_state;

  { Pnk_window  }
  Pnk_window = ^nk_window;

  { Pnk_config_stack_style_item_element  }
  Pnk_config_stack_style_item_element = ^nk_config_stack_style_item_element;

  { Pnk_config_stack_float_element  }
  Pnk_config_stack_float_element = ^nk_config_stack_float_element;

  { Pnk_config_stack_vec2_element  }
  Pnk_config_stack_vec2_element = ^nk_config_stack_vec2_element;

  { Pnk_config_stack_flags_element  }
  Pnk_config_stack_flags_element = ^nk_config_stack_flags_element;

  { Pnk_config_stack_color_element  }
  Pnk_config_stack_color_element = ^nk_config_stack_color_element;

  { Pnk_config_stack_user_font_element  }
  Pnk_config_stack_user_font_element = ^nk_config_stack_user_font_element;

  { Pnk_config_stack_button_behavior_element  }
  Pnk_config_stack_button_behavior_element = ^nk_config_stack_button_behavior_element;

  { Pnk_config_stack_style_item  }
  Pnk_config_stack_style_item = ^nk_config_stack_style_item;

  { Pnk_config_stack_float  }
  Pnk_config_stack_float = ^nk_config_stack_float;

  { Pnk_config_stack_vec2  }
  Pnk_config_stack_vec2 = ^nk_config_stack_vec2;

  { Pnk_config_stack_flags  }
  Pnk_config_stack_flags = ^nk_config_stack_flags;

  { Pnk_config_stack_color  }
  Pnk_config_stack_color = ^nk_config_stack_color;

  { Pnk_config_stack_user_font  }
  Pnk_config_stack_user_font = ^nk_config_stack_user_font;

  { Pnk_config_stack_button_behavior  }
  Pnk_config_stack_button_behavior = ^nk_config_stack_button_behavior;

  { Pnk_configuration_stacks  }
  Pnk_configuration_stacks = ^nk_configuration_stacks;

  { Pnk_table  }
  Pnk_table = ^nk_table;

  { Pnk_page_element  }
  Pnk_page_element = ^nk_page_element;

  { Pnk_page  }
  Pnk_page = ^nk_page;

  { Pnk_pool  }
  Pnk_pool = ^nk_pool;

  { Pnk_context  }
  Pnk_context = ^nk_context;

  { PPHYSFS_File  }
  PPHYSFS_File = ^PHYSFS_File;

  { PPHYSFS_ArchiveInfo  }
  PPHYSFS_ArchiveInfo = ^PHYSFS_ArchiveInfo;

  { PPPHYSFS_ArchiveInfo  }
  PPPHYSFS_ArchiveInfo = ^PPHYSFS_ArchiveInfo;

  { PPHYSFS_Version  }
  PPHYSFS_Version = ^PHYSFS_Version;

  { PPHYSFS_Allocator  }
  PPHYSFS_Allocator = ^PHYSFS_Allocator;

  { PPHYSFS_Stat_  }
  PPHYSFS_Stat_ = ^PHYSFS_Stat_;

  { PPHYSFS_Io  }
  PPHYSFS_Io = ^PHYSFS_Io;

  { PPHYSFS_Archiver  }
  PPHYSFS_Archiver = ^PHYSFS_Archiver;

  { Pplm_packet_t  }
  Pplm_packet_t = ^plm_packet_t;

  { Pplm_plane_t  }
  Pplm_plane_t = ^plm_plane_t;

  { Pplm_frame_t  }
  Pplm_frame_t = ^plm_frame_t;

  { Pplm_samples_t  }
  Pplm_samples_t = ^plm_samples_t;

  { Ptm_zip_s  }
  Ptm_zip_s = ^tm_zip_s;

  { Pzip_fileinfo  }
  Pzip_fileinfo = ^zip_fileinfo;

  { sfBool  }
  sfBool = Integer;

  { sfInt8  }
  sfInt8 = UTF8Char;

  { sfUint8  }
  sfUint8 = Byte;

  { PsfUint8  }
  PsfUint8 = ^sfUint8;

  { sfInt16  }
  sfInt16 = Smallint;

  { PsfInt16  }
  PsfInt16 = ^sfInt16;

  { sfUint16  }
  sfUint16 = Word;

  { sfInt32  }
  sfInt32 = Integer;

  { sfUint32  }
  sfUint32 = Cardinal;

  { PsfUint32  }
  PsfUint32 = ^sfUint32;

  { sfInt64  }
  sfInt64 = Int64;

  { sfUint64  }
  sfUint64 = UInt64;

  { sfTime  }
  sfTime = record
    microseconds: sfInt64;
  end;

  { PsfClock  }
  PsfClock = Pointer;

  { PPsfClock  }
  PPsfClock = ^PsfClock;

  { PsfMutex  }
  PsfMutex = Pointer;

  { PPsfMutex  }
  PPsfMutex = ^PsfMutex;

  { PsfThread  }
  PsfThread = Pointer;

  { PPsfThread  }
  PPsfThread = ^PsfThread;

  { sfInputStreamReadFunc  }
  sfInputStreamReadFunc = function(data: Pointer; size: sfInt64; userData: Pointer): sfInt64; cdecl;

  { sfInputStreamSeekFunc  }
  sfInputStreamSeekFunc = function(position: sfInt64; userData: Pointer): sfInt64; cdecl;

  { sfInputStreamTellFunc  }
  sfInputStreamTellFunc = function(userData: Pointer): sfInt64; cdecl;

  { sfInputStreamGetSizeFunc  }
  sfInputStreamGetSizeFunc = function(userData: Pointer): sfInt64; cdecl;

  { sfInputStream  }
  sfInputStream = record
    read: sfInputStreamReadFunc;
    seek: sfInputStreamSeekFunc;
    tell: sfInputStreamTellFunc;
    getSize: sfInputStreamGetSizeFunc;
    userData: Pointer;
  end;

  { sfVector2i  }
  sfVector2i = record
    x: Integer;
    y: Integer;
  end;

  { sfVector2u  }
  sfVector2u = record
    x: Cardinal;
    y: Cardinal;
  end;

  { sfVector2f  }
  sfVector2f = record
    x: Single;
    y: Single;
  end;

  { sfVector3f  }
  sfVector3f = record
    x: Single;
    y: Single;
    z: Single;
  end;

  { PsfMusic  }
  PsfMusic = Pointer;

  { PPsfMusic  }
  PPsfMusic = ^PsfMusic;

  { PsfSound  }
  PsfSound = Pointer;

  { PPsfSound  }
  PPsfSound = ^PsfSound;

  { PsfSoundBuffer  }
  PsfSoundBuffer = Pointer;

  { PPsfSoundBuffer  }
  PPsfSoundBuffer = ^PsfSoundBuffer;

  { PsfSoundBufferRecorder  }
  PsfSoundBufferRecorder = Pointer;

  { PPsfSoundBufferRecorder  }
  PPsfSoundBufferRecorder = ^PsfSoundBufferRecorder;

  { PsfSoundRecorder  }
  PsfSoundRecorder = Pointer;

  { PPsfSoundRecorder  }
  PPsfSoundRecorder = ^PsfSoundRecorder;

  { PsfSoundStream  }
  PsfSoundStream = Pointer;

  { PPsfSoundStream  }
  PPsfSoundStream = ^PsfSoundStream;

  { sfTimeSpan  }
  sfTimeSpan = record
    offset: sfTime;
    length: sfTime;
  end;

  { sfSoundRecorderStartCallback  }
  sfSoundRecorderStartCallback = function(p1: Pointer): sfBool; cdecl;

  { sfSoundRecorderProcessCallback  }
  sfSoundRecorderProcessCallback = function(const p1: PsfInt16; p2: NativeUInt; p3: Pointer): sfBool; cdecl;

  { sfSoundRecorderStopCallback  }
  sfSoundRecorderStopCallback = procedure(p1: Pointer); cdecl;

  { sfSoundStreamChunk  }
  sfSoundStreamChunk = record
    samples: PsfInt16;
    sampleCount: Cardinal;
  end;

  { sfSoundStreamGetDataCallback  }
  sfSoundStreamGetDataCallback = function(p1: PsfSoundStreamChunk; p2: Pointer): sfBool; cdecl;

  { sfSoundStreamSeekCallback  }
  sfSoundStreamSeekCallback = procedure(p1: sfTime; p2: Pointer); cdecl;

  { PsfContext  }
  PsfContext = Pointer;

  { PPsfContext  }
  PPsfContext = ^PsfContext;

  { PsfCursor  }
  PsfCursor = Pointer;

  { PPsfCursor  }
  PPsfCursor = ^PsfCursor;

  { PsfWindow  }
  PsfWindow = Pointer;

  { PPsfWindow  }
  PPsfWindow = ^PsfWindow;

  { sfJoystickIdentification  }
  sfJoystickIdentification = record
    name: PUTF8Char;
    vendorId: Cardinal;
    productId: Cardinal;
  end;

  { sfKeyEvent  }
  sfKeyEvent = record
    _type: sfEventType;
    code: sfKeyCode;
    alt: sfBool;
    control: sfBool;
    shift: sfBool;
    system: sfBool;
  end;

  { sfTextEvent  }
  sfTextEvent = record
    _type: sfEventType;
    unicode: sfUint32;
  end;

  { sfMouseMoveEvent  }
  sfMouseMoveEvent = record
    _type: sfEventType;
    x: Integer;
    y: Integer;
  end;

  { sfMouseButtonEvent  }
  sfMouseButtonEvent = record
    _type: sfEventType;
    button: sfMouseButton;
    x: Integer;
    y: Integer;
  end;

  { sfMouseWheelEvent  }
  sfMouseWheelEvent = record
    _type: sfEventType;
    delta: Integer;
    x: Integer;
    y: Integer;
  end;

  { sfMouseWheelScrollEvent  }
  sfMouseWheelScrollEvent = record
    _type: sfEventType;
    wheel: sfMouseWheel;
    delta: Single;
    x: Integer;
    y: Integer;
  end;

  { sfJoystickMoveEvent  }
  sfJoystickMoveEvent = record
    _type: sfEventType;
    joystickId: Cardinal;
    axis: sfJoystickAxis;
    position: Single;
  end;

  { sfJoystickButtonEvent  }
  sfJoystickButtonEvent = record
    _type: sfEventType;
    joystickId: Cardinal;
    button: Cardinal;
  end;

  { sfJoystickConnectEvent  }
  sfJoystickConnectEvent = record
    _type: sfEventType;
    joystickId: Cardinal;
  end;

  { sfSizeEvent  }
  sfSizeEvent = record
    _type: sfEventType;
    width: Cardinal;
    height: Cardinal;
  end;

  { sfTouchEvent  }
  sfTouchEvent = record
    _type: sfEventType;
    finger: Cardinal;
    x: Integer;
    y: Integer;
  end;

  { sfSensorEvent  }
  sfSensorEvent = record
    _type: sfEventType;
    sensorType: sfSensorType;
    x: Single;
    y: Single;
    z: Single;
  end;

  { PsfEvent  }
  PsfEvent = ^sfEvent;

  { sfEvent  }
  sfEvent = record
    case Integer of
      0: (_type: sfEventType);
      1: (size: sfSizeEvent);
      2: (key: sfKeyEvent);
      3: (text: sfTextEvent);
      4: (mouseMove: sfMouseMoveEvent);
      5: (mouseButton: sfMouseButtonEvent);
      6: (mouseWheel: sfMouseWheelEvent);
      7: (mouseWheelScroll: sfMouseWheelScrollEvent);
      8: (joystickMove: sfJoystickMoveEvent);
      9: (joystickButton: sfJoystickButtonEvent);
      10: (joystickConnect: sfJoystickConnectEvent);
      11: (touch: sfTouchEvent);
      12: (sensor: sfSensorEvent);
  end;

  { sfVideoMode  }
  sfVideoMode = record
    width: Cardinal;
    height: Cardinal;
    bitsPerPixel: Cardinal;
  end;

  { sfWindowHandle  }
  sfWindowHandle = Pointer;

  { PsfWindowHandle  }
  PsfWindowHandle = ^sfWindowHandle;

  { sfContextSettings  }
  sfContextSettings = record
    depthBits: Cardinal;
    stencilBits: Cardinal;
    antialiasingLevel: Cardinal;
    majorVersion: Cardinal;
    minorVersion: Cardinal;
    attributeFlags: sfUint32;
    sRgbCapable: sfBool;
  end;

  { sfBlendMode  }
  sfBlendMode = record
    colorSrcFactor: sfBlendFactor;
    colorDstFactor: sfBlendFactor;
    colorEquation: sfBlendEquation;
    alphaSrcFactor: sfBlendFactor;
    alphaDstFactor: sfBlendFactor;
    alphaEquation: sfBlendEquation;
  end;

  { sfColor  }
  sfColor = record
    r: sfUint8;
    g: sfUint8;
    b: sfUint8;
    a: sfUint8;
  end;

  { sfFloatRect  }
  sfFloatRect = record
    left: Single;
    top: Single;
    width: Single;
    height: Single;
  end;

  { sfIntRect  }
  sfIntRect = record
    left: Integer;
    top: Integer;
    width: Integer;
    height: Integer;
  end;

  { PsfCircleShape  }
  PsfCircleShape = Pointer;

  { PPsfCircleShape  }
  PPsfCircleShape = ^PsfCircleShape;

  { PsfConvexShape  }
  PsfConvexShape = Pointer;

  { PPsfConvexShape  }
  PPsfConvexShape = ^PsfConvexShape;

  { PsfFont  }
  PsfFont = Pointer;

  { PPsfFont  }
  PPsfFont = ^PsfFont;

  { PsfImage  }
  PsfImage = Pointer;

  { PPsfImage  }
  PPsfImage = ^PsfImage;

  { PsfShader  }
  PsfShader = Pointer;

  { PPsfShader  }
  PPsfShader = ^PsfShader;

  { PsfRectangleShape  }
  PsfRectangleShape = Pointer;

  { PPsfRectangleShape  }
  PPsfRectangleShape = ^PsfRectangleShape;

  { PsfRenderTexture  }
  PsfRenderTexture = Pointer;

  { PPsfRenderTexture  }
  PPsfRenderTexture = ^PsfRenderTexture;

  { PsfRenderWindow  }
  PsfRenderWindow = Pointer;

  { PPsfRenderWindow  }
  PPsfRenderWindow = ^PsfRenderWindow;

  { PsfShape  }
  PsfShape = Pointer;

  { PPsfShape  }
  PPsfShape = ^PsfShape;

  { PsfSprite  }
  PsfSprite = Pointer;

  { PPsfSprite  }
  PPsfSprite = ^PsfSprite;

  { PsfText  }
  PsfText = Pointer;

  { PPsfText  }
  PPsfText = ^PsfText;

  { PsfTexture  }
  PsfTexture = Pointer;

  { PPsfTexture  }
  PPsfTexture = ^PsfTexture;

  { PsfTransformable  }
  PsfTransformable = Pointer;

  { PPsfTransformable  }
  PPsfTransformable = ^PsfTransformable;

  { PsfVertexArray  }
  PsfVertexArray = Pointer;

  { PPsfVertexArray  }
  PPsfVertexArray = ^PsfVertexArray;

  { PsfVertexBuffer  }
  PsfVertexBuffer = Pointer;

  { PPsfVertexBuffer  }
  PPsfVertexBuffer = ^PsfVertexBuffer;

  { PsfView  }
  PsfView = Pointer;

  { PPsfView  }
  PPsfView = ^PsfView;

  { sfTransform  }
  sfTransform = record
    matrix: array [0..8] of Single;
  end;

  { sfFontInfo  }
  sfFontInfo = record
    family: PUTF8Char;
  end;

  { sfGlyph  }
  sfGlyph = record
    advance: Single;
    bounds: sfFloatRect;
    textureRect: sfIntRect;
  end;

  { sfRenderStates  }
  sfRenderStates = record
    blendMode: sfBlendMode;
    transform: sfTransform;
    texture: PsfTexture;
    shader: PsfShader;
  end;

  { sfVertex  }
  sfVertex = record
    position: sfVector2f;
    color: sfColor;
    texCoords: sfVector2f;
  end;

  { sfGlslVec2  }
  sfGlslVec2 = sfVector2f;

  { PsfGlslVec2  }
  PsfGlslVec2 = ^sfGlslVec2;

  { sfGlslIvec2  }
  sfGlslIvec2 = sfVector2i;

  { sfGlslBvec2  }
  sfGlslBvec2 = record
    x: sfBool;
    y: sfBool;
  end;

  { sfGlslVec3  }
  sfGlslVec3 = sfVector3f;

  { PsfGlslVec3  }
  PsfGlslVec3 = ^sfGlslVec3;

  { sfGlslIvec3  }
  sfGlslIvec3 = record
    x: Integer;
    y: Integer;
    z: Integer;
  end;

  { sfGlslBvec3  }
  sfGlslBvec3 = record
    x: sfBool;
    y: sfBool;
    z: sfBool;
  end;

  { sfGlslVec4  }
  sfGlslVec4 = record
    x: Single;
    y: Single;
    z: Single;
    w: Single;
  end;

  { sfGlslIvec4  }
  sfGlslIvec4 = record
    x: Integer;
    y: Integer;
    z: Integer;
    w: Integer;
  end;

  { sfGlslBvec4  }
  sfGlslBvec4 = record
    x: sfBool;
    y: sfBool;
    z: sfBool;
    w: sfBool;
  end;

  { sfGlslMat3  }
  sfGlslMat3 = record
    _array: array [0..8] of Single;
  end;

  { sfGlslMat4  }
  sfGlslMat4 = record
    _array: array [0..15] of Single;
  end;

  { sfShapeGetPointCountCallback  }
  sfShapeGetPointCountCallback = function(p1: Pointer): NativeUInt; cdecl;

  { sfShapeGetPointCallback  }
  sfShapeGetPointCallback = function(p1: NativeUInt; p2: Pointer): sfVector2f; cdecl;

  { sfIpAddress  }
  sfIpAddress = record
    address: array [0..15] of UTF8Char;
  end;

  { PsfFtpDirectoryResponse  }
  PsfFtpDirectoryResponse = Pointer;

  { PPsfFtpDirectoryResponse  }
  PPsfFtpDirectoryResponse = ^PsfFtpDirectoryResponse;

  { PsfFtpListingResponse  }
  PsfFtpListingResponse = Pointer;

  { PPsfFtpListingResponse  }
  PPsfFtpListingResponse = ^PsfFtpListingResponse;

  { PsfFtpResponse  }
  PsfFtpResponse = Pointer;

  { PPsfFtpResponse  }
  PPsfFtpResponse = ^PsfFtpResponse;

  { PsfFtp  }
  PsfFtp = Pointer;

  { PPsfFtp  }
  PPsfFtp = ^PsfFtp;

  { PsfHttpRequest  }
  PsfHttpRequest = Pointer;

  { PPsfHttpRequest  }
  PPsfHttpRequest = ^PsfHttpRequest;

  { PsfHttpResponse  }
  PsfHttpResponse = Pointer;

  { PPsfHttpResponse  }
  PPsfHttpResponse = ^PsfHttpResponse;

  { PsfHttp  }
  PsfHttp = Pointer;

  { PPsfHttp  }
  PPsfHttp = ^PsfHttp;

  { PsfPacket  }
  PsfPacket = Pointer;

  { PPsfPacket  }
  PPsfPacket = ^PsfPacket;

  { PsfSocketSelector  }
  PsfSocketSelector = Pointer;

  { PPsfSocketSelector  }
  PPsfSocketSelector = ^PsfSocketSelector;

  { PsfTcpListener  }
  PsfTcpListener = Pointer;

  { PPsfTcpListener  }
  PPsfTcpListener = ^PsfTcpListener;

  { PsfTcpSocket  }
  PsfTcpSocket = Pointer;

  { PPsfTcpSocket  }
  PPsfTcpSocket = ^PsfTcpSocket;

  { PsfUdpSocket  }
  PsfUdpSocket = Pointer;

  { PPsfUdpSocket  }
  PPsfUdpSocket = ^PsfUdpSocket;

  { nk_char  }
  nk_char = Int8;

  { nk_uchar  }
  nk_uchar = UInt8;

  { nk_byte  }
  nk_byte = UInt8;

  { Pnk_byte  }
  Pnk_byte = ^nk_byte;

  { nk_short  }
  nk_short = Int16;

  { nk_ushort  }
  nk_ushort = UInt16;

  { nk_int  }
  nk_int = Int32;

  { nk_uint  }
  nk_uint = UInt32;

  { Pnk_uint  }
  Pnk_uint = ^nk_uint;

  { nk_size  }
  nk_size = UIntPtr;

  { Pnk_size  }
  Pnk_size = ^nk_size;

  { nk_ptr  }
  nk_ptr = UIntPtr;

  { nk_bool  }
  nk_bool = Boolean;

  { Pnk_bool  }
  Pnk_bool = ^nk_bool;

  { nk_hash  }
  nk_hash = nk_uint;

  { nk_flags  }
  nk_flags = nk_uint;

  { Pnk_flags  }
  Pnk_flags = ^nk_flags;

  { nk_rune  }
  nk_rune = nk_uint;

  { Pnk_rune  }
  Pnk_rune = ^nk_rune;

  { _dummy_array0  }
  _dummy_array0 = array [0..0] of UTF8Char;

  { _dummy_array1  }
  _dummy_array1 = array [0..0] of UTF8Char;

  { _dummy_array2  }
  _dummy_array2 = array [0..0] of UTF8Char;

  { _dummy_array3  }
  _dummy_array3 = array [0..0] of UTF8Char;

  { _dummy_array4  }
  _dummy_array4 = array [0..0] of UTF8Char;

  { _dummy_array5  }
  _dummy_array5 = array [0..0] of UTF8Char;

  { _dummy_array6  }
  _dummy_array6 = array [0..0] of UTF8Char;

  { _dummy_array7  }
  _dummy_array7 = array [0..0] of UTF8Char;

  { _dummy_array8  }
  _dummy_array8 = array [0..0] of UTF8Char;

  { _dummy_array9  }
  _dummy_array9 = array [0..0] of UTF8Char;

  { nk_color  }
  nk_color = record
    r: nk_byte;
    g: nk_byte;
    b: nk_byte;
    a: nk_byte;
  end;

  { nk_colorf  }
  nk_colorf = record
    r: Single;
    g: Single;
    b: Single;
    a: Single;
  end;

  { nk_vec2  }
  nk_vec2 = record
    x: Single;
    y: Single;
  end;

  { nk_vec2i  }
  nk_vec2i = record
    x: Smallint;
    y: Smallint;
  end;

  { nk_rect  }
  nk_rect = record
    x: Single;
    y: Single;
    w: Single;
    h: Single;
  end;

  { nk_recti  }
  nk_recti = record
    x: Smallint;
    y: Smallint;
    w: Smallint;
    h: Smallint;
  end;

  { nk_glyph  }
  nk_glyph = array [0..3] of UTF8Char;

  { nk_handle  }
  nk_handle = record
    case Integer of
      0: (ptr: Pointer);
      1: (id: Integer);
  end;

  { nk_image  }
  nk_image = record
    handle: nk_handle;
    w: nk_ushort;
    h: nk_ushort;
    region: array [0..3] of nk_ushort;
  end;

  { nk_nine_slice  }
  nk_nine_slice = record
    img: nk_image;
    l: nk_ushort;
    t: nk_ushort;
    r: nk_ushort;
    b: nk_ushort;
  end;

  { nk_cursor  }
  nk_cursor = record
    img: nk_image;
    size: nk_vec2;
    offset: nk_vec2;
  end;

  { nk_scroll  }
  nk_scroll = record
    x: nk_uint;
    y: nk_uint;
  end;

  { nk_plugin_alloc  }
  nk_plugin_alloc = function(p1: nk_handle; old: Pointer; p3: nk_size): Pointer; cdecl;

  { nk_plugin_free  }
  nk_plugin_free = procedure(p1: nk_handle; old: Pointer); cdecl;

  { nk_plugin_filter  }
  nk_plugin_filter = function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;

  { nk_plugin_paste  }
  nk_plugin_paste = procedure(p1: nk_handle; p2: Pnk_text_edit); cdecl;

  { nk_plugin_copy  }
  nk_plugin_copy = procedure(p1: nk_handle; const p2: PUTF8Char; len: Integer); cdecl;

  { nk_allocator  }
  nk_allocator = record
    userdata: nk_handle;
    alloc: nk_plugin_alloc;
    free: nk_plugin_free;
  end;

  { nk_draw_null_texture  }
  nk_draw_null_texture = record
    texture: nk_handle;
    uv: nk_vec2;
  end;

  { nk_convert_config  }
  nk_convert_config = record
    global_alpha: Single;
    line_AA: nk_anti_aliasing;
    shape_AA: nk_anti_aliasing;
    circle_segment_count: Cardinal;
    arc_segment_count: Cardinal;
    curve_segment_count: Cardinal;
    null: nk_draw_null_texture;
    vertex_layout: Pnk_draw_vertex_layout_element;
    vertex_size: nk_size;
    vertex_alignment: nk_size;
  end;

  { nk_list_view  }
  nk_list_view = record
    _begin: Integer;
    _end: Integer;
    count: Integer;
    total_height: Integer;
    ctx: Pnk_context;
    scroll_pointer: Pnk_uint;
    scroll_value: nk_uint;
  end;

  { nk_text_width_f  }
  nk_text_width_f = function(p1: nk_handle; h: Single; const p3: PUTF8Char; len: Integer): Single; cdecl;

  { nk_query_font_glyph_f  }
  nk_query_font_glyph_f = procedure(handle: nk_handle; font_height: Single; glyph: Pnk_user_font_glyph; codepoint: nk_rune; next_codepoint: nk_rune); cdecl;

  { nk_user_font_glyph  }
  nk_user_font_glyph = record
    uv: array [0..1] of nk_vec2;
    offset: nk_vec2;
    width: Single;
    height: Single;
    xadvance: Single;
  end;

  { nk_user_font  }
  nk_user_font = record
    userdata: nk_handle;
    height: Single;
    width: nk_text_width_f;
  end;

  { nk_baked_font  }
  nk_baked_font = record
    height: Single;
    ascent: Single;
    descent: Single;
    glyph_offset: nk_rune;
    glyph_count: nk_rune;
    ranges: Pnk_rune;
  end;

  { nk_font_config  }
  nk_font_config = record
    next: Pnk_font_config;
    ttf_blob: Pointer;
    ttf_size: nk_size;
    ttf_data_owned_by_atlas: Byte;
    merge_mode: Byte;
    pixel_snap: Byte;
    oversample_v: Byte;
    oversample_h: Byte;
    padding: array [0..2] of Byte;
    size: Single;
    coord_type: nk_font_coord_type;
    spacing: nk_vec2;
    range: Pnk_rune;
    font: Pnk_baked_font;
    fallback_glyph: nk_rune;
    n: Pnk_font_config;
    p: Pnk_font_config;
  end;

  { nk_font_glyph  }
  nk_font_glyph = record
    codepoint: nk_rune;
    xadvance: Single;
    x0: Single;
    y0: Single;
    x1: Single;
    y1: Single;
    w: Single;
    h: Single;
    u0: Single;
    v0: Single;
    u1: Single;
    v1: Single;
  end;

  { nk_font  }
  nk_font = record
    next: Pnk_font;
    handle: nk_user_font;
    info: nk_baked_font;
    scale: Single;
    glyphs: Pnk_font_glyph;
    fallback: Pnk_font_glyph;
    fallback_codepoint: nk_rune;
    texture: nk_handle;
    config: Pnk_font_config;
  end;

  { nk_font_atlas  }
  nk_font_atlas = record
    pixel: Pointer;
    tex_width: Integer;
    tex_height: Integer;
    permanent: nk_allocator;
    temporary: nk_allocator;
    custom: nk_recti;
    cursors: array [0..6] of nk_cursor;
    glyph_count: Integer;
    glyphs: Pnk_font_glyph;
    default_font: Pnk_font;
    fonts: Pnk_font;
    config: Pnk_font_config;
    font_num: Integer;
  end;

  { nk_memory_status  }
  nk_memory_status = record
    memory: Pointer;
    _type: Cardinal;
    size: nk_size;
    allocated: nk_size;
    needed: nk_size;
    calls: nk_size;
  end;

  { nk_buffer_marker  }
  nk_buffer_marker = record
    active: nk_bool;
    offset: nk_size;
  end;

  { nk_memory  }
  nk_memory = record
    ptr: Pointer;
    size: nk_size;
  end;

  { nk_buffer  }
  nk_buffer = record
    marker: array [0..1] of nk_buffer_marker;
    pool: nk_allocator;
    _type: nk_allocation_type;
    memory: nk_memory;
    grow_factor: Single;
    allocated: nk_size;
    needed: nk_size;
    calls: nk_size;
    size: nk_size;
  end;

  { nk_str  }
  nk_str = record
    buffer: nk_buffer;
    len: Integer;
  end;

  { nk_clipboard  }
  nk_clipboard = record
    userdata: nk_handle;
    paste: nk_plugin_paste;
    copy: nk_plugin_copy;
  end;

  { nk_text_undo_record  }
  nk_text_undo_record = record
    where: Integer;
    insert_length: Smallint;
    delete_length: Smallint;
    char_storage: Smallint;
  end;

  { nk_text_undo_state  }
  nk_text_undo_state = record
    undo_rec: array [0..98] of nk_text_undo_record;
    undo_char: array [0..998] of nk_rune;
    undo_point: Smallint;
    redo_point: Smallint;
    undo_char_point: Smallint;
    redo_char_point: Smallint;
  end;

  { nk_text_edit  }
  nk_text_edit = record
    clip: nk_clipboard;
    _string: nk_str;
    filter: nk_plugin_filter;
    scrollbar: nk_vec2;
    cursor: Integer;
    select_start: Integer;
    select_end: Integer;
    mode: Byte;
    cursor_at_end_of_line: Byte;
    initialized: Byte;
    has_preferred_x: Byte;
    single_line: Byte;
    active: Byte;
    padding1: Byte;
    preferred_x: Single;
    undo: nk_text_undo_state;
  end;

  { nk_command  }
  nk_command = record
    _type: nk_command_type;
    next: nk_size;
  end;

  { nk_command_scissor  }
  nk_command_scissor = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
  end;

  { nk_command_line  }
  nk_command_line = record
    header: nk_command;
    line_thickness: Word;
    _begin: nk_vec2i;
    _end: nk_vec2i;
    color: nk_color;
  end;

  { nk_command_curve  }
  nk_command_curve = record
    header: nk_command;
    line_thickness: Word;
    _begin: nk_vec2i;
    _end: nk_vec2i;
    ctrl: array [0..1] of nk_vec2i;
    color: nk_color;
  end;

  { nk_command_rect  }
  nk_command_rect = record
    header: nk_command;
    rounding: Word;
    line_thickness: Word;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  { nk_command_rect_filled  }
  nk_command_rect_filled = record
    header: nk_command;
    rounding: Word;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  { nk_command_rect_multi_color  }
  nk_command_rect_multi_color = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    left: nk_color;
    top: nk_color;
    bottom: nk_color;
    right: nk_color;
  end;

  { nk_command_triangle  }
  nk_command_triangle = record
    header: nk_command;
    line_thickness: Word;
    a: nk_vec2i;
    b: nk_vec2i;
    c: nk_vec2i;
    color: nk_color;
  end;

  { nk_command_triangle_filled  }
  nk_command_triangle_filled = record
    header: nk_command;
    a: nk_vec2i;
    b: nk_vec2i;
    c: nk_vec2i;
    color: nk_color;
  end;

  { nk_command_circle  }
  nk_command_circle = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    line_thickness: Word;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  { nk_command_circle_filled  }
  nk_command_circle_filled = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  { nk_command_arc  }
  nk_command_arc = record
    header: nk_command;
    cx: Smallint;
    cy: Smallint;
    r: Word;
    line_thickness: Word;
    a: array [0..1] of Single;
    color: nk_color;
  end;

  { nk_command_arc_filled  }
  nk_command_arc_filled = record
    header: nk_command;
    cx: Smallint;
    cy: Smallint;
    r: Word;
    a: array [0..1] of Single;
    color: nk_color;
  end;

  { nk_command_polygon  }
  nk_command_polygon = record
    header: nk_command;
    color: nk_color;
    line_thickness: Word;
    point_count: Word;
    points: array [0..0] of nk_vec2i;
  end;

  { nk_command_polygon_filled  }
  nk_command_polygon_filled = record
    header: nk_command;
    color: nk_color;
    point_count: Word;
    points: array [0..0] of nk_vec2i;
  end;

  { nk_command_polyline  }
  nk_command_polyline = record
    header: nk_command;
    color: nk_color;
    line_thickness: Word;
    point_count: Word;
    points: array [0..0] of nk_vec2i;
  end;

  { nk_command_image  }
  nk_command_image = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    img: nk_image;
    col: nk_color;
  end;

  { nk_command_custom_callback  }
  nk_command_custom_callback = procedure(canvas: Pointer; x: Smallint; y: Smallint; w: Word; h: Word; callback_data: nk_handle); cdecl;

  { nk_command_custom  }
  nk_command_custom = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    callback_data: nk_handle;
    callback: nk_command_custom_callback;
  end;

  { nk_command_text  }
  nk_command_text = record
    header: nk_command;
    font: Pnk_user_font;
    background: nk_color;
    foreground: nk_color;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    height: Single;
    length: Integer;
    _string: array [0..0] of UTF8Char;
  end;

  { nk_command_buffer  }
  nk_command_buffer = record
    base: Pnk_buffer;
    clip: nk_rect;
    use_clipping: Integer;
    userdata: nk_handle;
    _begin: nk_size;
    _end: nk_size;
    last: nk_size;
  end;

  { nk_mouse_button  }
  nk_mouse_button = record
    down: nk_bool;
    clicked: Cardinal;
    clicked_pos: nk_vec2;
  end;

  { nk_mouse  }
  nk_mouse = record
    buttons: array [0..3] of nk_mouse_button;
    pos: nk_vec2;
    prev: nk_vec2;
    delta: nk_vec2;
    scroll_delta: nk_vec2;
    grab: Byte;
    grabbed: Byte;
    ungrab: Byte;
  end;

  { nk_key  }
  nk_key = record
    down: nk_bool;
    clicked: Cardinal;
  end;

  { nk_keyboard  }
  nk_keyboard = record
    keys: array [0..29] of nk_key;
    text: array [0..15] of UTF8Char;
    text_len: Integer;
  end;

  { nk_input  }
  nk_input = record
    keyboard: nk_keyboard;
    mouse: nk_mouse;
  end;

  { nk_style_item_data  }
  nk_style_item_data = record
    case Integer of
      0: (color: nk_color);
      1: (image: nk_image);
      2: (slice: nk_nine_slice);
  end;

  { nk_style_item  }
  nk_style_item = record
    _type: nk_style_item_type;
    data: nk_style_item_data;
  end;

  { nk_style_text  }
  nk_style_text = record
    color: nk_color;
    padding: nk_vec2;
  end;

  { nk_style_button  }
  nk_style_button = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    text_background: nk_color;
    text_normal: nk_color;
    text_hover: nk_color;
    text_active: nk_color;
    text_alignment: nk_flags;
    border: Single;
    rounding: Single;
    padding: nk_vec2;
    image_padding: nk_vec2;
    touch_padding: nk_vec2;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; userdata: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; userdata: nk_handle); cdecl;
  end;

  { nk_style_toggle  }
  nk_style_toggle = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    text_normal: nk_color;
    text_hover: nk_color;
    text_active: nk_color;
    text_background: nk_color;
    text_alignment: nk_flags;
    padding: nk_vec2;
    touch_padding: nk_vec2;
    spacing: Single;
    border: Single;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  { nk_style_selectable  }
  nk_style_selectable = record
    normal: nk_style_item;
    hover: nk_style_item;
    pressed: nk_style_item;
    normal_active: nk_style_item;
    hover_active: nk_style_item;
    pressed_active: nk_style_item;
    text_normal: nk_color;
    text_hover: nk_color;
    text_pressed: nk_color;
    text_normal_active: nk_color;
    text_hover_active: nk_color;
    text_pressed_active: nk_color;
    text_background: nk_color;
    text_alignment: nk_flags;
    rounding: Single;
    padding: nk_vec2;
    touch_padding: nk_vec2;
    image_padding: nk_vec2;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  { nk_style_slider  }
  nk_style_slider = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    bar_normal: nk_color;
    bar_hover: nk_color;
    bar_active: nk_color;
    bar_filled: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    cursor_active: nk_style_item;
    border: Single;
    rounding: Single;
    bar_height: Single;
    padding: nk_vec2;
    spacing: nk_vec2;
    cursor_size: nk_vec2;
    show_buttons: Integer;
    inc_button: nk_style_button;
    dec_button: nk_style_button;
    inc_symbol: nk_symbol_type;
    dec_symbol: nk_symbol_type;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  { nk_style_progress  }
  nk_style_progress = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    cursor_active: nk_style_item;
    cursor_border_color: nk_color;
    rounding: Single;
    border: Single;
    cursor_border: Single;
    cursor_rounding: Single;
    padding: nk_vec2;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  { nk_style_scrollbar  }
  nk_style_scrollbar = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    cursor_active: nk_style_item;
    cursor_border_color: nk_color;
    border: Single;
    rounding: Single;
    border_cursor: Single;
    rounding_cursor: Single;
    padding: nk_vec2;
    show_buttons: Integer;
    inc_button: nk_style_button;
    dec_button: nk_style_button;
    inc_symbol: nk_symbol_type;
    dec_symbol: nk_symbol_type;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  { nk_style_edit  }
  nk_style_edit = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    scrollbar: nk_style_scrollbar;
    cursor_normal: nk_color;
    cursor_hover: nk_color;
    cursor_text_normal: nk_color;
    cursor_text_hover: nk_color;
    text_normal: nk_color;
    text_hover: nk_color;
    text_active: nk_color;
    selected_normal: nk_color;
    selected_hover: nk_color;
    selected_text_normal: nk_color;
    selected_text_hover: nk_color;
    border: Single;
    rounding: Single;
    cursor_size: Single;
    scrollbar_size: nk_vec2;
    padding: nk_vec2;
    row_padding: Single;
  end;

  { nk_style_property  }
  nk_style_property = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    label_normal: nk_color;
    label_hover: nk_color;
    label_active: nk_color;
    sym_left: nk_symbol_type;
    sym_right: nk_symbol_type;
    border: Single;
    rounding: Single;
    padding: nk_vec2;
    edit: nk_style_edit;
    inc_button: nk_style_button;
    dec_button: nk_style_button;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  { nk_style_chart  }
  nk_style_chart = record
    background: nk_style_item;
    border_color: nk_color;
    selected_color: nk_color;
    color: nk_color;
    border: Single;
    rounding: Single;
    padding: nk_vec2;
  end;

  { nk_style_combo  }
  nk_style_combo = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    label_normal: nk_color;
    label_hover: nk_color;
    label_active: nk_color;
    symbol_normal: nk_color;
    symbol_hover: nk_color;
    symbol_active: nk_color;
    button: nk_style_button;
    sym_normal: nk_symbol_type;
    sym_hover: nk_symbol_type;
    sym_active: nk_symbol_type;
    border: Single;
    rounding: Single;
    content_padding: nk_vec2;
    button_padding: nk_vec2;
    spacing: nk_vec2;
  end;

  { nk_style_tab  }
  nk_style_tab = record
    background: nk_style_item;
    border_color: nk_color;
    text: nk_color;
    tab_maximize_button: nk_style_button;
    tab_minimize_button: nk_style_button;
    node_maximize_button: nk_style_button;
    node_minimize_button: nk_style_button;
    sym_minimize: nk_symbol_type;
    sym_maximize: nk_symbol_type;
    border: Single;
    rounding: Single;
    indent: Single;
    padding: nk_vec2;
    spacing: nk_vec2;
  end;

  { nk_style_window_header  }
  nk_style_window_header = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    close_button: nk_style_button;
    minimize_button: nk_style_button;
    close_symbol: nk_symbol_type;
    minimize_symbol: nk_symbol_type;
    maximize_symbol: nk_symbol_type;
    label_normal: nk_color;
    label_hover: nk_color;
    label_active: nk_color;
    align: nk_style_header_align;
    padding: nk_vec2;
    label_padding: nk_vec2;
    spacing: nk_vec2;
  end;

  { nk_style_window  }
  nk_style_window = record
    header: nk_style_window_header;
    fixed_background: nk_style_item;
    background: nk_color;
    border_color: nk_color;
    popup_border_color: nk_color;
    combo_border_color: nk_color;
    contextual_border_color: nk_color;
    menu_border_color: nk_color;
    group_border_color: nk_color;
    tooltip_border_color: nk_color;
    scaler: nk_style_item;
    border: Single;
    combo_border: Single;
    contextual_border: Single;
    menu_border: Single;
    group_border: Single;
    tooltip_border: Single;
    popup_border: Single;
    min_row_height_padding: Single;
    rounding: Single;
    spacing: nk_vec2;
    scrollbar_size: nk_vec2;
    min_size: nk_vec2;
    padding: nk_vec2;
    group_padding: nk_vec2;
    popup_padding: nk_vec2;
    combo_padding: nk_vec2;
    contextual_padding: nk_vec2;
    menu_padding: nk_vec2;
    tooltip_padding: nk_vec2;
  end;

  { nk_style  }
  nk_style = record
    font: Pnk_user_font;
    cursors: array [0..6] of Pnk_cursor;
    cursor_active: Pnk_cursor;
    cursor_last: Pnk_cursor;
    cursor_visible: Integer;
    text: nk_style_text;
    button: nk_style_button;
    contextual_button: nk_style_button;
    menu_button: nk_style_button;
    option: nk_style_toggle;
    checkbox: nk_style_toggle;
    selectable: nk_style_selectable;
    slider: nk_style_slider;
    progress: nk_style_progress;
    _property: nk_style_property;
    edit: nk_style_edit;
    chart: nk_style_chart;
    scrollh: nk_style_scrollbar;
    scrollv: nk_style_scrollbar;
    tab: nk_style_tab;
    combo: nk_style_combo;
    window: nk_style_window;
  end;

  { nk_chart_slot  }
  nk_chart_slot = record
    _type: nk_chart_type;
    color: nk_color;
    highlight: nk_color;
    min: Single;
    max: Single;
    range: Single;
    count: Integer;
    last: nk_vec2;
    index: Integer;
  end;

  { nk_chart  }
  nk_chart = record
    slot: Integer;
    x: Single;
    y: Single;
    w: Single;
    h: Single;
    slots: array [0..3] of nk_chart_slot;
  end;

  { nk_row_layout  }
  nk_row_layout = record
    _type: nk_panel_row_layout_type;
    index: Integer;
    height: Single;
    min_height: Single;
    columns: Integer;
    ratio: PSingle;
    item_width: Single;
    item_height: Single;
    item_offset: Single;
    filled: Single;
    item: nk_rect;
    tree_depth: Integer;
    templates: array [0..15] of Single;
  end;

  { nk_popup_buffer  }
  nk_popup_buffer = record
    _begin: nk_size;
    parent: nk_size;
    last: nk_size;
    _end: nk_size;
    active: nk_bool;
  end;

  { nk_menu_state  }
  nk_menu_state = record
    x: Single;
    y: Single;
    w: Single;
    h: Single;
    offset: nk_scroll;
  end;

  { nk_panel  }
  nk_panel = record
    _type: nk_panel_type;
    flags: nk_flags;
    bounds: nk_rect;
    offset_x: Pnk_uint;
    offset_y: Pnk_uint;
    at_x: Single;
    at_y: Single;
    max_x: Single;
    footer_height: Single;
    header_height: Single;
    border: Single;
    has_scrolling: Cardinal;
    clip: nk_rect;
    menu: nk_menu_state;
    row: nk_row_layout;
    chart: nk_chart;
    buffer: Pnk_command_buffer;
    parent: Pnk_panel;
  end;

  { nk_popup_state  }
  nk_popup_state = record
    win: Pnk_window;
    _type: nk_panel_type;
    buf: nk_popup_buffer;
    name: nk_hash;
    active: nk_bool;
    combo_count: Cardinal;
    con_count: Cardinal;
    con_old: Cardinal;
    active_con: Cardinal;
    header: nk_rect;
  end;

  { nk_edit_state  }
  nk_edit_state = record
    name: nk_hash;
    seq: Cardinal;
    old: Cardinal;
    active: Integer;
    prev: Integer;
    cursor: Integer;
    sel_start: Integer;
    sel_end: Integer;
    scrollbar: nk_scroll;
    mode: Byte;
    single_line: Byte;
  end;

  { nk_property_state  }
  nk_property_state = record
    active: Integer;
    prev: Integer;
    buffer: array [0..63] of UTF8Char;
    length: Integer;
    cursor: Integer;
    select_start: Integer;
    select_end: Integer;
    name: nk_hash;
    seq: Cardinal;
    old: Cardinal;
    state: Integer;
  end;

  { nk_window  }
  nk_window = record
    seq: Cardinal;
    name: nk_hash;
    name_string: array [0..63] of UTF8Char;
    flags: nk_flags;
    bounds: nk_rect;
    scrollbar: nk_scroll;
    buffer: nk_command_buffer;
    layout: Pnk_panel;
    scrollbar_hiding_timer: Single;
    _property: nk_property_state;
    popup: nk_popup_state;
    edit: nk_edit_state;
    scrolled: Cardinal;
    tables: Pnk_table;
    table_count: Cardinal;
    next: Pnk_window;
    prev: Pnk_window;
    parent: Pnk_window;
  end;

  { nk_config_stack_style_item_element  }
  nk_config_stack_style_item_element = record
    address: Pnk_style_item;
    old_value: nk_style_item;
  end;

  { nk_config_stack_float_element  }
  nk_config_stack_float_element = record
    address: PSingle;
    old_value: Single;
  end;

  { nk_config_stack_vec2_element  }
  nk_config_stack_vec2_element = record
    address: Pnk_vec2;
    old_value: nk_vec2;
  end;

  { nk_config_stack_flags_element  }
  nk_config_stack_flags_element = record
    address: Pnk_flags;
    old_value: nk_flags;
  end;

  { nk_config_stack_color_element  }
  nk_config_stack_color_element = record
    address: Pnk_color;
    old_value: nk_color;
  end;

  { nk_config_stack_user_font_element  }
  nk_config_stack_user_font_element = record
    address: PPnk_user_font;
    old_value: Pnk_user_font;
  end;

  { nk_config_stack_button_behavior_element  }
  nk_config_stack_button_behavior_element = record
    address: Pnk_button_behavior;
    old_value: nk_button_behavior;
  end;

  { nk_config_stack_style_item  }
  nk_config_stack_style_item = record
    head: Integer;
    elements: array [0..15] of nk_config_stack_style_item_element;
  end;

  { nk_config_stack_float  }
  nk_config_stack_float = record
    head: Integer;
    elements: array [0..31] of nk_config_stack_float_element;
  end;

  { nk_config_stack_vec2  }
  nk_config_stack_vec2 = record
    head: Integer;
    elements: array [0..15] of nk_config_stack_vec2_element;
  end;

  { nk_config_stack_flags  }
  nk_config_stack_flags = record
    head: Integer;
    elements: array [0..31] of nk_config_stack_flags_element;
  end;

  { nk_config_stack_color  }
  nk_config_stack_color = record
    head: Integer;
    elements: array [0..31] of nk_config_stack_color_element;
  end;

  { nk_config_stack_user_font  }
  nk_config_stack_user_font = record
    head: Integer;
    elements: array [0..7] of nk_config_stack_user_font_element;
  end;

  { nk_config_stack_button_behavior  }
  nk_config_stack_button_behavior = record
    head: Integer;
    elements: array [0..7] of nk_config_stack_button_behavior_element;
  end;

  { nk_configuration_stacks  }
  nk_configuration_stacks = record
    style_items: nk_config_stack_style_item;
    floats: nk_config_stack_float;
    vectors: nk_config_stack_vec2;
    flags: nk_config_stack_flags;
    colors: nk_config_stack_color;
    fonts: nk_config_stack_user_font;
    button_behaviors: nk_config_stack_button_behavior;
  end;

  { nk_table  }
  nk_table = record
    seq: Cardinal;
    size: Cardinal;
    keys: array [0..58] of nk_hash;
    values: array [0..58] of nk_uint;
    next: Pnk_table;
    prev: Pnk_table;
  end;

  { nk_page_data  }
  nk_page_data = record
    case Integer of
      0: (tbl: nk_table);
      1: (pan: nk_panel);
      2: (win: nk_window);
  end;

  { nk_page_element  }
  nk_page_element = record
    data: nk_page_data;
    next: Pnk_page_element;
    prev: Pnk_page_element;
  end;

  { nk_page  }
  nk_page = record
    size: Cardinal;
    next: Pnk_page;
    win: array [0..0] of nk_page_element;
  end;

  { nk_pool  }
  nk_pool = record
    alloc: nk_allocator;
    _type: nk_allocation_type;
    page_count: Cardinal;
    pages: Pnk_page;
    freelist: Pnk_page_element;
    capacity: Cardinal;
    size: nk_size;
    cap: nk_size;
  end;

  { nk_context  }
  nk_context = record
    input: nk_input;
    style: nk_style;
    memory: nk_buffer;
    clip: nk_clipboard;
    last_widget_state: nk_flags;
    button_behavior: nk_button_behavior;
    stacks: nk_configuration_stacks;
    delta_time_seconds: Single;
    text_edit: nk_text_edit;
    overlay: nk_command_buffer;
    build: Integer;
    use_pool: Integer;
    pool: nk_pool;
    _begin: Pnk_window;
    _end: Pnk_window;
    active: Pnk_window;
    current: Pnk_window;
    freelist: Pnk_page_element;
    count: Cardinal;
    seq: Cardinal;
  end;

  { PHYSFS_uint8  }
  PHYSFS_uint8 = Byte;

  { PHYSFS_sint8  }
  PHYSFS_sint8 = UTF8Char;

  { PHYSFS_uint16  }
  PHYSFS_uint16 = Word;

  { PPHYSFS_uint16  }
  PPHYSFS_uint16 = ^PHYSFS_uint16;

  { PHYSFS_sint16  }
  PHYSFS_sint16 = Smallint;

  { PPHYSFS_sint16  }
  PPHYSFS_sint16 = ^PHYSFS_sint16;

  { PHYSFS_uint32  }
  PHYSFS_uint32 = Cardinal;

  { PPHYSFS_uint32  }
  PPHYSFS_uint32 = ^PHYSFS_uint32;

  { PHYSFS_sint32  }
  PHYSFS_sint32 = Integer;

  { PPHYSFS_sint32  }
  PPHYSFS_sint32 = ^PHYSFS_sint32;

  { PHYSFS_sint64  }
  PHYSFS_sint64 = Int64;

  { PPHYSFS_sint64  }
  PPHYSFS_sint64 = ^PHYSFS_sint64;

  { PHYSFS_uint64  }
  PHYSFS_uint64 = UInt64;

  { PPHYSFS_uint64  }
  PPHYSFS_uint64 = ^PHYSFS_uint64;

  { PHYSFS_compile_time_assert_uint8IsOneByte  }
  PHYSFS_compile_time_assert_uint8IsOneByte = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_sint8IsOneByte  }
  PHYSFS_compile_time_assert_sint8IsOneByte = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_uint16IsTwoBytes  }
  PHYSFS_compile_time_assert_uint16IsTwoBytes = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_sint16IsTwoBytes  }
  PHYSFS_compile_time_assert_sint16IsTwoBytes = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_uint32IsFourBytes  }
  PHYSFS_compile_time_assert_uint32IsFourBytes = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_sint32IsFourBytes  }
  PHYSFS_compile_time_assert_sint32IsFourBytes = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_uint64IsEightBytes  }
  PHYSFS_compile_time_assert_uint64IsEightBytes = array [0..0] of Integer;

  { PHYSFS_compile_time_assert_sint64IsEightBytes  }
  PHYSFS_compile_time_assert_sint64IsEightBytes = array [0..0] of Integer;

  { PHYSFS_File  }
  PHYSFS_File = record
    opaque: Pointer;
  end;

  { PHYSFS_ArchiveInfo  }
  PHYSFS_ArchiveInfo = record
    extension: PUTF8Char;
    description: PUTF8Char;
    author: PUTF8Char;
    url: PUTF8Char;
    supportsSymlinks: Integer;
  end;

  { PHYSFS_Version  }
  PHYSFS_Version = record
    major: PHYSFS_uint8;
    minor: PHYSFS_uint8;
    patch: PHYSFS_uint8;
  end;

  { PHYSFS_Allocator  }
  PHYSFS_Allocator = record
    Init: function(): Integer; cdecl;
    Deinit: procedure(); cdecl;
    Malloc: function(p1: PHYSFS_uint64): Pointer; cdecl;
    Realloc: function(p1: Pointer; p2: PHYSFS_uint64): Pointer; cdecl;
    Free: procedure(p1: Pointer); cdecl;
  end;

  { PHYSFS_StringCallback  }
  PHYSFS_StringCallback = procedure(data: Pointer; const str: PUTF8Char); cdecl;

  { PHYSFS_EnumFilesCallback  }
  PHYSFS_EnumFilesCallback = procedure(data: Pointer; const origdir: PUTF8Char; const fname: PUTF8Char); cdecl;

  { PHYSFS_EnumerateCallback  }
  PHYSFS_EnumerateCallback = function(data: Pointer; const origdir: PUTF8Char; const fname: PUTF8Char): PHYSFS_EnumerateCallbackResult; cdecl;

  { PHYSFS_Stat_  }
  PHYSFS_Stat_ = record
    filesize: PHYSFS_sint64;
    modtime: PHYSFS_sint64;
    createtime: PHYSFS_sint64;
    accesstime: PHYSFS_sint64;
    filetype: PHYSFS_FileType;
    readonly: Integer;
  end;

  { PHYSFS_Io  }
  PHYSFS_Io = record
    version: PHYSFS_uint32;
    opaque: Pointer;
    read: function(io: PPHYSFS_Io; buf: Pointer; len: PHYSFS_uint64): PHYSFS_sint64; cdecl;
    write: function(io: PPHYSFS_Io; const buffer: Pointer; len: PHYSFS_uint64): PHYSFS_sint64; cdecl;
    seek: function(io: PPHYSFS_Io; offset: PHYSFS_uint64): Integer; cdecl;
    tell: function(io: PPHYSFS_Io): PHYSFS_sint64; cdecl;
    length: function(io: PPHYSFS_Io): PHYSFS_sint64; cdecl;
    duplicate: function(io: PPHYSFS_Io): PPHYSFS_Io; cdecl;
    flush: function(io: PPHYSFS_Io): Integer; cdecl;
    destroy: procedure(io: PPHYSFS_Io); cdecl;
  end;

  { PHYSFS_Archiver  }
  PHYSFS_Archiver = record
    version: PHYSFS_uint32;
    info: PHYSFS_ArchiveInfo;
    openArchive: function(io: PPHYSFS_Io; const name: PUTF8Char; forWrite: Integer; claimed: PInteger): Pointer; cdecl;
    enumerate: function(opaque: Pointer; const dirname: PUTF8Char; cb: PHYSFS_EnumerateCallback; const origdir: PUTF8Char; callbackdata: Pointer): PHYSFS_EnumerateCallbackResult; cdecl;
    openRead: function(opaque: Pointer; const fnm: PUTF8Char): PPHYSFS_Io; cdecl;
    openWrite: function(opaque: Pointer; const filename: PUTF8Char): PPHYSFS_Io; cdecl;
    openAppend: function(opaque: Pointer; const filename: PUTF8Char): PPHYSFS_Io; cdecl;
    remove: function(opaque: Pointer; const filename: PUTF8Char): Integer; cdecl;
    mkdir: function(opaque: Pointer; const filename: PUTF8Char): Integer; cdecl;
    stat: function(opaque: Pointer; const fn: PUTF8Char; stat: PPHYSFS_Stat_): Integer; cdecl;
    closeArchive: procedure(opaque: Pointer); cdecl;
  end;

  { Pplm_t  }
  Pplm_t = Pointer;

  { PPplm_t  }
  PPplm_t = ^Pplm_t;

  { Pplm_buffer_t  }
  Pplm_buffer_t = Pointer;

  { PPplm_buffer_t  }
  PPplm_buffer_t = ^Pplm_buffer_t;

  { Pplm_demux_t  }
  Pplm_demux_t = Pointer;

  { PPplm_demux_t  }
  PPplm_demux_t = ^Pplm_demux_t;

  { Pplm_video_t  }
  Pplm_video_t = Pointer;

  { PPplm_video_t  }
  PPplm_video_t = ^Pplm_video_t;

  { Pplm_audio_t  }
  Pplm_audio_t = Pointer;

  { PPplm_audio_t  }
  PPplm_audio_t = ^Pplm_audio_t;

  { plm_packet_t  }
  plm_packet_t = record
    _type: Integer;
    pts: Double;
    length: NativeUInt;
    data: PUInt8;
  end;

  { plm_plane_t  }
  plm_plane_t = record
    width: Cardinal;
    height: Cardinal;
    data: PUInt8;
  end;

  { plm_frame_t  }
  plm_frame_t = record
    time: Double;
    width: Cardinal;
    height: Cardinal;
    y: plm_plane_t;
    cr: plm_plane_t;
    cb: plm_plane_t;
  end;

  { plm_video_decode_callback  }
  plm_video_decode_callback = procedure(self: Pplm_t; frame: Pplm_frame_t; user: Pointer); cdecl;

  { plm_samples_t  }
  plm_samples_t = record
    time: Double;
    count: Cardinal;
    interleaved: array [0..2303] of Single;
  end;

  { plm_audio_decode_callback  }
  plm_audio_decode_callback = procedure(self: Pplm_t; samples: Pplm_samples_t; user: Pointer); cdecl;

  { plm_buffer_load_callback  }
  plm_buffer_load_callback = procedure(self: Pplm_buffer_t; user: Pointer); cdecl;

  { uInt  }
  uInt = Cardinal;

  { uLong  }
  uLong = Cardinal;

  { zipFile  }
  zipFile = Pointer;

  { tm_zip_s  }
  tm_zip_s = record
    tm_sec: uInt;
    tm_min: uInt;
    tm_hour: uInt;
    tm_mday: uInt;
    tm_mon: uInt;
    tm_year: uInt;
  end;

  { tm_zip  }
  tm_zip = tm_zip_s;

  { zip_fileinfo  }
  zip_fileinfo = record
    tmz_date: tm_zip;
    dosDate: uLong;
    internal_fa: uLong;
    external_fa: uLong;
  end;

  { zipcharpc  }
  zipcharpc = PUTF8Char;

  { sfThread_create_function  }
  sfThread_create_function = procedure(p1: Pointer); cdecl;

  { nk_plot_function_value_getter  }
  nk_plot_function_value_getter = function(user: Pointer; index: Integer): Single; cdecl;

  { nk_combo_callback_item_getter  }
  nk_combo_callback_item_getter = procedure(p1: Pointer; p2: Integer; p3: PPUTF8Char); cdecl;

  { nk_combobox_callback_item_getter  }
  nk_combobox_callback_item_getter = procedure(p1: Pointer; p2: Integer; p3: PPUTF8Char); cdecl;

  { PHYSFS_mountMemory_del  }
  PHYSFS_mountMemory_del = procedure(p1: Pointer); cdecl;

{$REGION 'Common Colors'}
const
  ALICEBLUE           : sfColor = (r:$F0; g:$F8; b:$FF; a:$FF);
  ANTIQUEWHITE        : sfColor = (r:$FA; g:$EB; b:$D7; a:$FF);
  AQUA                : sfColor = (r:$00; g:$FF; b:$FF; a:$FF);
  AQUAMARINE          : sfColor = (r:$7F; g:$FF; b:$D4; a:$FF);
  AZURE               : sfColor = (r:$F0; g:$FF; b:$FF; a:$FF);
  BEIGE               : sfColor = (r:$F5; g:$F5; b:$DC; a:$FF);
  BISQUE              : sfColor = (r:$FF; g:$E4; b:$C4; a:$FF);
  BLACK               : sfColor = (r:$00; g:$00; b:$00; a:$FF);
  BLANCHEDALMOND      : sfColor = (r:$FF; g:$EB; b:$CD; a:$FF);
  BLUE                : sfColor = (r:$00; g:$00; b:$FF; a:$FF);
  BLUEVIOLET          : sfColor = (r:$8A; g:$2B; b:$E2; a:$FF);
  BROWN               : sfColor = (r:$A5; g:$2A; b:$2A; a:$FF);
  BURLYWOOD           : sfColor = (r:$DE; g:$B8; b:$87; a:$FF);
  CADETBLUE           : sfColor = (r:$5F; g:$9E; b:$A0; a:$FF);
  CHARTREUSE          : sfColor = (r:$7F; g:$FF; b:$00; a:$FF);
  CHOCOLATE           : sfColor = (r:$D2; g:$69; b:$1E; a:$FF);
  CORAL               : sfColor = (r:$FF; g:$7F; b:$50; a:$FF);
  CORNFLOWERBLUE      : sfColor = (r:$64; g:$95; b:$ED; a:$FF);
  CORNSILK            : sfColor = (r:$FF; g:$F8; b:$DC; a:$FF);
  CRIMSON             : sfColor = (r:$DC; g:$14; b:$3C; a:$FF);
  CYAN                : sfColor = (r:$00; g:$FF; b:$FF; a:$FF);
  DARKBLUE            : sfColor = (r:$00; g:$00; b:$8B; a:$FF);
  DARKCYAN            : sfColor = (r:$00; g:$8B; b:$8B; a:$FF);
  DARKGOLDENROD       : sfColor = (r:$B8; g:$86; b:$0B; a:$FF);
  DARKGRAY            : sfColor = (r:$A9; g:$A9; b:$A9; a:$FF);
  DARKGREEN           : sfColor = (r:$00; g:$64; b:$00; a:$FF);
  DARKGREY            : sfColor = (r:$A9; g:$A9; b:$A9; a:$FF);
  DARKKHAKI           : sfColor = (r:$BD; g:$B7; b:$6B; a:$FF);
  DARKMAGENTA         : sfColor = (r:$8B; g:$00; b:$8B; a:$FF);
  DARKOLIVEGREEN      : sfColor = (r:$55; g:$6B; b:$2F; a:$FF);
  DARKORANGE          : sfColor = (r:$FF; g:$8C; b:$00; a:$FF);
  DARKORCHID          : sfColor = (r:$99; g:$32; b:$CC; a:$FF);
  DARKRED             : sfColor = (r:$8B; g:$00; b:$00; a:$FF);
  DARKSALMON          : sfColor = (r:$E9; g:$96; b:$7A; a:$FF);
  DARKSEAGREEN        : sfColor = (r:$8F; g:$BC; b:$8F; a:$FF);
  DARKSLATEBLUE       : sfColor = (r:$48; g:$3D; b:$8B; a:$FF);
  DARKSLATEGRAY       : sfColor = (r:$2F; g:$4F; b:$4F; a:$FF);
  DARKSLATEGREY       : sfColor = (r:$2F; g:$4F; b:$4F; a:$FF);
  DARKTURQUOISE       : sfColor = (r:$00; g:$CE; b:$D1; a:$FF);
  DARKVIOLET          : sfColor = (r:$94; g:$00; b:$D3; a:$FF);
  DEEPPINK            : sfColor = (r:$FF; g:$14; b:$93; a:$FF);
  DEEPSKYBLUE         : sfColor = (r:$00; g:$BF; b:$FF; a:$FF);
  DIMGRAY             : sfColor = (r:$69; g:$69; b:$69; a:$FF);
  DIMGREY             : sfColor = (r:$69; g:$69; b:$69; a:$FF);
  DODGERBLUE          : sfColor = (r:$1E; g:$90; b:$FF; a:$FF);
  FIREBRICK           : sfColor = (r:$B2; g:$22; b:$22; a:$FF);
  FLORALWHITE         : sfColor = (r:$FF; g:$FA; b:$F0; a:$FF);
  FORESTGREEN         : sfColor = (r:$22; g:$8B; b:$22; a:$FF);
  FUCHSIA             : sfColor = (r:$FF; g:$00; b:$FF; a:$FF);
  GAINSBORO           : sfColor = (r:$DC; g:$DC; b:$DC; a:$FF);
  GHOSTWHITE          : sfColor = (r:$F8; g:$F8; b:$FF; a:$FF);
  GOLD                : sfColor = (r:$FF; g:$D7; b:$00; a:$FF);
  GOLDENROD           : sfColor = (r:$DA; g:$A5; b:$20; a:$FF);
  GRAY                : sfColor = (r:$80; g:$80; b:$80; a:$FF);
  GREEN               : sfColor = (r:$00; g:$80; b:$00; a:$FF);
  GREENYELLOW         : sfColor = (r:$AD; g:$FF; b:$2F; a:$FF);
  GREY                : sfColor = (r:$80; g:$80; b:$80; a:$FF);
  HONEYDEW            : sfColor = (r:$F0; g:$FF; b:$F0; a:$FF);
  HOTPINK             : sfColor = (r:$FF; g:$69; b:$B4; a:$FF);
  INDIANRED           : sfColor = (r:$CD; g:$5C; b:$5C; a:$FF);
  INDIGO              : sfColor = (r:$4B; g:$00; b:$82; a:$FF);
  IVORY               : sfColor = (r:$FF; g:$FF; b:$F0; a:$FF);
  KHAKI               : sfColor = (r:$F0; g:$E6; b:$8C; a:$FF);
  LAVENDER            : sfColor = (r:$E6; g:$E6; b:$FA; a:$FF);
  LAVENDERBLUSH       : sfColor = (r:$FF; g:$F0; b:$F5; a:$FF);
  LAWNGREEN           : sfColor = (r:$7C; g:$FC; b:$00; a:$FF);
  LEMONCHIFFON        : sfColor = (r:$FF; g:$FA; b:$CD; a:$FF);
  LIGHTBLUE           : sfColor = (r:$AD; g:$D8; b:$E6; a:$FF);
  LIGHTCORAL          : sfColor = (r:$F0; g:$80; b:$80; a:$FF);
  LIGHTCYAN           : sfColor = (r:$E0; g:$FF; b:$FF; a:$FF);
  LIGHTGOLDENRODYELLOW: sfColor = (r:$FA; g:$FA; b:$D2; a:$FF);
  LIGHTGRAY           : sfColor = (r:$D3; g:$D3; b:$D3; a:$FF);
  LIGHTGREEN          : sfColor = (r:$90; g:$EE; b:$90; a:$FF);
  LIGHTGREY           : sfColor = (r:$D3; g:$D3; b:$D3; a:$FF);
  LIGHTPINK           : sfColor = (r:$FF; g:$B6; b:$C1; a:$FF);
  LIGHTSALMON         : sfColor = (r:$FF; g:$A0; b:$7A; a:$FF);
  LIGHTSEAGREEN       : sfColor = (r:$20; g:$B2; b:$AA; a:$FF);
  LIGHTSKYBLUE        : sfColor = (r:$87; g:$CE; b:$FA; a:$FF);
  LIGHTSLATEGRAY      : sfColor = (r:$77; g:$88; b:$99; a:$FF);
  LIGHTSLATEGREY      : sfColor = (r:$77; g:$88; b:$99; a:$FF);
  LIGHTSTEELBLUE      : sfColor = (r:$B0; g:$C4; b:$DE; a:$FF);
  LIGHTYELLOW         : sfColor = (r:$FF; g:$FF; b:$E0; a:$FF);
  LIME                : sfColor = (r:$00; g:$FF; b:$00; a:$FF);
  LIMEGREEN           : sfColor = (r:$32; g:$CD; b:$32; a:$FF);
  LINEN               : sfColor = (r:$FA; g:$F0; b:$E6; a:$FF);
  MAGENTA             : sfColor = (r:$FF; g:$00; b:$FF; a:$FF);
  MAROON              : sfColor = (r:$80; g:$00; b:$00; a:$FF);
  MEDIUMAQUAMARINE    : sfColor = (r:$66; g:$CD; b:$AA; a:$FF);
  MEDIUMBLUE          : sfColor = (r:$00; g:$00; b:$CD; a:$FF);
  MEDIUMORCHID        : sfColor = (r:$BA; g:$55; b:$D3; a:$FF);
  MEDIUMPURPLE        : sfColor = (r:$93; g:$70; b:$DB; a:$FF);
  MEDIUMSEAGREEN      : sfColor = (r:$3C; g:$B3; b:$71; a:$FF);
  MEDIUMSLATEBLUE     : sfColor = (r:$7B; g:$68; b:$EE; a:$FF);
  MEDIUMSPRINGGREEN   : sfColor = (r:$00; g:$FA; b:$9A; a:$FF);
  MEDIUMTURQUOISE     : sfColor = (r:$48; g:$D1; b:$CC; a:$FF);
  MEDIUMVIOLETRED     : sfColor = (r:$C7; g:$15; b:$85; a:$FF);
  MIDNIGHTBLUE        : sfColor = (r:$19; g:$19; b:$70; a:$FF);
  MINTCREAM           : sfColor = (r:$F5; g:$FF; b:$FA; a:$FF);
  MISTYROSE           : sfColor = (r:$FF; g:$E4; b:$E1; a:$FF);
  MOCCASIN            : sfColor = (r:$FF; g:$E4; b:$B5; a:$FF);
  NAVAJOWHITE         : sfColor = (r:$FF; g:$DE; b:$AD; a:$FF);
  NAVY                : sfColor = (r:$00; g:$00; b:$80; a:$FF);
  OLDLACE             : sfColor = (r:$FD; g:$F5; b:$E6; a:$FF);
  OLIVE               : sfColor = (r:$80; g:$80; b:$00; a:$FF);
  OLIVEDRAB           : sfColor = (r:$6B; g:$8E; b:$23; a:$FF);
  ORANGE              : sfColor = (r:$FF; g:$A5; b:$00; a:$FF);
  ORANGERED           : sfColor = (r:$FF; g:$45; b:$00; a:$FF);
  ORCHID              : sfColor = (r:$DA; g:$70; b:$D6; a:$FF);
  PALEGOLDENROD       : sfColor = (r:$EE; g:$E8; b:$AA; a:$FF);
  PALEGREEN           : sfColor = (r:$98; g:$FB; b:$98; a:$FF);
  PALETURQUOISE       : sfColor = (r:$AF; g:$EE; b:$EE; a:$FF);
  PALEVIOLETRED       : sfColor = (r:$DB; g:$70; b:$93; a:$FF);
  PAPAYAWHIP          : sfColor = (r:$FF; g:$EF; b:$D5; a:$FF);
  PEACHPUFF           : sfColor = (r:$FF; g:$DA; b:$B9; a:$FF);
  PERU                : sfColor = (r:$CD; g:$85; b:$3F; a:$FF);
  PINK                : sfColor = (r:$FF; g:$C0; b:$CB; a:$FF);
  PLUM                : sfColor = (r:$DD; g:$A0; b:$DD; a:$FF);
  POWDERBLUE          : sfColor = (r:$B0; g:$E0; b:$E6; a:$FF);
  PURPLE              : sfColor = (r:$80; g:$00; b:$80; a:$FF);
  REBECCAPURPLE       : sfColor = (r:$66; g:$33; b:$99; a:$FF);
  RED                 : sfColor = (r:$FF; g:$00; b:$00; a:$FF);
  ROSYBROWN           : sfColor = (r:$BC; g:$8F; b:$8F; a:$FF);
  ROYALBLUE           : sfColor = (r:$41; g:$69; b:$E1; a:$FF);
  SADDLEBROWN         : sfColor = (r:$8B; g:$45; b:$13; a:$FF);
  SALMON              : sfColor = (r:$FA; g:$80; b:$72; a:$FF);
  SANDYBROWN          : sfColor = (r:$F4; g:$A4; b:$60; a:$FF);
  SEAGREEN            : sfColor = (r:$2E; g:$8B; b:$57; a:$FF);
  SEASHELL            : sfColor = (r:$FF; g:$F5; b:$EE; a:$FF);
  SIENNA              : sfColor = (r:$A0; g:$52; b:$2D; a:$FF);
  SILVER              : sfColor = (r:$C0; g:$C0; b:$C0; a:$FF);
  SKYBLUE             : sfColor = (r:$87; g:$CE; b:$EB; a:$FF);
  SLATEBLUE           : sfColor = (r:$6A; g:$5A; b:$CD; a:$FF);
  SLATEGRAY           : sfColor = (r:$70; g:$80; b:$90; a:$FF);
  SLATEGREY           : sfColor = (r:$70; g:$80; b:$90; a:$FF);
  SNOW                : sfColor = (r:$FF; g:$FA; b:$FA; a:$FF);
  SPRINGGREEN         : sfColor = (r:$00; g:$FF; b:$7F; a:$FF);
  STEELBLUE           : sfColor = (r:$46; g:$82; b:$B4; a:$FF);
  TAN                 : sfColor = (r:$D2; g:$B4; b:$8C; a:$FF);
  TEAL                : sfColor = (r:$00; g:$80; b:$80; a:$FF);
  THISTLE             : sfColor = (r:$D8; g:$BF; b:$D8; a:$FF);
  TOMATO              : sfColor = (r:$FF; g:$63; b:$47; a:$FF);
  TURQUOISE           : sfColor = (r:$40; g:$E0; b:$D0; a:$FF);
  VIOLET              : sfColor = (r:$EE; g:$82; b:$EE; a:$FF);
  WHEAT               : sfColor = (r:$F5; g:$DE; b:$B3; a:$FF);
  WHITE               : sfColor = (r:$FF; g:$FF; b:$FF; a:$FF);
  WHITESMOKE          : sfColor = (r:$F5; g:$F5; b:$F5; a:$FF);
  YELLOW              : sfColor = (r:$FF; g:$FF; b:$00; a:$FF);
  YELLOWGREEN         : sfColor = (r:$9A; g:$CD; b:$32; a:$FF);
  BLANK               : sfColor = (r:$00; g:$00; b:$00; a:$00);
  WHITE2              : sfColor = (r:$F5; g:$F5; b:$F5; a:$FF);
  RED22               : sfColor = (r:$7E; g:$32; b:$3F; a:255);
  COLORKEY            : sfColor = (r:$FF; g:$00; b:$FF; a:$FF);
  OVERLAY1            : sfColor = (r:$00; g:$20; b:$29; a:$B4);
  OVERLAY2            : sfColor = (r:$01; g:$1B; b:$01; a:255);
  DIMWHITE            : sfColor = (r:$10; g:$10; b:$10; a:$10);
  DARKSLATEBROWN      : sfColor = (r:30;  g:31;  b:30;  a:1);
  RAYWHITE            : sfColor = (r:245; g:245; b:245; a:255);
{$ENDREGION}

{$REGION 'DLL Export Variables'}
var
  nk__begin: function(p1: Pnk_context): Pnk_command; cdecl;
  nk__next: function(p1: Pnk_context; const p2: Pnk_command): Pnk_command; cdecl;
  nk_begin: function(ctx: Pnk_context; const title: PUTF8Char; bounds: nk_rect; flags: nk_flags): nk_bool; cdecl;
  nk_begin_titled: function(ctx: Pnk_context; const name: PUTF8Char; const title: PUTF8Char; bounds: nk_rect; flags: nk_flags): nk_bool; cdecl;
  nk_buffer_clear: procedure(p1: Pnk_buffer); cdecl;
  nk_buffer_free: procedure(p1: Pnk_buffer); cdecl;
  nk_buffer_info: procedure(p1: Pnk_memory_status; p2: Pnk_buffer); cdecl;
  nk_buffer_init: procedure(p1: Pnk_buffer; const p2: Pnk_allocator; size: nk_size); cdecl;
  nk_buffer_init_default: procedure(p1: Pnk_buffer); cdecl;
  nk_buffer_init_fixed: procedure(p1: Pnk_buffer; memory: Pointer; size: nk_size); cdecl;
  nk_buffer_mark: procedure(p1: Pnk_buffer; _type: nk_buffer_allocation_type); cdecl;
  nk_buffer_memory: function(p1: Pnk_buffer): Pointer; cdecl;
  nk_buffer_memory_const: function(const p1: Pnk_buffer): Pointer; cdecl;
  nk_buffer_push: procedure(p1: Pnk_buffer; _type: nk_buffer_allocation_type; const memory: Pointer; size: nk_size; align: nk_size); cdecl;
  nk_buffer_reset: procedure(p1: Pnk_buffer; _type: nk_buffer_allocation_type); cdecl;
  nk_buffer_total: function(p1: Pnk_buffer): nk_size; cdecl;
  nk_button_color: function(p1: Pnk_context; p2: nk_color): nk_bool; cdecl;
  nk_button_image: function(p1: Pnk_context; img: nk_image): nk_bool; cdecl;
  nk_button_image_label: function(p1: Pnk_context; img: nk_image; const p3: PUTF8Char; text_alignment: nk_flags): nk_bool; cdecl;
  nk_button_image_label_styled: function(p1: Pnk_context; const p2: Pnk_style_button; img: nk_image; const p4: PUTF8Char; text_alignment: nk_flags): nk_bool; cdecl;
  nk_button_image_styled: function(p1: Pnk_context; const p2: Pnk_style_button; img: nk_image): nk_bool; cdecl;
  nk_button_image_text: function(p1: Pnk_context; img: nk_image; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_image_text_styled: function(p1: Pnk_context; const p2: Pnk_style_button; img: nk_image; const p4: PUTF8Char; p5: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_label: function(p1: Pnk_context; const title: PUTF8Char): nk_bool; cdecl;
  nk_button_label_styled: function(p1: Pnk_context; const p2: Pnk_style_button; const title: PUTF8Char): nk_bool; cdecl;
  nk_button_pop_behavior: function(p1: Pnk_context): nk_bool; cdecl;
  nk_button_push_behavior: function(p1: Pnk_context; p2: nk_button_behavior): nk_bool; cdecl;
  nk_button_set_behavior: procedure(p1: Pnk_context; p2: nk_button_behavior); cdecl;
  nk_button_symbol: function(p1: Pnk_context; p2: nk_symbol_type): nk_bool; cdecl;
  nk_button_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; text_alignment: nk_flags): nk_bool; cdecl;
  nk_button_symbol_label_styled: function(ctx: Pnk_context; const style: Pnk_style_button; symbol: nk_symbol_type; const title: PUTF8Char; align: nk_flags): nk_bool; cdecl;
  nk_button_symbol_styled: function(p1: Pnk_context; const p2: Pnk_style_button; p3: nk_symbol_type): nk_bool; cdecl;
  nk_button_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_symbol_text_styled: function(p1: Pnk_context; const p2: Pnk_style_button; p3: nk_symbol_type; const p4: PUTF8Char; p5: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_text: function(p1: Pnk_context; const title: PUTF8Char; len: Integer): nk_bool; cdecl;
  nk_button_text_styled: function(p1: Pnk_context; const p2: Pnk_style_button; const title: PUTF8Char; len: Integer): nk_bool; cdecl;
  nk_chart_add_slot: procedure(ctx: Pnk_context; const p2: nk_chart_type; count: Integer; min_value: Single; max_value: Single); cdecl;
  nk_chart_add_slot_colored: procedure(ctx: Pnk_context; const p2: nk_chart_type; p3: nk_color; active: nk_color; count: Integer; min_value: Single; max_value: Single); cdecl;
  nk_chart_begin: function(p1: Pnk_context; p2: nk_chart_type; num: Integer; min: Single; max: Single): nk_bool; cdecl;
  nk_chart_begin_colored: function(p1: Pnk_context; p2: nk_chart_type; p3: nk_color; active: nk_color; num: Integer; min: Single; max: Single): nk_bool; cdecl;
  nk_chart_end: procedure(p1: Pnk_context); cdecl;
  nk_chart_push: function(p1: Pnk_context; p2: Single): nk_flags; cdecl;
  nk_chart_push_slot: function(p1: Pnk_context; p2: Single; p3: Integer): nk_flags; cdecl;
  nk_check_flags_label: function(p1: Pnk_context; const p2: PUTF8Char; flags: Cardinal; value: Cardinal): Cardinal; cdecl;
  nk_check_flags_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; flags: Cardinal; value: Cardinal): Cardinal; cdecl;
  nk_check_label: function(p1: Pnk_context; const p2: PUTF8Char; active: nk_bool): nk_bool; cdecl;
  nk_check_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: nk_bool): nk_bool; cdecl;
  nk_checkbox_flags_label: function(p1: Pnk_context; const p2: PUTF8Char; flags: PCardinal; value: Cardinal): nk_bool; cdecl;
  nk_checkbox_flags_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; flags: PCardinal; value: Cardinal): nk_bool; cdecl;
  nk_checkbox_label: function(p1: Pnk_context; const p2: PUTF8Char; active: Pnk_bool): nk_bool; cdecl;
  nk_checkbox_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: Pnk_bool): nk_bool; cdecl;
  nk_clear: procedure(p1: Pnk_context); cdecl;
  nk_color_cf: function(p1: nk_color): nk_colorf; cdecl;
  nk_color_d: procedure(r: PDouble; g: PDouble; b: PDouble; a: PDouble; p5: nk_color); cdecl;
  nk_color_dv: procedure(rgba_out: PDouble; p2: nk_color); cdecl;
  nk_color_f: procedure(r: PSingle; g: PSingle; b: PSingle; a: PSingle; p5: nk_color); cdecl;
  nk_color_fv: procedure(rgba_out: PSingle; p2: nk_color); cdecl;
  nk_color_hex_rgb: procedure(output: PUTF8Char; p2: nk_color); cdecl;
  nk_color_hex_rgba: procedure(output: PUTF8Char; p2: nk_color); cdecl;
  nk_color_hsv_b: procedure(out_h: Pnk_byte; out_s: Pnk_byte; out_v: Pnk_byte; p4: nk_color); cdecl;
  nk_color_hsv_bv: procedure(hsv_out: Pnk_byte; p2: nk_color); cdecl;
  nk_color_hsv_f: procedure(out_h: PSingle; out_s: PSingle; out_v: PSingle; p4: nk_color); cdecl;
  nk_color_hsv_fv: procedure(hsv_out: PSingle; p2: nk_color); cdecl;
  nk_color_hsv_i: procedure(out_h: PInteger; out_s: PInteger; out_v: PInteger; p4: nk_color); cdecl;
  nk_color_hsv_iv: procedure(hsv_out: PInteger; p2: nk_color); cdecl;
  nk_color_hsva_b: procedure(h: Pnk_byte; s: Pnk_byte; v: Pnk_byte; a: Pnk_byte; p5: nk_color); cdecl;
  nk_color_hsva_bv: procedure(hsva_out: Pnk_byte; p2: nk_color); cdecl;
  nk_color_hsva_f: procedure(out_h: PSingle; out_s: PSingle; out_v: PSingle; out_a: PSingle; p5: nk_color); cdecl;
  nk_color_hsva_fv: procedure(hsva_out: PSingle; p2: nk_color); cdecl;
  nk_color_hsva_i: procedure(h: PInteger; s: PInteger; v: PInteger; a: PInteger; p5: nk_color); cdecl;
  nk_color_hsva_iv: procedure(hsva_out: PInteger; p2: nk_color); cdecl;
  nk_color_pick: function(p1: Pnk_context; p2: Pnk_colorf; p3: nk_color_format): nk_bool; cdecl;
  nk_color_picker: function(p1: Pnk_context; p2: nk_colorf; p3: nk_color_format): nk_colorf; cdecl;
  nk_color_u32: function(p1: nk_color): nk_uint; cdecl;
  nk_colorf_hsva_f: procedure(out_h: PSingle; out_s: PSingle; out_v: PSingle; out_a: PSingle; _in: nk_colorf); cdecl;
  nk_colorf_hsva_fv: procedure(hsva: PSingle; _in: nk_colorf); cdecl;
  nk_combo: function(p1: Pnk_context; items: PPUTF8Char; count: Integer; selected: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combo_begin_color: function(p1: Pnk_context; color: nk_color; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_image: function(p1: Pnk_context; img: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_image_label: function(p1: Pnk_context; const selected: PUTF8Char; p3: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_image_text: function(p1: Pnk_context; const selected: PUTF8Char; p3: Integer; p4: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_label: function(p1: Pnk_context; const selected: PUTF8Char; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_symbol: function(p1: Pnk_context; p2: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_symbol_label: function(p1: Pnk_context; const selected: PUTF8Char; p3: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_symbol_text: function(p1: Pnk_context; const selected: PUTF8Char; p3: Integer; p4: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_text: function(p1: Pnk_context; const selected: PUTF8Char; p3: Integer; size: nk_vec2): nk_bool; cdecl;
  nk_combo_callback: function(p1: Pnk_context; item_getter: nk_combo_callback_item_getter; userdata: Pointer; selected: Integer; count: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combo_close: procedure(p1: Pnk_context); cdecl;
  nk_combo_end: procedure(p1: Pnk_context); cdecl;
  nk_combo_item_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_label: function(p1: Pnk_context; const p2: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_separator: function(p1: Pnk_context; const items_separated_by_separator: PUTF8Char; separator: Integer; selected: Integer; count: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combo_string: function(p1: Pnk_context; const items_separated_by_zeros: PUTF8Char; selected: Integer; count: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combobox: procedure(p1: Pnk_context; items: PPUTF8Char; count: Integer; selected: PInteger; item_height: Integer; size: nk_vec2); cdecl;
  nk_combobox_callback: procedure(p1: Pnk_context; item_getter: nk_combobox_callback_item_getter; p3: Pointer; selected: PInteger; count: Integer; item_height: Integer; size: nk_vec2); cdecl;
  nk_combobox_separator: procedure(p1: Pnk_context; const items_separated_by_separator: PUTF8Char; separator: Integer; selected: PInteger; count: Integer; item_height: Integer; size: nk_vec2); cdecl;
  nk_combobox_string: procedure(p1: Pnk_context; const items_separated_by_zeros: PUTF8Char; selected: PInteger; count: Integer; item_height: Integer; size: nk_vec2); cdecl;
  nk_contextual_begin: function(p1: Pnk_context; p2: nk_flags; p3: nk_vec2; trigger_bounds: nk_rect): nk_bool; cdecl;
  nk_contextual_close: procedure(p1: Pnk_context); cdecl;
  nk_contextual_end: procedure(p1: Pnk_context); cdecl;
  nk_contextual_item_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; len: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags): nk_bool; cdecl;
  nk_contextual_item_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags): nk_bool; cdecl;
  nk_draw_image: procedure(p1: Pnk_command_buffer; p2: nk_rect; const p3: Pnk_image; p4: nk_color); cdecl;
  nk_draw_nine_slice: procedure(p1: Pnk_command_buffer; p2: nk_rect; const p3: Pnk_nine_slice; p4: nk_color); cdecl;
  nk_draw_text: procedure(p1: Pnk_command_buffer; p2: nk_rect; const text: PUTF8Char; len: Integer; const p5: Pnk_user_font; p6: nk_color; p7: nk_color); cdecl;
  nk_edit_buffer: function(p1: Pnk_context; p2: nk_flags; p3: Pnk_text_edit; p4: nk_plugin_filter): nk_flags; cdecl;
  nk_edit_focus: procedure(p1: Pnk_context; flags: nk_flags); cdecl;
  nk_edit_string: function(p1: Pnk_context; p2: nk_flags; buffer: PUTF8Char; len: PInteger; max: Integer; p6: nk_plugin_filter): nk_flags; cdecl;
  nk_edit_string_zero_terminated: function(p1: Pnk_context; p2: nk_flags; buffer: PUTF8Char; max: Integer; p5: nk_plugin_filter): nk_flags; cdecl;
  nk_edit_unfocus: procedure(p1: Pnk_context); cdecl;
  nk_end: procedure(ctx: Pnk_context); cdecl;
  nk_fill_arc: procedure(p1: Pnk_command_buffer; cx: Single; cy: Single; radius: Single; a_min: Single; a_max: Single; p7: nk_color); cdecl;
  nk_fill_circle: procedure(p1: Pnk_command_buffer; p2: nk_rect; p3: nk_color); cdecl;
  nk_fill_polygon: procedure(p1: Pnk_command_buffer; p2: PSingle; point_count: Integer; p4: nk_color); cdecl;
  nk_fill_rect: procedure(p1: Pnk_command_buffer; p2: nk_rect; rounding: Single; p4: nk_color); cdecl;
  nk_fill_rect_multi_color: procedure(p1: Pnk_command_buffer; p2: nk_rect; left: nk_color; top: nk_color; right: nk_color; bottom: nk_color); cdecl;
  nk_fill_triangle: procedure(p1: Pnk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; x2: Single; y2: Single; p8: nk_color); cdecl;
  nk_filter_ascii: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_binary: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_decimal: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_default: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_float: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_hex: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_oct: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_font_atlas_add: function(p1: Pnk_font_atlas; const p2: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_compressed: function(p1: Pnk_font_atlas; memory: Pointer; size: nk_size; height: Single; const p5: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_compressed_base85: function(p1: Pnk_font_atlas; const data: PUTF8Char; height: Single; const config: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_default: function(p1: Pnk_font_atlas; height: Single; const p3: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_from_file: function(atlas: Pnk_font_atlas; const file_path: PUTF8Char; height: Single; const p4: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_from_memory: function(atlas: Pnk_font_atlas; memory: Pointer; size: nk_size; height: Single; const config: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_bake: function(p1: Pnk_font_atlas; width: PInteger; height: PInteger; p4: nk_font_atlas_format): Pointer; cdecl;
  nk_font_atlas_begin: procedure(p1: Pnk_font_atlas); cdecl;
  nk_font_atlas_cleanup: procedure(atlas: Pnk_font_atlas); cdecl;
  nk_font_atlas_clear: procedure(p1: Pnk_font_atlas); cdecl;
  nk_font_atlas_end: procedure(p1: Pnk_font_atlas; tex: nk_handle; p3: Pnk_draw_null_texture); cdecl;
  nk_font_atlas_init: procedure(p1: Pnk_font_atlas; p2: Pnk_allocator); cdecl;
  nk_font_atlas_init_custom: procedure(p1: Pnk_font_atlas; persistent: Pnk_allocator; transient: Pnk_allocator); cdecl;
  nk_font_atlas_init_default: procedure(p1: Pnk_font_atlas); cdecl;
  nk_font_chinese_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_config_: function(pixel_height: Single): nk_font_config; cdecl;
  nk_font_cyrillic_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_default_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_find_glyph: function(p1: Pnk_font; unicode: nk_rune): Pnk_font_glyph; cdecl;
  nk_font_korean_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_free: procedure(p1: Pnk_context); cdecl;
  nk_get_null_rect: function(): nk_rect; cdecl;
  nk_group_begin: function(p1: Pnk_context; const title: PUTF8Char; p3: nk_flags): nk_bool; cdecl;
  nk_group_begin_titled: function(p1: Pnk_context; const name: PUTF8Char; const title: PUTF8Char; p4: nk_flags): nk_bool; cdecl;
  nk_group_end: procedure(p1: Pnk_context); cdecl;
  nk_group_get_scroll: procedure(p1: Pnk_context; const id: PUTF8Char; x_offset: Pnk_uint; y_offset: Pnk_uint); cdecl;
  nk_group_scrolled_begin: function(p1: Pnk_context; off: Pnk_scroll; const title: PUTF8Char; p4: nk_flags): nk_bool; cdecl;
  nk_group_scrolled_end: procedure(p1: Pnk_context); cdecl;
  nk_group_scrolled_offset_begin: function(p1: Pnk_context; x_offset: Pnk_uint; y_offset: Pnk_uint; const title: PUTF8Char; flags: nk_flags): nk_bool; cdecl;
  nk_group_set_scroll: procedure(p1: Pnk_context; const id: PUTF8Char; x_offset: nk_uint; y_offset: nk_uint); cdecl;
  nk_handle_id: function(p1: Integer): nk_handle; cdecl;
  nk_handle_ptr: function(p1: Pointer): nk_handle; cdecl;
  nk_hsv: function(h: Integer; s: Integer; v: Integer): nk_color; cdecl;
  nk_hsv_bv: function(const hsv: Pnk_byte): nk_color; cdecl;
  nk_hsv_f: function(h: Single; s: Single; v: Single): nk_color; cdecl;
  nk_hsv_fv: function(const hsv: PSingle): nk_color; cdecl;
  nk_hsv_iv: function(const hsv: PInteger): nk_color; cdecl;
  nk_hsva: function(h: Integer; s: Integer; v: Integer; a: Integer): nk_color; cdecl;
  nk_hsva_bv: function(const hsva: Pnk_byte): nk_color; cdecl;
  nk_hsva_colorf: function(h: Single; s: Single; v: Single; a: Single): nk_colorf; cdecl;
  nk_hsva_colorfv: function(c: PSingle): nk_colorf; cdecl;
  nk_hsva_f: function(h: Single; s: Single; v: Single; a: Single): nk_color; cdecl;
  nk_hsva_fv: function(const hsva: PSingle): nk_color; cdecl;
  nk_hsva_iv: function(const hsva: PInteger): nk_color; cdecl;
  nk_image_: procedure(p1: Pnk_context; p2: nk_image); cdecl;
  nk_image_color: procedure(p1: Pnk_context; p2: nk_image; p3: nk_color); cdecl;
  nk_image_handle: function(p1: nk_handle): nk_image; cdecl;
  nk_image_id: function(p1: Integer): nk_image; cdecl;
  nk_image_is_subimage: function(const img: Pnk_image): nk_bool; cdecl;
  nk_image_ptr: function(p1: Pointer): nk_image; cdecl;
  nk_init: function(p1: Pnk_context; p2: Pnk_allocator; const p3: Pnk_user_font): nk_bool; cdecl;
  nk_init_custom: function(p1: Pnk_context; cmds: Pnk_buffer; pool: Pnk_buffer; const p4: Pnk_user_font): nk_bool; cdecl;
  nk_init_default: function(p1: Pnk_context; const p2: Pnk_user_font): nk_bool; cdecl;
  nk_init_fixed: function(p1: Pnk_context; memory: Pointer; size: nk_size; const p4: Pnk_user_font): nk_bool; cdecl;
  nk_input_any_mouse_click_in_rect: function(const p1: Pnk_input; p2: nk_rect): nk_bool; cdecl;
  nk_input_begin: procedure(p1: Pnk_context); cdecl;
  nk_input_button: procedure(p1: Pnk_context; p2: nk_buttons; x: Integer; y: Integer; down: nk_bool); cdecl;
  nk_input_char: procedure(p1: Pnk_context; p2: UTF8Char); cdecl;
  nk_input_end: procedure(p1: Pnk_context); cdecl;
  nk_input_glyph: procedure(p1: Pnk_context; const p2: nk_glyph); cdecl;
  nk_input_has_mouse_click: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_has_mouse_click_down_in_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect; down: nk_bool): nk_bool; cdecl;
  nk_input_has_mouse_click_in_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_is_key_down: function(const p1: Pnk_input; p2: nk_keys): nk_bool; cdecl;
  nk_input_is_key_pressed: function(const p1: Pnk_input; p2: nk_keys): nk_bool; cdecl;
  nk_input_is_key_released: function(const p1: Pnk_input; p2: nk_keys): nk_bool; cdecl;
  nk_input_is_mouse_click_down_in_rect: function(const i: Pnk_input; id: nk_buttons; b: nk_rect; down: nk_bool): nk_bool; cdecl;
  nk_input_is_mouse_click_in_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_down: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_is_mouse_hovering_rect: function(const p1: Pnk_input; p2: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_pressed: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_is_mouse_prev_hovering_rect: function(const p1: Pnk_input; p2: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_released: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_key: procedure(p1: Pnk_context; p2: nk_keys; down: nk_bool); cdecl;
  nk_input_motion: procedure(p1: Pnk_context; x: Integer; y: Integer); cdecl;
  nk_input_mouse_clicked: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_scroll: procedure(p1: Pnk_context; val: nk_vec2); cdecl;
  nk_input_unicode: procedure(p1: Pnk_context; p2: nk_rune); cdecl;
  nk_item_is_any_active: function(p1: Pnk_context): nk_bool; cdecl;
  nk_label: procedure(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags); cdecl;
  nk_label_colored: procedure(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; p4: nk_color); cdecl;
  nk_label_colored_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: nk_color); cdecl;
  nk_label_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char); cdecl;
  nk_labelf: procedure(p1: Pnk_context; p2: nk_flags; const p3: PUTF8Char) varargs; cdecl;
  nk_labelf_colored: procedure(p1: Pnk_context; p2: nk_flags; p3: nk_color; const p4: PUTF8Char) varargs; cdecl;
  nk_labelf_colored_wrap: procedure(p1: Pnk_context; p2: nk_color; const p3: PUTF8Char) varargs; cdecl;
  nk_labelf_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char) varargs; cdecl;
  nk_labelfv: procedure(p1: Pnk_context; p2: nk_flags; const p3: PUTF8Char; p4: Pointer); cdecl;
  nk_labelfv_colored: procedure(p1: Pnk_context; p2: nk_flags; p3: nk_color; const p4: PUTF8Char; p5: Pointer); cdecl;
  nk_labelfv_colored_wrap: procedure(p1: Pnk_context; p2: nk_color; const p3: PUTF8Char; p4: Pointer); cdecl;
  nk_labelfv_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Pointer); cdecl;
  nk_layout_ratio_from_pixel: function(p1: Pnk_context; pixel_width: Single): Single; cdecl;
  nk_layout_reset_min_row_height: procedure(p1: Pnk_context); cdecl;
  nk_layout_row: procedure(p1: Pnk_context; p2: nk_layout_format; height: Single; cols: Integer; const ratio: PSingle); cdecl;
  nk_layout_row_begin: procedure(ctx: Pnk_context; fmt: nk_layout_format; row_height: Single; cols: Integer); cdecl;
  nk_layout_row_dynamic: procedure(ctx: Pnk_context; height: Single; cols: Integer); cdecl;
  nk_layout_row_end: procedure(p1: Pnk_context); cdecl;
  nk_layout_row_push: procedure(p1: Pnk_context; value: Single); cdecl;
  nk_layout_row_static: procedure(ctx: Pnk_context; height: Single; item_width: Integer; cols: Integer); cdecl;
  nk_layout_row_template_begin: procedure(p1: Pnk_context; row_height: Single); cdecl;
  nk_layout_row_template_end: procedure(p1: Pnk_context); cdecl;
  nk_layout_row_template_push_dynamic: procedure(p1: Pnk_context); cdecl;
  nk_layout_row_template_push_static: procedure(p1: Pnk_context; width: Single); cdecl;
  nk_layout_row_template_push_variable: procedure(p1: Pnk_context; min_width: Single); cdecl;
  nk_layout_set_min_row_height: procedure(p1: Pnk_context; height: Single); cdecl;
  nk_layout_space_begin: procedure(p1: Pnk_context; p2: nk_layout_format; height: Single; widget_count: Integer); cdecl;
  nk_layout_space_bounds: function(p1: Pnk_context): nk_rect; cdecl;
  nk_layout_space_end: procedure(p1: Pnk_context); cdecl;
  nk_layout_space_push: procedure(p1: Pnk_context; bounds: nk_rect); cdecl;
  nk_layout_space_rect_to_local: function(p1: Pnk_context; p2: nk_rect): nk_rect; cdecl;
  nk_layout_space_rect_to_screen: function(p1: Pnk_context; p2: nk_rect): nk_rect; cdecl;
  nk_layout_space_to_local: function(p1: Pnk_context; p2: nk_vec2): nk_vec2; cdecl;
  nk_layout_space_to_screen: function(p1: Pnk_context; p2: nk_vec2): nk_vec2; cdecl;
  nk_layout_widget_bounds: function(p1: Pnk_context): nk_rect; cdecl;
  nk_list_view_begin: function(p1: Pnk_context; _out: Pnk_list_view; const id: PUTF8Char; p4: nk_flags; row_height: Integer; row_count: Integer): nk_bool; cdecl;
  nk_list_view_end: procedure(p1: Pnk_list_view); cdecl;
  nk_menu_begin_image: function(p1: Pnk_context; const p2: PUTF8Char; p3: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_image_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; p4: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_image_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; p5: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_symbol: function(p1: Pnk_context; const p2: PUTF8Char; p3: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_symbol_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; p4: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_symbol_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; p5: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_text: function(p1: Pnk_context; const title: PUTF8Char; title_len: Integer; align: nk_flags; size: nk_vec2): nk_bool; cdecl;
  nk_menu_close: procedure(p1: Pnk_context); cdecl;
  nk_menu_end: procedure(p1: Pnk_context); cdecl;
  nk_menu_item_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; len: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_label: function(p1: Pnk_context; const p2: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags): nk_bool; cdecl;
  nk_menubar_begin: procedure(p1: Pnk_context); cdecl;
  nk_menubar_end: procedure(p1: Pnk_context); cdecl;
  nk_murmur_hash: function(const key: Pointer; len: Integer; seed: nk_hash): nk_hash; cdecl;
  nk_nine_slice_handle: function(p1: nk_handle; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_nine_slice_id: function(p1: Integer; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_nine_slice_is_sub9slice: function(const img: Pnk_nine_slice): Integer; cdecl;
  nk_nine_slice_ptr: function(p1: Pointer; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_option_label: function(p1: Pnk_context; const p2: PUTF8Char; active: nk_bool): nk_bool; cdecl;
  nk_option_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: nk_bool): nk_bool; cdecl;
  nk_plot: procedure(p1: Pnk_context; p2: nk_chart_type; const values: PSingle; count: Integer; offset: Integer); cdecl;
  nk_plot_function: procedure(p1: Pnk_context; p2: nk_chart_type; userdata: Pointer; value_getter: nk_plot_function_value_getter; count: Integer; offset: Integer); cdecl;
  nk_popup_begin: function(p1: Pnk_context; p2: nk_popup_type; const p3: PUTF8Char; p4: nk_flags; bounds: nk_rect): nk_bool; cdecl;
  nk_popup_close: procedure(p1: Pnk_context); cdecl;
  nk_popup_end: procedure(p1: Pnk_context); cdecl;
  nk_popup_get_scroll: procedure(p1: Pnk_context; offset_x: Pnk_uint; offset_y: Pnk_uint); cdecl;
  nk_popup_set_scroll: procedure(p1: Pnk_context; offset_x: nk_uint; offset_y: nk_uint); cdecl;
  nk_prog: function(p1: Pnk_context; cur: nk_size; max: nk_size; modifyable: nk_bool): nk_size; cdecl;
  nk_progress: function(p1: Pnk_context; cur: Pnk_size; max: nk_size; modifyable: nk_bool): nk_bool; cdecl;
  nk_property_double: procedure(p1: Pnk_context; const name: PUTF8Char; min: Double; val: PDouble; max: Double; step: Double; inc_per_pixel: Single); cdecl;
  nk_property_float: procedure(p1: Pnk_context; const name: PUTF8Char; min: Single; val: PSingle; max: Single; step: Single; inc_per_pixel: Single); cdecl;
  nk_property_int: procedure(p1: Pnk_context; const name: PUTF8Char; min: Integer; val: PInteger; max: Integer; step: Integer; inc_per_pixel: Single); cdecl;
  nk_propertyd: function(p1: Pnk_context; const name: PUTF8Char; min: Double; val: Double; max: Double; step: Double; inc_per_pixel: Single): Double; cdecl;
  nk_propertyf: function(p1: Pnk_context; const name: PUTF8Char; min: Single; val: Single; max: Single; step: Single; inc_per_pixel: Single): Single; cdecl;
  nk_propertyi: function(p1: Pnk_context; const name: PUTF8Char; min: Integer; val: Integer; max: Integer; step: Integer; inc_per_pixel: Single): Integer; cdecl;
  nk_push_custom: procedure(p1: Pnk_command_buffer; p2: nk_rect; p3: nk_command_custom_callback; usr: nk_handle); cdecl;
  nk_push_scissor: procedure(p1: Pnk_command_buffer; p2: nk_rect); cdecl;
  nk_radio_label: function(p1: Pnk_context; const p2: PUTF8Char; active: Pnk_bool): nk_bool; cdecl;
  nk_radio_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: Pnk_bool): nk_bool; cdecl;
  nk_rect_: function(x: Single; y: Single; w: Single; h: Single): nk_rect; cdecl;
  nk_rect_pos: function(p1: nk_rect): nk_vec2; cdecl;
  nk_rect_size: function(p1: nk_rect): nk_vec2; cdecl;
  nk_recta: function(pos: nk_vec2; size: nk_vec2): nk_rect; cdecl;
  nk_recti_: function(x: Integer; y: Integer; w: Integer; h: Integer): nk_rect; cdecl;
  nk_rectiv: function(const xywh: PInteger): nk_rect; cdecl;
  nk_rectv: function(const xywh: PSingle): nk_rect; cdecl;
  nk_rgb_: function(r: Integer; g: Integer; b: Integer): nk_color; cdecl;
  nk_rgb_bv: function(const rgb: Pnk_byte): nk_color; cdecl;
  nk_rgb_cf: function(c: nk_colorf): nk_color; cdecl;
  nk_rgb_f: function(r: Single; g: Single; b: Single): nk_color; cdecl;
  nk_rgb_fv: function(const rgb: PSingle): nk_color; cdecl;
  nk_rgb_hex: function(const rgb: PUTF8Char): nk_color; cdecl;
  nk_rgb_iv: function(const rgb: PInteger): nk_color; cdecl;
  nk_rgba_: function(r: Integer; g: Integer; b: Integer; a: Integer): nk_color; cdecl;
  nk_rgba_bv: function(const rgba: Pnk_byte): nk_color; cdecl;
  nk_rgba_cf: function(c: nk_colorf): nk_color; cdecl;
  nk_rgba_f: function(r: Single; g: Single; b: Single; a: Single): nk_color; cdecl;
  nk_rgba_fv: function(const rgba: PSingle): nk_color; cdecl;
  nk_rgba_hex: function(const rgb: PUTF8Char): nk_color; cdecl;
  nk_rgba_iv: function(const rgba: PInteger): nk_color; cdecl;
  nk_rgba_u32: function(p1: nk_uint): nk_color; cdecl;
  nk_select_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_selectable_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_slide_float: function(p1: Pnk_context; min: Single; val: Single; max: Single; step: Single): Single; cdecl;
  nk_slide_int: function(p1: Pnk_context; min: Integer; val: Integer; max: Integer; step: Integer): Integer; cdecl;
  nk_slider_float: function(p1: Pnk_context; min: Single; val: PSingle; max: Single; step: Single): nk_bool; cdecl;
  nk_slider_int: function(p1: Pnk_context; min: Integer; val: PInteger; max: Integer; step: Integer): nk_bool; cdecl;
  nk_spacer: procedure(p1: Pnk_context); cdecl;
  nk_spacing: procedure(p1: Pnk_context; cols: Integer); cdecl;
  nk_str_append_str_char: function(p1: Pnk_str; const p2: PUTF8Char): Integer; cdecl;
  nk_str_append_str_runes: function(p1: Pnk_str; const p2: Pnk_rune): Integer; cdecl;
  nk_str_append_str_utf8: function(p1: Pnk_str; const p2: PUTF8Char): Integer; cdecl;
  nk_str_append_text_char: function(p1: Pnk_str; const p2: PUTF8Char; p3: Integer): Integer; cdecl;
  nk_str_append_text_runes: function(p1: Pnk_str; const p2: Pnk_rune; p3: Integer): Integer; cdecl;
  nk_str_append_text_utf8: function(p1: Pnk_str; const p2: PUTF8Char; p3: Integer): Integer; cdecl;
  nk_str_at_char: function(p1: Pnk_str; pos: Integer): PUTF8Char; cdecl;
  nk_str_at_char_const: function(const p1: Pnk_str; pos: Integer): PUTF8Char; cdecl;
  nk_str_at_const: function(const p1: Pnk_str; pos: Integer; unicode: Pnk_rune; len: PInteger): PUTF8Char; cdecl;
  nk_str_at_rune: function(p1: Pnk_str; pos: Integer; unicode: Pnk_rune; len: PInteger): PUTF8Char; cdecl;
  nk_str_clear: procedure(p1: Pnk_str); cdecl;
  nk_str_delete_chars: procedure(p1: Pnk_str; pos: Integer; len: Integer); cdecl;
  nk_str_delete_runes: procedure(p1: Pnk_str; pos: Integer; len: Integer); cdecl;
  nk_str_free: procedure(p1: Pnk_str); cdecl;
  nk_str_get: function(p1: Pnk_str): PUTF8Char; cdecl;
  nk_str_get_const: function(const p1: Pnk_str): PUTF8Char; cdecl;
  nk_str_init: procedure(p1: Pnk_str; const p2: Pnk_allocator; size: nk_size); cdecl;
  nk_str_init_default: procedure(p1: Pnk_str); cdecl;
  nk_str_init_fixed: procedure(p1: Pnk_str; memory: Pointer; size: nk_size); cdecl;
  nk_str_insert_at_char: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_at_rune: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_str_char: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char): Integer; cdecl;
  nk_str_insert_str_runes: function(p1: Pnk_str; pos: Integer; const p3: Pnk_rune): Integer; cdecl;
  nk_str_insert_str_utf8: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char): Integer; cdecl;
  nk_str_insert_text_char: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_text_runes: function(p1: Pnk_str; pos: Integer; const p3: Pnk_rune; p4: Integer): Integer; cdecl;
  nk_str_insert_text_utf8: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_len: function(p1: Pnk_str): Integer; cdecl;
  nk_str_len_char: function(p1: Pnk_str): Integer; cdecl;
  nk_str_remove_chars: procedure(p1: Pnk_str; len: Integer); cdecl;
  nk_str_remove_runes: procedure(str: Pnk_str; len: Integer); cdecl;
  nk_str_rune_at: function(const p1: Pnk_str; pos: Integer): nk_rune; cdecl;
  nk_strfilter: function(const text: PUTF8Char; const regexp: PUTF8Char): Integer; cdecl;
  nk_stricmp: function(const s1: PUTF8Char; const s2: PUTF8Char): Integer; cdecl;
  nk_stricmpn: function(const s1: PUTF8Char; const s2: PUTF8Char; n: Integer): Integer; cdecl;
  nk_strlen: function(const str: PUTF8Char): Integer; cdecl;
  nk_strmatch_fuzzy_string: function(const str: PUTF8Char; const pattern: PUTF8Char; out_score: PInteger): Integer; cdecl;
  nk_strmatch_fuzzy_text: function(const txt: PUTF8Char; txt_len: Integer; const pattern: PUTF8Char; out_score: PInteger): Integer; cdecl;
  nk_stroke_arc: procedure(p1: Pnk_command_buffer; cx: Single; cy: Single; radius: Single; a_min: Single; a_max: Single; line_thickness: Single; p8: nk_color); cdecl;
  nk_stroke_circle: procedure(p1: Pnk_command_buffer; p2: nk_rect; line_thickness: Single; p4: nk_color); cdecl;
  nk_stroke_curve: procedure(p1: Pnk_command_buffer; p2: Single; p3: Single; p4: Single; p5: Single; p6: Single; p7: Single; p8: Single; p9: Single; line_thickness: Single; p11: nk_color); cdecl;
  nk_stroke_line: procedure(b: Pnk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; line_thickness: Single; p7: nk_color); cdecl;
  nk_stroke_polygon: procedure(p1: Pnk_command_buffer; p2: PSingle; point_count: Integer; line_thickness: Single; p5: nk_color); cdecl;
  nk_stroke_polyline: procedure(p1: Pnk_command_buffer; points: PSingle; point_count: Integer; line_thickness: Single; col: nk_color); cdecl;
  nk_stroke_rect: procedure(p1: Pnk_command_buffer; p2: nk_rect; rounding: Single; line_thickness: Single; p5: nk_color); cdecl;
  nk_stroke_triangle: procedure(p1: Pnk_command_buffer; p2: Single; p3: Single; p4: Single; p5: Single; p6: Single; p7: Single; line_thichness: Single; p9: nk_color); cdecl;
  nk_strtod: function(const str: PUTF8Char; endptr: PPUTF8Char): Double; cdecl;
  nk_strtof: function(const str: PUTF8Char; endptr: PPUTF8Char): Single; cdecl;
  nk_strtoi: function(const str: PUTF8Char; endptr: PPUTF8Char): Integer; cdecl;
  nk_style_default: procedure(p1: Pnk_context); cdecl;
  nk_style_from_table: procedure(p1: Pnk_context; const p2: Pnk_color); cdecl;
  nk_style_get_color_by_name: function(p1: nk_style_colors): PUTF8Char; cdecl;
  nk_style_hide_cursor: procedure(p1: Pnk_context); cdecl;
  nk_style_item_color_: function(p1: nk_color): nk_style_item; cdecl;
  nk_style_item_hide: function(): nk_style_item; cdecl;
  nk_style_item_image_: function(img: nk_image): nk_style_item; cdecl;
  nk_style_item_nine_slice_: function(slice: nk_nine_slice): nk_style_item; cdecl;
  nk_style_load_all_cursors: procedure(p1: Pnk_context; p2: Pnk_cursor); cdecl;
  nk_style_load_cursor: procedure(p1: Pnk_context; p2: nk_style_cursor; const p3: Pnk_cursor); cdecl;
  nk_style_pop_color: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_flags: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_float: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_font: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_style_item: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_vec2: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_push_color: function(p1: Pnk_context; p2: Pnk_color; p3: nk_color): nk_bool; cdecl;
  nk_style_push_flags: function(p1: Pnk_context; p2: Pnk_flags; p3: nk_flags): nk_bool; cdecl;
  nk_style_push_float: function(p1: Pnk_context; p2: PSingle; p3: Single): nk_bool; cdecl;
  nk_style_push_font: function(p1: Pnk_context; const p2: Pnk_user_font): nk_bool; cdecl;
  nk_style_push_style_item: function(p1: Pnk_context; p2: Pnk_style_item; p3: nk_style_item): nk_bool; cdecl;
  nk_style_push_vec2: function(p1: Pnk_context; p2: Pnk_vec2; p3: nk_vec2): nk_bool; cdecl;
  nk_style_set_cursor: function(p1: Pnk_context; p2: nk_style_cursor): nk_bool; cdecl;
  nk_style_set_font: procedure(p1: Pnk_context; const p2: Pnk_user_font); cdecl;
  nk_style_show_cursor: procedure(p1: Pnk_context); cdecl;
  nk_sub9slice_handle: function(p1: nk_handle; w: nk_ushort; h: nk_ushort; sub_region: nk_rect; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_sub9slice_id: function(p1: Integer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_sub9slice_ptr: function(p1: Pointer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_subimage_handle: function(p1: nk_handle; w: nk_ushort; h: nk_ushort; sub_region: nk_rect): nk_image; cdecl;
  nk_subimage_id: function(p1: Integer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect): nk_image; cdecl;
  nk_subimage_ptr: function(p1: Pointer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect): nk_image; cdecl;
  nk_text: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; p4: nk_flags); cdecl;
  nk_text_colored: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; p4: nk_flags; p5: nk_color); cdecl;
  nk_text_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer); cdecl;
  nk_text_wrap_colored: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; p4: nk_color); cdecl;
  nk_textedit_cut: function(p1: Pnk_text_edit): nk_bool; cdecl;
  nk_textedit_delete: procedure(p1: Pnk_text_edit; where: Integer; len: Integer); cdecl;
  nk_textedit_delete_selection: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_free: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_init: procedure(p1: Pnk_text_edit; p2: Pnk_allocator; size: nk_size); cdecl;
  nk_textedit_init_default: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_init_fixed: procedure(p1: Pnk_text_edit; memory: Pointer; size: nk_size); cdecl;
  nk_textedit_paste: function(p1: Pnk_text_edit; const p2: PUTF8Char; len: Integer): nk_bool; cdecl;
  nk_textedit_redo: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_select_all: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_text: procedure(p1: Pnk_text_edit; const p2: PUTF8Char; total_len: Integer); cdecl;
  nk_textedit_undo: procedure(p1: Pnk_text_edit); cdecl;
  nk_tooltip: procedure(p1: Pnk_context; const p2: PUTF8Char); cdecl;
  nk_tooltip_begin: function(p1: Pnk_context; width: Single): nk_bool; cdecl;
  nk_tooltip_end: procedure(p1: Pnk_context); cdecl;
  nk_tooltipf: procedure(p1: Pnk_context; const p2: PUTF8Char) varargs; cdecl;
  nk_tooltipfv: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Pointer); cdecl;
  nk_tree_element_image_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; p3: nk_image; const title: PUTF8Char; initial_state: nk_collapse_states; selected: Pnk_bool; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_element_pop: procedure(p1: Pnk_context); cdecl;
  nk_tree_element_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; const title: PUTF8Char; initial_state: nk_collapse_states; selected: Pnk_bool; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_image_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; p3: nk_image; const title: PUTF8Char; initial_state: nk_collapse_states; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_pop: procedure(p1: Pnk_context); cdecl;
  nk_tree_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; const title: PUTF8Char; initial_state: nk_collapse_states; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_state_image_push: function(p1: Pnk_context; p2: nk_tree_type; p3: nk_image; const title: PUTF8Char; state: Pnk_collapse_states): nk_bool; cdecl;
  nk_tree_state_pop: procedure(p1: Pnk_context); cdecl;
  nk_tree_state_push: function(p1: Pnk_context; p2: nk_tree_type; const title: PUTF8Char; state: Pnk_collapse_states): nk_bool; cdecl;
  nk_triangle_from_direction: procedure(result: Pnk_vec2; r: nk_rect; pad_x: Single; pad_y: Single; p5: nk_heading); cdecl;
  nk_utf_at: function(const buffer: PUTF8Char; length: Integer; index: Integer; unicode: Pnk_rune; len: PInteger): PUTF8Char; cdecl;
  nk_utf_decode: function(const p1: PUTF8Char; p2: Pnk_rune; p3: Integer): Integer; cdecl;
  nk_utf_encode: function(p1: nk_rune; p2: PUTF8Char; p3: Integer): Integer; cdecl;
  nk_utf_len: function(const p1: PUTF8Char; byte_len: Integer): Integer; cdecl;
  nk_value_bool: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Integer); cdecl;
  nk_value_color_byte: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: nk_color); cdecl;
  nk_value_color_float: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: nk_color); cdecl;
  nk_value_color_hex: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: nk_color); cdecl;
  nk_value_float: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Single); cdecl;
  nk_value_int: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Integer); cdecl;
  nk_value_uint: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Cardinal); cdecl;
  nk_vec2_: function(x: Single; y: Single): nk_vec2; cdecl;
  nk_vec2i_: function(x: Integer; y: Integer): nk_vec2; cdecl;
  nk_vec2iv: function(const xy: PInteger): nk_vec2; cdecl;
  nk_vec2v: function(const xy: PSingle): nk_vec2; cdecl;
  nk_widget: function(p1: Pnk_rect; const p2: Pnk_context): nk_widget_layout_states; cdecl;
  nk_widget_bounds: function(p1: Pnk_context): nk_rect; cdecl;
  nk_widget_fitting: function(p1: Pnk_rect; p2: Pnk_context; p3: nk_vec2): nk_widget_layout_states; cdecl;
  nk_widget_has_mouse_click_down: function(p1: Pnk_context; p2: nk_buttons; down: nk_bool): nk_bool; cdecl;
  nk_widget_height: function(p1: Pnk_context): Single; cdecl;
  nk_widget_is_hovered: function(p1: Pnk_context): nk_bool; cdecl;
  nk_widget_is_mouse_clicked: function(p1: Pnk_context; p2: nk_buttons): nk_bool; cdecl;
  nk_widget_position: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_widget_size: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_widget_width: function(p1: Pnk_context): Single; cdecl;
  nk_window_close: procedure(ctx: Pnk_context; const name: PUTF8Char); cdecl;
  nk_window_collapse: procedure(p1: Pnk_context; const name: PUTF8Char; state: nk_collapse_states); cdecl;
  nk_window_collapse_if: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_collapse_states; cond: Integer); cdecl;
  nk_window_find: function(ctx: Pnk_context; const name: PUTF8Char): Pnk_window; cdecl;
  nk_window_get_bounds: function(const ctx: Pnk_context): nk_rect; cdecl;
  nk_window_get_canvas: function(p1: Pnk_context): Pnk_command_buffer; cdecl;
  nk_window_get_content_region: function(p1: Pnk_context): nk_rect; cdecl;
  nk_window_get_content_region_max: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_content_region_min: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_content_region_size: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_height: function(const p1: Pnk_context): Single; cdecl;
  nk_window_get_panel: function(p1: Pnk_context): Pnk_panel; cdecl;
  nk_window_get_position: function(const ctx: Pnk_context): nk_vec2; cdecl;
  nk_window_get_scroll: procedure(p1: Pnk_context; offset_x: Pnk_uint; offset_y: Pnk_uint); cdecl;
  nk_window_get_size: function(const p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_width: function(const p1: Pnk_context): Single; cdecl;
  nk_window_has_focus: function(const p1: Pnk_context): nk_bool; cdecl;
  nk_window_is_active: function(p1: Pnk_context; const p2: PUTF8Char): nk_bool; cdecl;
  nk_window_is_any_hovered: function(p1: Pnk_context): nk_bool; cdecl;
  nk_window_is_closed: function(p1: Pnk_context; const p2: PUTF8Char): nk_bool; cdecl;
  nk_window_is_collapsed: function(ctx: Pnk_context; const name: PUTF8Char): nk_bool; cdecl;
  nk_window_is_hidden: function(p1: Pnk_context; const p2: PUTF8Char): nk_bool; cdecl;
  nk_window_is_hovered: function(p1: Pnk_context): nk_bool; cdecl;
  nk_window_set_bounds: procedure(p1: Pnk_context; const name: PUTF8Char; bounds: nk_rect); cdecl;
  nk_window_set_focus: procedure(p1: Pnk_context; const name: PUTF8Char); cdecl;
  nk_window_set_position: procedure(p1: Pnk_context; const name: PUTF8Char; pos: nk_vec2); cdecl;
  nk_window_set_scroll: procedure(p1: Pnk_context; offset_x: nk_uint; offset_y: nk_uint); cdecl;
  nk_window_set_size: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_vec2); cdecl;
  nk_window_show: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_show_states); cdecl;
  nk_window_show_if: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_show_states; cond: Integer); cdecl;
  PHYSFS_addToSearchPath: function(const newDir: PUTF8Char; appendToPath: Integer): Integer; cdecl;
  PHYSFS_caseFold: function(const from: PHYSFS_uint32; _to: PPHYSFS_uint32): Integer; cdecl;
  PHYSFS_close: function(handle: PPHYSFS_File): Integer; cdecl;
  PHYSFS_deinit: function(): Integer; cdecl;
  PHYSFS_delete: function(const filename: PUTF8Char): Integer; cdecl;
  PHYSFS_deregisterArchiver: function(const ext: PUTF8Char): Integer; cdecl;
  PHYSFS_enumerate: function(const dir: PUTF8Char; c: PHYSFS_EnumerateCallback; d: Pointer): Integer; cdecl;
  PHYSFS_enumerateFiles: function(const dir: PUTF8Char): PPUTF8Char; cdecl;
  PHYSFS_enumerateFilesCallback: procedure(const dir: PUTF8Char; c: PHYSFS_EnumFilesCallback; d: Pointer); cdecl;
  PHYSFS_eof: function(handle: PPHYSFS_File): Integer; cdecl;
  PHYSFS_exists: function(const fname: PUTF8Char): Integer; cdecl;
  PHYSFS_fileLength: function(handle: PPHYSFS_File): PHYSFS_sint64; cdecl;
  PHYSFS_flush: function(handle: PPHYSFS_File): Integer; cdecl;
  PHYSFS_freeList: procedure(listVar: Pointer); cdecl;
  PHYSFS_getAllocator: function(): PPHYSFS_Allocator; cdecl;
  PHYSFS_getBaseDir: function(): PUTF8Char; cdecl;
  PHYSFS_getCdRomDirs: function(): PPUTF8Char; cdecl;
  PHYSFS_getCdRomDirsCallback: procedure(c: PHYSFS_StringCallback; d: Pointer); cdecl;
  PHYSFS_getDirSeparator: function(): PUTF8Char; cdecl;
  PHYSFS_getErrorByCode: function(code: PHYSFS_ErrorCode): PUTF8Char; cdecl;
  PHYSFS_getLastError: function(): PUTF8Char; cdecl;
  PHYSFS_getLastErrorCode: function(): PHYSFS_ErrorCode; cdecl;
  PHYSFS_getLastModTime: function(const filename: PUTF8Char): PHYSFS_sint64; cdecl;
  PHYSFS_getLinkedVersion: procedure(ver: PPHYSFS_Version); cdecl;
  PHYSFS_getMountPoint: function(const dir: PUTF8Char): PUTF8Char; cdecl;
  PHYSFS_getPrefDir: function(const org: PUTF8Char; const app: PUTF8Char): PUTF8Char; cdecl;
  PHYSFS_getRealDir: function(const filename: PUTF8Char): PUTF8Char; cdecl;
  PHYSFS_getSearchPath: function(): PPUTF8Char; cdecl;
  PHYSFS_getSearchPathCallback: procedure(c: PHYSFS_StringCallback; d: Pointer); cdecl;
  PHYSFS_getUserDir: function(): PUTF8Char; cdecl;
  PHYSFS_getWriteDir: function(): PUTF8Char; cdecl;
  PHYSFS_init: function(const argv0: PUTF8Char): Integer; cdecl;
  PHYSFS_isDirectory: function(const fname: PUTF8Char): Integer; cdecl;
  PHYSFS_isInit: function(): Integer; cdecl;
  PHYSFS_isSymbolicLink: function(const fname: PUTF8Char): Integer; cdecl;
  PHYSFS_mkdir: function(const dirName: PUTF8Char): Integer; cdecl;
  PHYSFS_mount: function(const newDir: PUTF8Char; const mountPoint: PUTF8Char; appendToPath: Integer): Integer; cdecl;
  PHYSFS_mountHandle: function(_file: PPHYSFS_File; const newDir: PUTF8Char; const mountPoint: PUTF8Char; appendToPath: Integer): Integer; cdecl;
  PHYSFS_mountIo: function(io: PPHYSFS_Io; const newDir: PUTF8Char; const mountPoint: PUTF8Char; appendToPath: Integer): Integer; cdecl;
  PHYSFS_mountMemory: function(const buf: Pointer; len: PHYSFS_uint64; del: PHYSFS_mountMemory_del; const newDir: PUTF8Char; const mountPoint: PUTF8Char; appendToPath: Integer): Integer; cdecl;
  PHYSFS_openAppend: function(const filename: PUTF8Char): PPHYSFS_File; cdecl;
  PHYSFS_openRead: function(const filename: PUTF8Char): PPHYSFS_File; cdecl;
  PHYSFS_openWrite: function(const filename: PUTF8Char): PPHYSFS_File; cdecl;
  PHYSFS_permitSymbolicLinks: procedure(allow: Integer); cdecl;
  PHYSFS_read: function(handle: PPHYSFS_File; buffer: Pointer; objSize: PHYSFS_uint32; objCount: PHYSFS_uint32): PHYSFS_sint64; cdecl;
  PHYSFS_readBytes: function(handle: PPHYSFS_File; buffer: Pointer; len: PHYSFS_uint64): PHYSFS_sint64; cdecl;
  PHYSFS_readSBE16: function(_file: PPHYSFS_File; val: PPHYSFS_sint16): Integer; cdecl;
  PHYSFS_readSBE32: function(_file: PPHYSFS_File; val: PPHYSFS_sint32): Integer; cdecl;
  PHYSFS_readSBE64: function(_file: PPHYSFS_File; val: PPHYSFS_sint64): Integer; cdecl;
  PHYSFS_readSLE16: function(_file: PPHYSFS_File; val: PPHYSFS_sint16): Integer; cdecl;
  PHYSFS_readSLE32: function(_file: PPHYSFS_File; val: PPHYSFS_sint32): Integer; cdecl;
  PHYSFS_readSLE64: function(_file: PPHYSFS_File; val: PPHYSFS_sint64): Integer; cdecl;
  PHYSFS_readUBE16: function(_file: PPHYSFS_File; val: PPHYSFS_uint16): Integer; cdecl;
  PHYSFS_readUBE32: function(_file: PPHYSFS_File; val: PPHYSFS_uint32): Integer; cdecl;
  PHYSFS_readUBE64: function(_file: PPHYSFS_File; val: PPHYSFS_uint64): Integer; cdecl;
  PHYSFS_readULE16: function(_file: PPHYSFS_File; val: PPHYSFS_uint16): Integer; cdecl;
  PHYSFS_readULE32: function(_file: PPHYSFS_File; val: PPHYSFS_uint32): Integer; cdecl;
  PHYSFS_readULE64: function(_file: PPHYSFS_File; val: PPHYSFS_uint64): Integer; cdecl;
  PHYSFS_registerArchiver: function(const archiver: PPHYSFS_Archiver): Integer; cdecl;
  PHYSFS_removeFromSearchPath: function(const oldDir: PUTF8Char): Integer; cdecl;
  PHYSFS_seek: function(handle: PPHYSFS_File; pos: PHYSFS_uint64): Integer; cdecl;
  PHYSFS_setAllocator: function(const allocator: PPHYSFS_Allocator): Integer; cdecl;
  PHYSFS_setBuffer: function(handle: PPHYSFS_File; bufsize: PHYSFS_uint64): Integer; cdecl;
  PHYSFS_setErrorCode: procedure(code: PHYSFS_ErrorCode); cdecl;
  PHYSFS_setRoot: function(const archive: PUTF8Char; const subdir: PUTF8Char): Integer; cdecl;
  PHYSFS_setSaneConfig: function(const organization: PUTF8Char; const appName: PUTF8Char; const archiveExt: PUTF8Char; includeCdRoms: Integer; archivesFirst: Integer): Integer; cdecl;
  PHYSFS_setWriteDir: function(const newDir: PUTF8Char): Integer; cdecl;
  PHYSFS_stat: function(const fname: PUTF8Char; stat: PPHYSFS_Stat_): Integer; cdecl;
  PHYSFS_supportedArchiveTypes: function(): PPPHYSFS_ArchiveInfo; cdecl;
  PHYSFS_swapSBE16: function(val: PHYSFS_sint16): PHYSFS_sint16; cdecl;
  PHYSFS_swapSBE32: function(val: PHYSFS_sint32): PHYSFS_sint32; cdecl;
  PHYSFS_swapSBE64: function(val: PHYSFS_sint64): PHYSFS_sint64; cdecl;
  PHYSFS_swapSLE16: function(val: PHYSFS_sint16): PHYSFS_sint16; cdecl;
  PHYSFS_swapSLE32: function(val: PHYSFS_sint32): PHYSFS_sint32; cdecl;
  PHYSFS_swapSLE64: function(val: PHYSFS_sint64): PHYSFS_sint64; cdecl;
  PHYSFS_swapUBE16: function(val: PHYSFS_uint16): PHYSFS_uint16; cdecl;
  PHYSFS_swapUBE32: function(val: PHYSFS_uint32): PHYSFS_uint32; cdecl;
  PHYSFS_swapUBE64: function(val: PHYSFS_uint64): PHYSFS_uint64; cdecl;
  PHYSFS_swapULE16: function(val: PHYSFS_uint16): PHYSFS_uint16; cdecl;
  PHYSFS_swapULE32: function(val: PHYSFS_uint32): PHYSFS_uint32; cdecl;
  PHYSFS_swapULE64: function(val: PHYSFS_uint64): PHYSFS_uint64; cdecl;
  PHYSFS_symbolicLinksPermitted: function(): Integer; cdecl;
  PHYSFS_tell: function(handle: PPHYSFS_File): PHYSFS_sint64; cdecl;
  PHYSFS_ucs4stricmp: function(const str1: PPHYSFS_uint32; const str2: PPHYSFS_uint32): Integer; cdecl;
  PHYSFS_unmount: function(const oldDir: PUTF8Char): Integer; cdecl;
  PHYSFS_utf16stricmp: function(const str1: PPHYSFS_uint16; const str2: PPHYSFS_uint16): Integer; cdecl;
  PHYSFS_utf8FromLatin1: procedure(const src: PUTF8Char; dst: PUTF8Char; len: PHYSFS_uint64); cdecl;
  PHYSFS_utf8FromUcs2: procedure(const src: PPHYSFS_uint16; dst: PUTF8Char; len: PHYSFS_uint64); cdecl;
  PHYSFS_utf8FromUcs4: procedure(const src: PPHYSFS_uint32; dst: PUTF8Char; len: PHYSFS_uint64); cdecl;
  PHYSFS_utf8FromUtf16: procedure(const src: PPHYSFS_uint16; dst: PUTF8Char; len: PHYSFS_uint64); cdecl;
  PHYSFS_utf8stricmp: function(const str1: PUTF8Char; const str2: PUTF8Char): Integer; cdecl;
  PHYSFS_utf8ToUcs2: procedure(const src: PUTF8Char; dst: PPHYSFS_uint16; len: PHYSFS_uint64); cdecl;
  PHYSFS_utf8ToUcs4: procedure(const src: PUTF8Char; dst: PPHYSFS_uint32; len: PHYSFS_uint64); cdecl;
  PHYSFS_utf8ToUtf16: procedure(const src: PUTF8Char; dst: PPHYSFS_uint16; len: PHYSFS_uint64); cdecl;
  PHYSFS_write: function(handle: PPHYSFS_File; const buffer: Pointer; objSize: PHYSFS_uint32; objCount: PHYSFS_uint32): PHYSFS_sint64; cdecl;
  PHYSFS_writeBytes: function(handle: PPHYSFS_File; const buffer: Pointer; len: PHYSFS_uint64): PHYSFS_sint64; cdecl;
  PHYSFS_writeSBE16: function(_file: PPHYSFS_File; val: PHYSFS_sint16): Integer; cdecl;
  PHYSFS_writeSBE32: function(_file: PPHYSFS_File; val: PHYSFS_sint32): Integer; cdecl;
  PHYSFS_writeSBE64: function(_file: PPHYSFS_File; val: PHYSFS_sint64): Integer; cdecl;
  PHYSFS_writeSLE16: function(_file: PPHYSFS_File; val: PHYSFS_sint16): Integer; cdecl;
  PHYSFS_writeSLE32: function(_file: PPHYSFS_File; val: PHYSFS_sint32): Integer; cdecl;
  PHYSFS_writeSLE64: function(_file: PPHYSFS_File; val: PHYSFS_sint64): Integer; cdecl;
  PHYSFS_writeUBE16: function(_file: PPHYSFS_File; val: PHYSFS_uint16): Integer; cdecl;
  PHYSFS_writeUBE32: function(_file: PPHYSFS_File; val: PHYSFS_uint32): Integer; cdecl;
  PHYSFS_writeUBE64: function(_file: PPHYSFS_File; val: PHYSFS_uint64): Integer; cdecl;
  PHYSFS_writeULE16: function(_file: PPHYSFS_File; val: PHYSFS_uint16): Integer; cdecl;
  PHYSFS_writeULE32: function(_file: PPHYSFS_File; val: PHYSFS_uint32): Integer; cdecl;
  PHYSFS_writeULE64: function(_file: PPHYSFS_File; val: PHYSFS_uint64): Integer; cdecl;
  plm_audio_create_with_buffer: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_audio_t; cdecl;
  plm_audio_decode: function(self: Pplm_audio_t): Pplm_samples_t; cdecl;
  plm_audio_destroy: procedure(self: Pplm_audio_t); cdecl;
  plm_audio_get_samplerate: function(self: Pplm_audio_t): Integer; cdecl;
  plm_audio_get_time: function(self: Pplm_audio_t): Double; cdecl;
  plm_audio_has_ended: function(self: Pplm_audio_t): Integer; cdecl;
  plm_audio_has_header: function(self: Pplm_audio_t): Integer; cdecl;
  plm_audio_rewind: procedure(self: Pplm_audio_t); cdecl;
  plm_audio_set_time: procedure(self: Pplm_audio_t; time: Double); cdecl;
  plm_buffer_create_for_appending: function(initial_capacity: NativeUInt): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_capacity: function(capacity: NativeUInt): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_file: function(fh: PPointer; close_when_done: Integer): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_filename: function(const filename: PUTF8Char): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_memory: function(bytes: PUInt8; length: NativeUInt; free_when_done: Integer): Pplm_buffer_t; cdecl;
  plm_buffer_destroy: procedure(self: Pplm_buffer_t); cdecl;
  plm_buffer_get_remaining: function(self: Pplm_buffer_t): NativeUInt; cdecl;
  plm_buffer_get_size: function(self: Pplm_buffer_t): NativeUInt; cdecl;
  plm_buffer_has_ended: function(self: Pplm_buffer_t): Integer; cdecl;
  plm_buffer_rewind: procedure(self: Pplm_buffer_t); cdecl;
  plm_buffer_set_load_callback: procedure(self: Pplm_buffer_t; fp: plm_buffer_load_callback; user: Pointer); cdecl;
  plm_buffer_signal_end: procedure(self: Pplm_buffer_t); cdecl;
  plm_buffer_write: function(self: Pplm_buffer_t; bytes: PUInt8; length: NativeUInt): NativeUInt; cdecl;
  plm_create_with_buffer: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_t; cdecl;
  plm_create_with_file: function(fh: PPointer; close_when_done: Integer): Pplm_t; cdecl;
  plm_create_with_filename: function(const filename: PUTF8Char): Pplm_t; cdecl;
  plm_create_with_memory: function(bytes: PUInt8; length: NativeUInt; free_when_done: Integer): Pplm_t; cdecl;
  plm_decode: procedure(self: Pplm_t; seconds: Double); cdecl;
  plm_decode_audio: function(self: Pplm_t): Pplm_samples_t; cdecl;
  plm_decode_video: function(self: Pplm_t): Pplm_frame_t; cdecl;
  plm_demux_create: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_demux_t; cdecl;
  plm_demux_decode: function(self: Pplm_demux_t): Pplm_packet_t; cdecl;
  plm_demux_destroy: procedure(self: Pplm_demux_t); cdecl;
  plm_demux_get_duration: function(self: Pplm_demux_t; _type: Integer): Double; cdecl;
  plm_demux_get_num_audio_streams: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_get_num_video_streams: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_get_start_time: function(self: Pplm_demux_t; _type: Integer): Double; cdecl;
  plm_demux_has_ended: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_has_headers: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_rewind: procedure(self: Pplm_demux_t); cdecl;
  plm_demux_seek: function(self: Pplm_demux_t; time: Double; _type: Integer; force_intra: Integer): Pplm_packet_t; cdecl;
  plm_destroy: procedure(self: Pplm_t); cdecl;
  plm_frame_to_abgr: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_argb: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_bgr: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_bgra: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_rgb: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_rgba: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_get_audio_enabled: function(self: Pplm_t): Integer; cdecl;
  plm_get_audio_lead_time: function(self: Pplm_t): Double; cdecl;
  plm_get_duration: function(self: Pplm_t): Double; cdecl;
  plm_get_framerate: function(self: Pplm_t): Double; cdecl;
  plm_get_height: function(self: Pplm_t): Integer; cdecl;
  plm_get_loop: function(self: Pplm_t): Integer; cdecl;
  plm_get_num_audio_streams: function(self: Pplm_t): Integer; cdecl;
  plm_get_num_video_streams: function(self: Pplm_t): Integer; cdecl;
  plm_get_samplerate: function(self: Pplm_t): Integer; cdecl;
  plm_get_time: function(self: Pplm_t): Double; cdecl;
  plm_get_video_enabled: function(self: Pplm_t): Integer; cdecl;
  plm_get_width: function(self: Pplm_t): Integer; cdecl;
  plm_has_ended: function(self: Pplm_t): Integer; cdecl;
  plm_has_headers: function(self: Pplm_t): Integer; cdecl;
  plm_rewind: procedure(self: Pplm_t); cdecl;
  plm_seek: function(self: Pplm_t; time: Double; seek_exact: Integer): Integer; cdecl;
  plm_seek_frame: function(self: Pplm_t; time: Double; seek_exact: Integer): Pplm_frame_t; cdecl;
  plm_set_audio_decode_callback: procedure(self: Pplm_t; fp: plm_audio_decode_callback; user: Pointer); cdecl;
  plm_set_audio_enabled: procedure(self: Pplm_t; enabled: Integer); cdecl;
  plm_set_audio_lead_time: procedure(self: Pplm_t; lead_time: Double); cdecl;
  plm_set_audio_stream: procedure(self: Pplm_t; stream_index: Integer); cdecl;
  plm_set_loop: procedure(self: Pplm_t; loop: Integer); cdecl;
  plm_set_video_decode_callback: procedure(self: Pplm_t; fp: plm_video_decode_callback; user: Pointer); cdecl;
  plm_set_video_enabled: procedure(self: Pplm_t; enabled: Integer); cdecl;
  plm_video_create_with_buffer: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_video_t; cdecl;
  plm_video_decode: function(self: Pplm_video_t): Pplm_frame_t; cdecl;
  plm_video_destroy: procedure(self: Pplm_video_t); cdecl;
  plm_video_get_framerate: function(self: Pplm_video_t): Double; cdecl;
  plm_video_get_height: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_get_time: function(self: Pplm_video_t): Double; cdecl;
  plm_video_get_width: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_has_ended: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_has_header: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_rewind: procedure(self: Pplm_video_t); cdecl;
  plm_video_set_no_delay: procedure(self: Pplm_video_t; no_delay: Integer); cdecl;
  plm_video_set_time: procedure(self: Pplm_video_t; time: Double); cdecl;
  sfBlack: PsfColor;
  sfBlendAdd: PsfBlendMode;
  sfBlendAlpha: PsfBlendMode;
  sfBlendMultiply: PsfBlendMode;
  sfBlendNone: PsfBlendMode;
  sfBlue: PsfColor;
  sfCircleShape_copy: function(const shape: PsfCircleShape): PsfCircleShape; cdecl;
  sfCircleShape_create: function(): PsfCircleShape; cdecl;
  sfCircleShape_destroy: procedure(shape: PsfCircleShape); cdecl;
  sfCircleShape_getFillColor: function(const shape: PsfCircleShape): sfColor; cdecl;
  sfCircleShape_getGlobalBounds: function(const shape: PsfCircleShape): sfFloatRect; cdecl;
  sfCircleShape_getInverseTransform: function(const shape: PsfCircleShape): sfTransform; cdecl;
  sfCircleShape_getLocalBounds: function(const shape: PsfCircleShape): sfFloatRect; cdecl;
  sfCircleShape_getOrigin: function(const shape: PsfCircleShape): sfVector2f; cdecl;
  sfCircleShape_getOutlineColor: function(const shape: PsfCircleShape): sfColor; cdecl;
  sfCircleShape_getOutlineThickness: function(const shape: PsfCircleShape): Single; cdecl;
  sfCircleShape_getPoint: function(const shape: PsfCircleShape; index: NativeUInt): sfVector2f; cdecl;
  sfCircleShape_getPointCount: function(const shape: PsfCircleShape): NativeUInt; cdecl;
  sfCircleShape_getPosition: function(const shape: PsfCircleShape): sfVector2f; cdecl;
  sfCircleShape_getRadius: function(const shape: PsfCircleShape): Single; cdecl;
  sfCircleShape_getRotation: function(const shape: PsfCircleShape): Single; cdecl;
  sfCircleShape_getScale: function(const shape: PsfCircleShape): sfVector2f; cdecl;
  sfCircleShape_getTexture: function(const shape: PsfCircleShape): PsfTexture; cdecl;
  sfCircleShape_getTextureRect: function(const shape: PsfCircleShape): sfIntRect; cdecl;
  sfCircleShape_getTransform: function(const shape: PsfCircleShape): sfTransform; cdecl;
  sfCircleShape_move: procedure(shape: PsfCircleShape; offset: sfVector2f); cdecl;
  sfCircleShape_rotate: procedure(shape: PsfCircleShape; angle: Single); cdecl;
  sfCircleShape_scale: procedure(shape: PsfCircleShape; factors: sfVector2f); cdecl;
  sfCircleShape_setFillColor: procedure(shape: PsfCircleShape; color: sfColor); cdecl;
  sfCircleShape_setOrigin: procedure(shape: PsfCircleShape; origin: sfVector2f); cdecl;
  sfCircleShape_setOutlineColor: procedure(shape: PsfCircleShape; color: sfColor); cdecl;
  sfCircleShape_setOutlineThickness: procedure(shape: PsfCircleShape; thickness: Single); cdecl;
  sfCircleShape_setPointCount: procedure(shape: PsfCircleShape; count: NativeUInt); cdecl;
  sfCircleShape_setPosition: procedure(shape: PsfCircleShape; position: sfVector2f); cdecl;
  sfCircleShape_setRadius: procedure(shape: PsfCircleShape; radius: Single); cdecl;
  sfCircleShape_setRotation: procedure(shape: PsfCircleShape; angle: Single); cdecl;
  sfCircleShape_setScale: procedure(shape: PsfCircleShape; scale: sfVector2f); cdecl;
  sfCircleShape_setTexture: procedure(shape: PsfCircleShape; const texture: PsfTexture; resetRect: sfBool); cdecl;
  sfCircleShape_setTextureRect: procedure(shape: PsfCircleShape; rect: sfIntRect); cdecl;
  sfClipboard_getString: function(): PUTF8Char; cdecl;
  sfClipboard_getUnicodeString: function(): PsfUint32; cdecl;
  sfClipboard_setString: procedure(const text: PUTF8Char); cdecl;
  sfClipboard_setUnicodeString: procedure(const text: PsfUint32); cdecl;
  sfClock_copy: function(const clock: PsfClock): PsfClock; cdecl;
  sfClock_create: function(): PsfClock; cdecl;
  sfClock_destroy: procedure(clock: PsfClock); cdecl;
  sfClock_getElapsedTime: function(const clock: PsfClock): sfTime; cdecl;
  sfClock_restart: function(clock: PsfClock): sfTime; cdecl;
  sfColor_add: function(color1: sfColor; color2: sfColor): sfColor; cdecl;
  sfColor_fromInteger: function(color: sfUint32): sfColor; cdecl;
  sfColor_fromRGB: function(red: sfUint8; green: sfUint8; blue: sfUint8): sfColor; cdecl;
  sfColor_fromRGBA: function(red: sfUint8; green: sfUint8; blue: sfUint8; alpha: sfUint8): sfColor; cdecl;
  sfColor_modulate: function(color1: sfColor; color2: sfColor): sfColor; cdecl;
  sfColor_subtract: function(color1: sfColor; color2: sfColor): sfColor; cdecl;
  sfColor_toInteger: function(color: sfColor): sfUint32; cdecl;
  sfContext_create: function(): PsfContext; cdecl;
  sfContext_destroy: procedure(context: PsfContext); cdecl;
  sfContext_getActiveContextId: function(): sfUint64; cdecl;
  sfContext_getSettings: function(const context: PsfContext): sfContextSettings; cdecl;
  sfContext_setActive: function(context: PsfContext; active: sfBool): sfBool; cdecl;
  sfConvexShape_copy: function(const shape: PsfConvexShape): PsfConvexShape; cdecl;
  sfConvexShape_create: function(): PsfConvexShape; cdecl;
  sfConvexShape_destroy: procedure(shape: PsfConvexShape); cdecl;
  sfConvexShape_getFillColor: function(const shape: PsfConvexShape): sfColor; cdecl;
  sfConvexShape_getGlobalBounds: function(const shape: PsfConvexShape): sfFloatRect; cdecl;
  sfConvexShape_getInverseTransform: function(const shape: PsfConvexShape): sfTransform; cdecl;
  sfConvexShape_getLocalBounds: function(const shape: PsfConvexShape): sfFloatRect; cdecl;
  sfConvexShape_getOrigin: function(const shape: PsfConvexShape): sfVector2f; cdecl;
  sfConvexShape_getOutlineColor: function(const shape: PsfConvexShape): sfColor; cdecl;
  sfConvexShape_getOutlineThickness: function(const shape: PsfConvexShape): Single; cdecl;
  sfConvexShape_getPoint: function(const shape: PsfConvexShape; index: NativeUInt): sfVector2f; cdecl;
  sfConvexShape_getPointCount: function(const shape: PsfConvexShape): NativeUInt; cdecl;
  sfConvexShape_getPosition: function(const shape: PsfConvexShape): sfVector2f; cdecl;
  sfConvexShape_getRotation: function(const shape: PsfConvexShape): Single; cdecl;
  sfConvexShape_getScale: function(const shape: PsfConvexShape): sfVector2f; cdecl;
  sfConvexShape_getTexture: function(const shape: PsfConvexShape): PsfTexture; cdecl;
  sfConvexShape_getTextureRect: function(const shape: PsfConvexShape): sfIntRect; cdecl;
  sfConvexShape_getTransform: function(const shape: PsfConvexShape): sfTransform; cdecl;
  sfConvexShape_move: procedure(shape: PsfConvexShape; offset: sfVector2f); cdecl;
  sfConvexShape_rotate: procedure(shape: PsfConvexShape; angle: Single); cdecl;
  sfConvexShape_scale: procedure(shape: PsfConvexShape; factors: sfVector2f); cdecl;
  sfConvexShape_setFillColor: procedure(shape: PsfConvexShape; color: sfColor); cdecl;
  sfConvexShape_setOrigin: procedure(shape: PsfConvexShape; origin: sfVector2f); cdecl;
  sfConvexShape_setOutlineColor: procedure(shape: PsfConvexShape; color: sfColor); cdecl;
  sfConvexShape_setOutlineThickness: procedure(shape: PsfConvexShape; thickness: Single); cdecl;
  sfConvexShape_setPoint: procedure(shape: PsfConvexShape; index: NativeUInt; point: sfVector2f); cdecl;
  sfConvexShape_setPointCount: procedure(shape: PsfConvexShape; count: NativeUInt); cdecl;
  sfConvexShape_setPosition: procedure(shape: PsfConvexShape; position: sfVector2f); cdecl;
  sfConvexShape_setRotation: procedure(shape: PsfConvexShape; angle: Single); cdecl;
  sfConvexShape_setScale: procedure(shape: PsfConvexShape; scale: sfVector2f); cdecl;
  sfConvexShape_setTexture: procedure(shape: PsfConvexShape; const texture: PsfTexture; resetRect: sfBool); cdecl;
  sfConvexShape_setTextureRect: procedure(shape: PsfConvexShape; rect: sfIntRect); cdecl;
  sfCursor_createFromPixels: function(const pixels: PsfUint8; size: sfVector2u; hotspot: sfVector2u): PsfCursor; cdecl;
  sfCursor_createFromSystem: function(_type: sfCursorType): PsfCursor; cdecl;
  sfCursor_destroy: procedure(cursor: PsfCursor); cdecl;
  sfCyan: PsfColor;
  sfFloatRect_contains: function(const rect: PsfFloatRect; x: Single; y: Single): sfBool; cdecl;
  sfFloatRect_intersects: function(const rect1: PsfFloatRect; const rect2: PsfFloatRect; intersection: PsfFloatRect): sfBool; cdecl;
  sfFont_copy: function(const font: PsfFont): PsfFont; cdecl;
  sfFont_createFromFile: function(const filename: PUTF8Char): PsfFont; cdecl;
  sfFont_createFromMemory: function(const data: Pointer; sizeInBytes: NativeUInt): PsfFont; cdecl;
  sfFont_createFromStream: function(stream: PsfInputStream): PsfFont; cdecl;
  sfFont_destroy: procedure(font: PsfFont); cdecl;
  sfFont_getGlyph: function(const font: PsfFont; codePoint: sfUint32; characterSize: Cardinal; bold: sfBool; outlineThickness: Single): sfGlyph; cdecl;
  sfFont_getInfo: function(const font: PsfFont): sfFontInfo; cdecl;
  sfFont_getKerning: function(const font: PsfFont; first: sfUint32; second: sfUint32; characterSize: Cardinal): Single; cdecl;
  sfFont_getLineSpacing: function(const font: PsfFont; characterSize: Cardinal): Single; cdecl;
  sfFont_getTexture: function(font: PsfFont; characterSize: Cardinal): PsfTexture; cdecl;
  sfFont_getUnderlinePosition: function(const font: PsfFont; characterSize: Cardinal): Single; cdecl;
  sfFont_getUnderlineThickness: function(const font: PsfFont; characterSize: Cardinal): Single; cdecl;
  sfFtp_changeDirectory: function(ftp: PsfFtp; const directory: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_connect: function(ftp: PsfFtp; server: sfIpAddress; port: Word; timeout: sfTime): PsfFtpResponse; cdecl;
  sfFtp_create: function(): PsfFtp; cdecl;
  sfFtp_createDirectory: function(ftp: PsfFtp; const name: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_deleteDirectory: function(ftp: PsfFtp; const name: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_deleteFile: function(ftp: PsfFtp; const name: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_destroy: procedure(ftp: PsfFtp); cdecl;
  sfFtp_disconnect: function(ftp: PsfFtp): PsfFtpResponse; cdecl;
  sfFtp_download: function(ftp: PsfFtp; const remoteFile: PUTF8Char; const localPath: PUTF8Char; mode: sfFtpTransferMode): PsfFtpResponse; cdecl;
  sfFtp_getDirectoryListing: function(ftp: PsfFtp; const directory: PUTF8Char): PsfFtpListingResponse; cdecl;
  sfFtp_getWorkingDirectory: function(ftp: PsfFtp): PsfFtpDirectoryResponse; cdecl;
  sfFtp_keepAlive: function(ftp: PsfFtp): PsfFtpResponse; cdecl;
  sfFtp_login: function(ftp: PsfFtp; const name: PUTF8Char; const password: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_loginAnonymous: function(ftp: PsfFtp): PsfFtpResponse; cdecl;
  sfFtp_parentDirectory: function(ftp: PsfFtp): PsfFtpResponse; cdecl;
  sfFtp_renameFile: function(ftp: PsfFtp; const _file: PUTF8Char; const newName: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_sendCommand: function(ftp: PsfFtp; const command: PUTF8Char; const parameter: PUTF8Char): PsfFtpResponse; cdecl;
  sfFtp_upload: function(ftp: PsfFtp; const localFile: PUTF8Char; const remotePath: PUTF8Char; mode: sfFtpTransferMode; append: sfBool): PsfFtpResponse; cdecl;
  sfFtpDirectoryResponse_destroy: procedure(ftpDirectoryResponse: PsfFtpDirectoryResponse); cdecl;
  sfFtpDirectoryResponse_getDirectory: function(const ftpDirectoryResponse: PsfFtpDirectoryResponse): PUTF8Char; cdecl;
  sfFtpDirectoryResponse_getMessage: function(const ftpDirectoryResponse: PsfFtpDirectoryResponse): PUTF8Char; cdecl;
  sfFtpDirectoryResponse_getStatus: function(const ftpDirectoryResponse: PsfFtpDirectoryResponse): sfFtpStatus; cdecl;
  sfFtpDirectoryResponse_isOk: function(const ftpDirectoryResponse: PsfFtpDirectoryResponse): sfBool; cdecl;
  sfFtpListingResponse_destroy: procedure(ftpListingResponse: PsfFtpListingResponse); cdecl;
  sfFtpListingResponse_getCount: function(const ftpListingResponse: PsfFtpListingResponse): NativeUInt; cdecl;
  sfFtpListingResponse_getMessage: function(const ftpListingResponse: PsfFtpListingResponse): PUTF8Char; cdecl;
  sfFtpListingResponse_getName: function(const ftpListingResponse: PsfFtpListingResponse; index: NativeUInt): PUTF8Char; cdecl;
  sfFtpListingResponse_getStatus: function(const ftpListingResponse: PsfFtpListingResponse): sfFtpStatus; cdecl;
  sfFtpListingResponse_isOk: function(const ftpListingResponse: PsfFtpListingResponse): sfBool; cdecl;
  sfFtpResponse_destroy: procedure(ftpResponse: PsfFtpResponse); cdecl;
  sfFtpResponse_getMessage: function(const ftpResponse: PsfFtpResponse): PUTF8Char; cdecl;
  sfFtpResponse_getStatus: function(const ftpResponse: PsfFtpResponse): sfFtpStatus; cdecl;
  sfFtpResponse_isOk: function(const ftpResponse: PsfFtpResponse): sfBool; cdecl;
  sfGreen: PsfColor;
  sfHttp_create: function(): PsfHttp; cdecl;
  sfHttp_destroy: procedure(http: PsfHttp); cdecl;
  sfHttp_sendRequest: function(http: PsfHttp; const request: PsfHttpRequest; timeout: sfTime): PsfHttpResponse; cdecl;
  sfHttp_setHost: procedure(http: PsfHttp; const host: PUTF8Char; port: Word); cdecl;
  sfHttpRequest_create: function(): PsfHttpRequest; cdecl;
  sfHttpRequest_destroy: procedure(httpRequest: PsfHttpRequest); cdecl;
  sfHttpRequest_setBody: procedure(httpRequest: PsfHttpRequest; const body: PUTF8Char); cdecl;
  sfHttpRequest_setField: procedure(httpRequest: PsfHttpRequest; const field: PUTF8Char; const value: PUTF8Char); cdecl;
  sfHttpRequest_setHttpVersion: procedure(httpRequest: PsfHttpRequest; major: Cardinal; minor: Cardinal); cdecl;
  sfHttpRequest_setMethod: procedure(httpRequest: PsfHttpRequest; method: sfHttpMethod); cdecl;
  sfHttpRequest_setUri: procedure(httpRequest: PsfHttpRequest; const uri: PUTF8Char); cdecl;
  sfHttpResponse_destroy: procedure(httpResponse: PsfHttpResponse); cdecl;
  sfHttpResponse_getBody: function(const httpResponse: PsfHttpResponse): PUTF8Char; cdecl;
  sfHttpResponse_getField: function(const httpResponse: PsfHttpResponse; const field: PUTF8Char): PUTF8Char; cdecl;
  sfHttpResponse_getMajorVersion: function(const httpResponse: PsfHttpResponse): Cardinal; cdecl;
  sfHttpResponse_getMinorVersion: function(const httpResponse: PsfHttpResponse): Cardinal; cdecl;
  sfHttpResponse_getStatus: function(const httpResponse: PsfHttpResponse): sfHttpStatus; cdecl;
  sfImage_copy: function(const image: PsfImage): PsfImage; cdecl;
  sfImage_copyImage: procedure(image: PsfImage; const source: PsfImage; destX: Cardinal; destY: Cardinal; sourceRect: sfIntRect; applyAlpha: sfBool); cdecl;
  sfImage_create: function(width: Cardinal; height: Cardinal): PsfImage; cdecl;
  sfImage_createFromColor: function(width: Cardinal; height: Cardinal; color: sfColor): PsfImage; cdecl;
  sfImage_createFromFile: function(const filename: PUTF8Char): PsfImage; cdecl;
  sfImage_createFromMemory: function(const data: Pointer; size: NativeUInt): PsfImage; cdecl;
  sfImage_createFromPixels: function(width: Cardinal; height: Cardinal; const pixels: PsfUint8): PsfImage; cdecl;
  sfImage_createFromStream: function(stream: PsfInputStream): PsfImage; cdecl;
  sfImage_createMaskFromColor: procedure(image: PsfImage; color: sfColor; alpha: sfUint8); cdecl;
  sfImage_destroy: procedure(image: PsfImage); cdecl;
  sfImage_flipHorizontally: procedure(image: PsfImage); cdecl;
  sfImage_flipVertically: procedure(image: PsfImage); cdecl;
  sfImage_getPixel: function(const image: PsfImage; x: Cardinal; y: Cardinal): sfColor; cdecl;
  sfImage_getPixelsPtr: function(const image: PsfImage): PsfUint8; cdecl;
  sfImage_getSize: function(const image: PsfImage): sfVector2u; cdecl;
  sfImage_saveToFile: function(const image: PsfImage; const filename: PUTF8Char): sfBool; cdecl;
  sfImage_setPixel: procedure(image: PsfImage; x: Cardinal; y: Cardinal; color: sfColor); cdecl;
  sfIntRect_contains: function(const rect: PsfIntRect; x: Integer; y: Integer): sfBool; cdecl;
  sfIntRect_intersects: function(const rect1: PsfIntRect; const rect2: PsfIntRect; intersection: PsfIntRect): sfBool; cdecl;
  sfIpAddress_Any: PsfIpAddress;
  sfIpAddress_Broadcast: PsfIpAddress;
  sfIpAddress_fromBytes: function(byte0: sfUint8; byte1: sfUint8; byte2: sfUint8; byte3: sfUint8): sfIpAddress; cdecl;
  sfIpAddress_fromInteger: function(address: sfUint32): sfIpAddress; cdecl;
  sfIpAddress_fromString: function(const address: PUTF8Char): sfIpAddress; cdecl;
  sfIpAddress_getLocalAddress: function(): sfIpAddress; cdecl;
  sfIpAddress_getPublicAddress: function(timeout: sfTime): sfIpAddress; cdecl;
  sfIpAddress_LocalHost: PsfIpAddress;
  sfIpAddress_None: PsfIpAddress;
  sfIpAddress_toInteger: function(address: sfIpAddress): sfUint32; cdecl;
  sfIpAddress_toString: procedure(address: sfIpAddress; _string: PUTF8Char); cdecl;
  sfJoystick_getAxisPosition: function(joystick: Cardinal; axis: sfJoystickAxis): Single; cdecl;
  sfJoystick_getButtonCount: function(joystick: Cardinal): Cardinal; cdecl;
  sfJoystick_getIdentification: function(joystick: Cardinal): sfJoystickIdentification; cdecl;
  sfJoystick_hasAxis: function(joystick: Cardinal; axis: sfJoystickAxis): sfBool; cdecl;
  sfJoystick_isButtonPressed: function(joystick: Cardinal; button: Cardinal): sfBool; cdecl;
  sfJoystick_isConnected: function(joystick: Cardinal): sfBool; cdecl;
  sfJoystick_update: procedure(); cdecl;
  sfKeyboard_isKeyPressed: function(key: sfKeyCode): sfBool; cdecl;
  sfKeyboard_setVirtualKeyboardVisible: procedure(visible: sfBool); cdecl;
  sfListener_getDirection: function(): sfVector3f; cdecl;
  sfListener_getGlobalVolume: function(): Single; cdecl;
  sfListener_getPosition: function(): sfVector3f; cdecl;
  sfListener_getUpVector: function(): sfVector3f; cdecl;
  sfListener_setDirection: procedure(direction: sfVector3f); cdecl;
  sfListener_setGlobalVolume: procedure(volume: Single); cdecl;
  sfListener_setPosition: procedure(position: sfVector3f); cdecl;
  sfListener_setUpVector: procedure(upVector: sfVector3f); cdecl;
  sfMagenta: PsfColor;
  sfMicroseconds: function(amount: sfInt64): sfTime; cdecl;
  sfMilliseconds: function(amount: sfInt32): sfTime; cdecl;
  sfMouse_getPosition: function(const relativeTo: PsfWindow): sfVector2i; cdecl;
  sfMouse_getPositionRenderWindow: function(const relativeTo: PsfRenderWindow): sfVector2i; cdecl;
  sfMouse_isButtonPressed: function(button: sfMouseButton): sfBool; cdecl;
  sfMouse_setPosition: procedure(position: sfVector2i; const relativeTo: PsfWindow); cdecl;
  sfMouse_setPositionRenderWindow: procedure(position: sfVector2i; const relativeTo: PsfRenderWindow); cdecl;
  sfMusic_createFromFile: function(const filename: PUTF8Char): PsfMusic; cdecl;
  sfMusic_createFromMemory: function(const data: Pointer; sizeInBytes: NativeUInt): PsfMusic; cdecl;
  sfMusic_createFromStream: function(stream: PsfInputStream): PsfMusic; cdecl;
  sfMusic_destroy: procedure(music: PsfMusic); cdecl;
  sfMusic_getAttenuation: function(const music: PsfMusic): Single; cdecl;
  sfMusic_getChannelCount: function(const music: PsfMusic): Cardinal; cdecl;
  sfMusic_getDuration: function(const music: PsfMusic): sfTime; cdecl;
  sfMusic_getLoop: function(const music: PsfMusic): sfBool; cdecl;
  sfMusic_getLoopPoints: function(const music: PsfMusic): sfTimeSpan; cdecl;
  sfMusic_getMinDistance: function(const music: PsfMusic): Single; cdecl;
  sfMusic_getPitch: function(const music: PsfMusic): Single; cdecl;
  sfMusic_getPlayingOffset: function(const music: PsfMusic): sfTime; cdecl;
  sfMusic_getPosition: function(const music: PsfMusic): sfVector3f; cdecl;
  sfMusic_getSampleRate: function(const music: PsfMusic): Cardinal; cdecl;
  sfMusic_getStatus: function(const music: PsfMusic): sfSoundStatus; cdecl;
  sfMusic_getVolume: function(const music: PsfMusic): Single; cdecl;
  sfMusic_isRelativeToListener: function(const music: PsfMusic): sfBool; cdecl;
  sfMusic_pause: procedure(music: PsfMusic); cdecl;
  sfMusic_play: procedure(music: PsfMusic); cdecl;
  sfMusic_setAttenuation: procedure(music: PsfMusic; attenuation: Single); cdecl;
  sfMusic_setLoop: procedure(music: PsfMusic; loop: sfBool); cdecl;
  sfMusic_setLoopPoints: procedure(music: PsfMusic; timePoints: sfTimeSpan); cdecl;
  sfMusic_setMinDistance: procedure(music: PsfMusic; distance: Single); cdecl;
  sfMusic_setPitch: procedure(music: PsfMusic; pitch: Single); cdecl;
  sfMusic_setPlayingOffset: procedure(music: PsfMusic; timeOffset: sfTime); cdecl;
  sfMusic_setPosition: procedure(music: PsfMusic; position: sfVector3f); cdecl;
  sfMusic_setRelativeToListener: procedure(music: PsfMusic; relative: sfBool); cdecl;
  sfMusic_setVolume: procedure(music: PsfMusic; volume: Single); cdecl;
  sfMusic_stop: procedure(music: PsfMusic); cdecl;
  sfMutex_create: function(): PsfMutex; cdecl;
  sfMutex_destroy: procedure(mutex: PsfMutex); cdecl;
  sfMutex_lock: procedure(mutex: PsfMutex); cdecl;
  sfMutex_unlock: procedure(mutex: PsfMutex); cdecl;
  sfPacket_append: procedure(packet: PsfPacket; const data: Pointer; sizeInBytes: NativeUInt); cdecl;
  sfPacket_canRead: function(const packet: PsfPacket): sfBool; cdecl;
  sfPacket_clear: procedure(packet: PsfPacket); cdecl;
  sfPacket_copy: function(const packet: PsfPacket): PsfPacket; cdecl;
  sfPacket_create: function(): PsfPacket; cdecl;
  sfPacket_destroy: procedure(packet: PsfPacket); cdecl;
  sfPacket_endOfPacket: function(const packet: PsfPacket): sfBool; cdecl;
  sfPacket_getData: function(const packet: PsfPacket): Pointer; cdecl;
  sfPacket_getDataSize: function(const packet: PsfPacket): NativeUInt; cdecl;
  sfPacket_readBool: function(packet: PsfPacket): sfBool; cdecl;
  sfPacket_readDouble: function(packet: PsfPacket): Double; cdecl;
  sfPacket_readFloat: function(packet: PsfPacket): Single; cdecl;
  sfPacket_readInt16: function(packet: PsfPacket): sfInt16; cdecl;
  sfPacket_readInt32: function(packet: PsfPacket): sfInt32; cdecl;
  sfPacket_readInt8: function(packet: PsfPacket): sfInt8; cdecl;
  sfPacket_readString: procedure(packet: PsfPacket; _string: PUTF8Char); cdecl;
  sfPacket_readUint16: function(packet: PsfPacket): sfUint16; cdecl;
  sfPacket_readUint32: function(packet: PsfPacket): sfUint32; cdecl;
  sfPacket_readUint8: function(packet: PsfPacket): sfUint8; cdecl;
  sfPacket_readWideString: procedure(packet: PsfPacket; _string: PWideChar); cdecl;
  sfPacket_writeBool: procedure(packet: PsfPacket; p2: sfBool); cdecl;
  sfPacket_writeDouble: procedure(packet: PsfPacket; p2: Double); cdecl;
  sfPacket_writeFloat: procedure(packet: PsfPacket; p2: Single); cdecl;
  sfPacket_writeInt16: procedure(packet: PsfPacket; p2: sfInt16); cdecl;
  sfPacket_writeInt32: procedure(packet: PsfPacket; p2: sfInt32); cdecl;
  sfPacket_writeInt8: procedure(packet: PsfPacket; p2: sfInt8); cdecl;
  sfPacket_writeString: procedure(packet: PsfPacket; const _string: PUTF8Char); cdecl;
  sfPacket_writeUint16: procedure(packet: PsfPacket; p2: sfUint16); cdecl;
  sfPacket_writeUint32: procedure(packet: PsfPacket; p2: sfUint32); cdecl;
  sfPacket_writeUint8: procedure(packet: PsfPacket; p2: sfUint8); cdecl;
  sfPacket_writeWideString: procedure(packet: PsfPacket; const _string: PWideChar); cdecl;
  sfRectangleShape_copy: function(const shape: PsfRectangleShape): PsfRectangleShape; cdecl;
  sfRectangleShape_create: function(): PsfRectangleShape; cdecl;
  sfRectangleShape_destroy: procedure(shape: PsfRectangleShape); cdecl;
  sfRectangleShape_getFillColor: function(const shape: PsfRectangleShape): sfColor; cdecl;
  sfRectangleShape_getGlobalBounds: function(const shape: PsfRectangleShape): sfFloatRect; cdecl;
  sfRectangleShape_getInverseTransform: function(const shape: PsfRectangleShape): sfTransform; cdecl;
  sfRectangleShape_getLocalBounds: function(const shape: PsfRectangleShape): sfFloatRect; cdecl;
  sfRectangleShape_getOrigin: function(const shape: PsfRectangleShape): sfVector2f; cdecl;
  sfRectangleShape_getOutlineColor: function(const shape: PsfRectangleShape): sfColor; cdecl;
  sfRectangleShape_getOutlineThickness: function(const shape: PsfRectangleShape): Single; cdecl;
  sfRectangleShape_getPoint: function(const shape: PsfRectangleShape; index: NativeUInt): sfVector2f; cdecl;
  sfRectangleShape_getPointCount: function(const shape: PsfRectangleShape): NativeUInt; cdecl;
  sfRectangleShape_getPosition: function(const shape: PsfRectangleShape): sfVector2f; cdecl;
  sfRectangleShape_getRotation: function(const shape: PsfRectangleShape): Single; cdecl;
  sfRectangleShape_getScale: function(const shape: PsfRectangleShape): sfVector2f; cdecl;
  sfRectangleShape_getSize: function(const shape: PsfRectangleShape): sfVector2f; cdecl;
  sfRectangleShape_getTexture: function(const shape: PsfRectangleShape): PsfTexture; cdecl;
  sfRectangleShape_getTextureRect: function(const shape: PsfRectangleShape): sfIntRect; cdecl;
  sfRectangleShape_getTransform: function(const shape: PsfRectangleShape): sfTransform; cdecl;
  sfRectangleShape_move: procedure(shape: PsfRectangleShape; offset: sfVector2f); cdecl;
  sfRectangleShape_rotate: procedure(shape: PsfRectangleShape; angle: Single); cdecl;
  sfRectangleShape_scale: procedure(shape: PsfRectangleShape; factors: sfVector2f); cdecl;
  sfRectangleShape_setFillColor: procedure(shape: PsfRectangleShape; color: sfColor); cdecl;
  sfRectangleShape_setOrigin: procedure(shape: PsfRectangleShape; origin: sfVector2f); cdecl;
  sfRectangleShape_setOutlineColor: procedure(shape: PsfRectangleShape; color: sfColor); cdecl;
  sfRectangleShape_setOutlineThickness: procedure(shape: PsfRectangleShape; thickness: Single); cdecl;
  sfRectangleShape_setPosition: procedure(shape: PsfRectangleShape; position: sfVector2f); cdecl;
  sfRectangleShape_setRotation: procedure(shape: PsfRectangleShape; angle: Single); cdecl;
  sfRectangleShape_setScale: procedure(shape: PsfRectangleShape; scale: sfVector2f); cdecl;
  sfRectangleShape_setSize: procedure(shape: PsfRectangleShape; size: sfVector2f); cdecl;
  sfRectangleShape_setTexture: procedure(shape: PsfRectangleShape; const texture: PsfTexture; resetRect: sfBool); cdecl;
  sfRectangleShape_setTextureRect: procedure(shape: PsfRectangleShape; rect: sfIntRect); cdecl;
  sfRed: PsfColor;
  sfRenderTexture_clear: procedure(renderTexture: PsfRenderTexture; color: sfColor); cdecl;
  sfRenderTexture_create: function(width: Cardinal; height: Cardinal; depthBuffer: sfBool): PsfRenderTexture; cdecl;
  sfRenderTexture_createWithSettings: function(width: Cardinal; height: Cardinal; const settings: PsfContextSettings): PsfRenderTexture; cdecl;
  sfRenderTexture_destroy: procedure(renderTexture: PsfRenderTexture); cdecl;
  sfRenderTexture_display: procedure(renderTexture: PsfRenderTexture); cdecl;
  sfRenderTexture_drawCircleShape: procedure(renderTexture: PsfRenderTexture; const _object: PsfCircleShape; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawConvexShape: procedure(renderTexture: PsfRenderTexture; const _object: PsfConvexShape; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawPrimitives: procedure(renderTexture: PsfRenderTexture; const vertices: PsfVertex; vertexCount: NativeUInt; _type: sfPrimitiveType; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawRectangleShape: procedure(renderTexture: PsfRenderTexture; const _object: PsfRectangleShape; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawShape: procedure(renderTexture: PsfRenderTexture; const _object: PsfShape; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawSprite: procedure(renderTexture: PsfRenderTexture; const _object: PsfSprite; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawText: procedure(renderTexture: PsfRenderTexture; const _object: PsfText; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawVertexArray: procedure(renderTexture: PsfRenderTexture; const _object: PsfVertexArray; const states: PsfRenderStates); cdecl;
  sfRenderTexture_drawVertexBuffer: procedure(renderTexture: PsfRenderTexture; const _object: PsfVertexBuffer; const states: PsfRenderStates); cdecl;
  sfRenderTexture_generateMipmap: function(renderTexture: PsfRenderTexture): sfBool; cdecl;
  sfRenderTexture_getDefaultView: function(const renderTexture: PsfRenderTexture): PsfView; cdecl;
  sfRenderTexture_getMaximumAntialiasingLevel: function(): Cardinal; cdecl;
  sfRenderTexture_getSize: function(const renderTexture: PsfRenderTexture): sfVector2u; cdecl;
  sfRenderTexture_getTexture: function(const renderTexture: PsfRenderTexture): PsfTexture; cdecl;
  sfRenderTexture_getView: function(const renderTexture: PsfRenderTexture): PsfView; cdecl;
  sfRenderTexture_getViewport: function(const renderTexture: PsfRenderTexture; const view: PsfView): sfIntRect; cdecl;
  sfRenderTexture_isRepeated: function(const renderTexture: PsfRenderTexture): sfBool; cdecl;
  sfRenderTexture_isSmooth: function(const renderTexture: PsfRenderTexture): sfBool; cdecl;
  sfRenderTexture_mapCoordsToPixel: function(const renderTexture: PsfRenderTexture; point: sfVector2f; const view: PsfView): sfVector2i; cdecl;
  sfRenderTexture_mapPixelToCoords: function(const renderTexture: PsfRenderTexture; point: sfVector2i; const view: PsfView): sfVector2f; cdecl;
  sfRenderTexture_popGLStates: procedure(renderTexture: PsfRenderTexture); cdecl;
  sfRenderTexture_pushGLStates: procedure(renderTexture: PsfRenderTexture); cdecl;
  sfRenderTexture_resetGLStates: procedure(renderTexture: PsfRenderTexture); cdecl;
  sfRenderTexture_setActive: function(renderTexture: PsfRenderTexture; active: sfBool): sfBool; cdecl;
  sfRenderTexture_setRepeated: procedure(renderTexture: PsfRenderTexture; repeated: sfBool); cdecl;
  sfRenderTexture_setSmooth: procedure(renderTexture: PsfRenderTexture; smooth: sfBool); cdecl;
  sfRenderTexture_setView: procedure(renderTexture: PsfRenderTexture; const view: PsfView); cdecl;
  sfRenderWindow_capture: function(const renderWindow: PsfRenderWindow): PsfImage; cdecl;
  sfRenderWindow_clear: procedure(renderWindow: PsfRenderWindow; color: sfColor); cdecl;
  sfRenderWindow_close: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_create: function(mode: sfVideoMode; const title: PUTF8Char; style: sfUint32; const settings: PsfContextSettings): PsfRenderWindow; cdecl;
  sfRenderWindow_createFromHandle: function(handle: sfWindowHandle; const settings: PsfContextSettings): PsfRenderWindow; cdecl;
  sfRenderWindow_createUnicode: function(mode: sfVideoMode; const title: PsfUint32; style: sfUint32; const settings: PsfContextSettings): PsfRenderWindow; cdecl;
  sfRenderWindow_destroy: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_display: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_drawCircleShape: procedure(renderWindow: PsfRenderWindow; const _object: PsfCircleShape; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawConvexShape: procedure(renderWindow: PsfRenderWindow; const _object: PsfConvexShape; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawPrimitives: procedure(renderWindow: PsfRenderWindow; const vertices: PsfVertex; vertexCount: NativeUInt; _type: sfPrimitiveType; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawRectangleShape: procedure(renderWindow: PsfRenderWindow; const _object: PsfRectangleShape; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawShape: procedure(renderWindow: PsfRenderWindow; const _object: PsfShape; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawSprite: procedure(renderWindow: PsfRenderWindow; const _object: PsfSprite; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawText: procedure(renderWindow: PsfRenderWindow; const _object: PsfText; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawVertexArray: procedure(renderWindow: PsfRenderWindow; const _object: PsfVertexArray; const states: PsfRenderStates); cdecl;
  sfRenderWindow_drawVertexBuffer: procedure(renderWindow: PsfRenderWindow; const _object: PsfVertexBuffer; const states: PsfRenderStates); cdecl;
  sfRenderWindow_getDefaultView: function(const renderWindow: PsfRenderWindow): PsfView; cdecl;
  sfRenderWindow_getPosition: function(const renderWindow: PsfRenderWindow): sfVector2i; cdecl;
  sfRenderWindow_getSettings: function(const renderWindow: PsfRenderWindow): sfContextSettings; cdecl;
  sfRenderWindow_getSize: function(const renderWindow: PsfRenderWindow): sfVector2u; cdecl;
  sfRenderWindow_getSystemHandle: function(const renderWindow: PsfRenderWindow): sfWindowHandle; cdecl;
  sfRenderWindow_getView: function(const renderWindow: PsfRenderWindow): PsfView; cdecl;
  sfRenderWindow_getViewport: function(const renderWindow: PsfRenderWindow; const view: PsfView): sfIntRect; cdecl;
  sfRenderWindow_hasFocus: function(const renderWindow: PsfRenderWindow): sfBool; cdecl;
  sfRenderWindow_isOpen: function(const renderWindow: PsfRenderWindow): sfBool; cdecl;
  sfRenderWindow_mapCoordsToPixel: function(const renderWindow: PsfRenderWindow; point: sfVector2f; const view: PsfView): sfVector2i; cdecl;
  sfRenderWindow_mapPixelToCoords: function(const renderWindow: PsfRenderWindow; point: sfVector2i; const view: PsfView): sfVector2f; cdecl;
  sfRenderWindow_pollEvent: function(renderWindow: PsfRenderWindow; event: PsfEvent): sfBool; cdecl;
  sfRenderWindow_popGLStates: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_pushGLStates: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_requestFocus: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_resetGLStates: procedure(renderWindow: PsfRenderWindow); cdecl;
  sfRenderWindow_setActive: function(renderWindow: PsfRenderWindow; active: sfBool): sfBool; cdecl;
  sfRenderWindow_setFramerateLimit: procedure(renderWindow: PsfRenderWindow; limit: Cardinal); cdecl;
  sfRenderWindow_setIcon: procedure(renderWindow: PsfRenderWindow; width: Cardinal; height: Cardinal; const pixels: PsfUint8); cdecl;
  sfRenderWindow_setJoystickThreshold: procedure(renderWindow: PsfRenderWindow; threshold: Single); cdecl;
  sfRenderWindow_setKeyRepeatEnabled: procedure(renderWindow: PsfRenderWindow; enabled: sfBool); cdecl;
  sfRenderWindow_setMouseCursor: procedure(window: PsfRenderWindow; const cursor: PsfCursor); cdecl;
  sfRenderWindow_setMouseCursorGrabbed: procedure(renderWindow: PsfRenderWindow; grabbed: sfBool); cdecl;
  sfRenderWindow_setMouseCursorVisible: procedure(renderWindow: PsfRenderWindow; show: sfBool); cdecl;
  sfRenderWindow_setPosition: procedure(renderWindow: PsfRenderWindow; position: sfVector2i); cdecl;
  sfRenderWindow_setSize: procedure(renderWindow: PsfRenderWindow; size: sfVector2u); cdecl;
  sfRenderWindow_setTitle: procedure(renderWindow: PsfRenderWindow; const title: PUTF8Char); cdecl;
  sfRenderWindow_setUnicodeTitle: procedure(renderWindow: PsfRenderWindow; const title: PsfUint32); cdecl;
  sfRenderWindow_setVerticalSyncEnabled: procedure(renderWindow: PsfRenderWindow; enabled: sfBool); cdecl;
  sfRenderWindow_setView: procedure(renderWindow: PsfRenderWindow; const view: PsfView); cdecl;
  sfRenderWindow_setVisible: procedure(renderWindow: PsfRenderWindow; visible: sfBool); cdecl;
  sfRenderWindow_waitEvent: function(renderWindow: PsfRenderWindow; event: PsfEvent): sfBool; cdecl;
  sfSeconds: function(amount: Single): sfTime; cdecl;
  sfSensor_getValue: function(sensor: sfSensorType): sfVector3f; cdecl;
  sfSensor_isAvailable: function(sensor: sfSensorType): sfBool; cdecl;
  sfSensor_setEnabled: procedure(sensor: sfSensorType; enabled: sfBool); cdecl;
  sfShader_bind: procedure(const shader: PsfShader); cdecl;
  sfShader_createFromFile: function(const vertexShaderFilename: PUTF8Char; const geometryShaderFilename: PUTF8Char; const fragmentShaderFilename: PUTF8Char): PsfShader; cdecl;
  sfShader_createFromMemory: function(const vertexShader: PUTF8Char; const geometryShader: PUTF8Char; const fragmentShader: PUTF8Char): PsfShader; cdecl;
  sfShader_createFromStream: function(vertexShaderStream: PsfInputStream; geometryShaderStream: PsfInputStream; fragmentShaderStream: PsfInputStream): PsfShader; cdecl;
  sfShader_destroy: procedure(shader: PsfShader); cdecl;
  sfShader_getNativeHandle: function(const shader: PsfShader): Cardinal; cdecl;
  sfShader_isAvailable: function(): sfBool; cdecl;
  sfShader_isGeometryAvailable: function(): sfBool; cdecl;
  sfShader_setBoolUniform: procedure(shader: PsfShader; const name: PUTF8Char; x: sfBool); cdecl;
  sfShader_setBvec2Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslBvec2); cdecl;
  sfShader_setBvec3Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslBvec3); cdecl;
  sfShader_setBvec4Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslBvec4); cdecl;
  sfShader_setColorParameter: procedure(shader: PsfShader; const name: PUTF8Char; color: sfColor); cdecl;
  sfShader_setColorUniform: procedure(shader: PsfShader; const name: PUTF8Char; color: sfColor); cdecl;
  sfShader_setCurrentTextureParameter: procedure(shader: PsfShader; const name: PUTF8Char); cdecl;
  sfShader_setCurrentTextureUniform: procedure(shader: PsfShader; const name: PUTF8Char); cdecl;
  sfShader_setFloat2Parameter: procedure(shader: PsfShader; const name: PUTF8Char; x: Single; y: Single); cdecl;
  sfShader_setFloat3Parameter: procedure(shader: PsfShader; const name: PUTF8Char; x: Single; y: Single; z: Single); cdecl;
  sfShader_setFloat4Parameter: procedure(shader: PsfShader; const name: PUTF8Char; x: Single; y: Single; z: Single; w: Single); cdecl;
  sfShader_setFloatParameter: procedure(shader: PsfShader; const name: PUTF8Char; x: Single); cdecl;
  sfShader_setFloatUniform: procedure(shader: PsfShader; const name: PUTF8Char; x: Single); cdecl;
  sfShader_setFloatUniformArray: procedure(shader: PsfShader; const name: PUTF8Char; const scalarArray: PSingle; length: NativeUInt); cdecl;
  sfShader_setIntColorUniform: procedure(shader: PsfShader; const name: PUTF8Char; color: sfColor); cdecl;
  sfShader_setIntUniform: procedure(shader: PsfShader; const name: PUTF8Char; x: Integer); cdecl;
  sfShader_setIvec2Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslIvec2); cdecl;
  sfShader_setIvec3Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslIvec3); cdecl;
  sfShader_setIvec4Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslIvec4); cdecl;
  sfShader_setMat3Uniform: procedure(shader: PsfShader; const name: PUTF8Char; const matrix: PsfGlslMat3); cdecl;
  sfShader_setMat3UniformArray: procedure(shader: PsfShader; const name: PUTF8Char; const matrixArray: PsfGlslMat3; length: NativeUInt); cdecl;
  sfShader_setMat4Uniform: procedure(shader: PsfShader; const name: PUTF8Char; const matrix: PsfGlslMat4); cdecl;
  sfShader_setMat4UniformArray: procedure(shader: PsfShader; const name: PUTF8Char; const matrixArray: PsfGlslMat4; length: NativeUInt); cdecl;
  sfShader_setTextureParameter: procedure(shader: PsfShader; const name: PUTF8Char; const texture: PsfTexture); cdecl;
  sfShader_setTextureUniform: procedure(shader: PsfShader; const name: PUTF8Char; const texture: PsfTexture); cdecl;
  sfShader_setTransformParameter: procedure(shader: PsfShader; const name: PUTF8Char; transform: sfTransform); cdecl;
  sfShader_setVec2Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslVec2); cdecl;
  sfShader_setVec2UniformArray: procedure(shader: PsfShader; const name: PUTF8Char; const vectorArray: PsfGlslVec2; length: NativeUInt); cdecl;
  sfShader_setVec3Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslVec3); cdecl;
  sfShader_setVec3UniformArray: procedure(shader: PsfShader; const name: PUTF8Char; const vectorArray: PsfGlslVec3; length: NativeUInt); cdecl;
  sfShader_setVec4Uniform: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfGlslVec4); cdecl;
  sfShader_setVec4UniformArray: procedure(shader: PsfShader; const name: PUTF8Char; const vectorArray: PsfGlslVec4; length: NativeUInt); cdecl;
  sfShader_setVector2Parameter: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfVector2f); cdecl;
  sfShader_setVector3Parameter: procedure(shader: PsfShader; const name: PUTF8Char; vector: sfVector3f); cdecl;
  sfShape_create: function(getPointCount: sfShapeGetPointCountCallback; getPoint: sfShapeGetPointCallback; userData: Pointer): PsfShape; cdecl;
  sfShape_destroy: procedure(shape: PsfShape); cdecl;
  sfShape_getFillColor: function(const shape: PsfShape): sfColor; cdecl;
  sfShape_getGlobalBounds: function(const shape: PsfShape): sfFloatRect; cdecl;
  sfShape_getInverseTransform: function(const shape: PsfShape): sfTransform; cdecl;
  sfShape_getLocalBounds: function(const shape: PsfShape): sfFloatRect; cdecl;
  sfShape_getOrigin: function(const shape: PsfShape): sfVector2f; cdecl;
  sfShape_getOutlineColor: function(const shape: PsfShape): sfColor; cdecl;
  sfShape_getOutlineThickness: function(const shape: PsfShape): Single; cdecl;
  sfShape_getPoint: function(const shape: PsfShape; index: NativeUInt): sfVector2f; cdecl;
  sfShape_getPointCount: function(const shape: PsfShape): NativeUInt; cdecl;
  sfShape_getPosition: function(const shape: PsfShape): sfVector2f; cdecl;
  sfShape_getRotation: function(const shape: PsfShape): Single; cdecl;
  sfShape_getScale: function(const shape: PsfShape): sfVector2f; cdecl;
  sfShape_getTexture: function(const shape: PsfShape): PsfTexture; cdecl;
  sfShape_getTextureRect: function(const shape: PsfShape): sfIntRect; cdecl;
  sfShape_getTransform: function(const shape: PsfShape): sfTransform; cdecl;
  sfShape_move: procedure(shape: PsfShape; offset: sfVector2f); cdecl;
  sfShape_rotate: procedure(shape: PsfShape; angle: Single); cdecl;
  sfShape_scale: procedure(shape: PsfShape; factors: sfVector2f); cdecl;
  sfShape_setFillColor: procedure(shape: PsfShape; color: sfColor); cdecl;
  sfShape_setOrigin: procedure(shape: PsfShape; origin: sfVector2f); cdecl;
  sfShape_setOutlineColor: procedure(shape: PsfShape; color: sfColor); cdecl;
  sfShape_setOutlineThickness: procedure(shape: PsfShape; thickness: Single); cdecl;
  sfShape_setPosition: procedure(shape: PsfShape; position: sfVector2f); cdecl;
  sfShape_setRotation: procedure(shape: PsfShape; angle: Single); cdecl;
  sfShape_setScale: procedure(shape: PsfShape; scale: sfVector2f); cdecl;
  sfShape_setTexture: procedure(shape: PsfShape; const texture: PsfTexture; resetRect: sfBool); cdecl;
  sfShape_setTextureRect: procedure(shape: PsfShape; rect: sfIntRect); cdecl;
  sfShape_update: procedure(shape: PsfShape); cdecl;
  sfSleep: procedure(duration: sfTime); cdecl;
  sfSocketSelector_addTcpListener: procedure(selector: PsfSocketSelector; socket: PsfTcpListener); cdecl;
  sfSocketSelector_addTcpSocket: procedure(selector: PsfSocketSelector; socket: PsfTcpSocket); cdecl;
  sfSocketSelector_addUdpSocket: procedure(selector: PsfSocketSelector; socket: PsfUdpSocket); cdecl;
  sfSocketSelector_clear: procedure(selector: PsfSocketSelector); cdecl;
  sfSocketSelector_copy: function(const selector: PsfSocketSelector): PsfSocketSelector; cdecl;
  sfSocketSelector_create: function(): PsfSocketSelector; cdecl;
  sfSocketSelector_destroy: procedure(selector: PsfSocketSelector); cdecl;
  sfSocketSelector_isTcpListenerReady: function(const selector: PsfSocketSelector; socket: PsfTcpListener): sfBool; cdecl;
  sfSocketSelector_isTcpSocketReady: function(const selector: PsfSocketSelector; socket: PsfTcpSocket): sfBool; cdecl;
  sfSocketSelector_isUdpSocketReady: function(const selector: PsfSocketSelector; socket: PsfUdpSocket): sfBool; cdecl;
  sfSocketSelector_removeTcpListener: procedure(selector: PsfSocketSelector; socket: PsfTcpListener); cdecl;
  sfSocketSelector_removeTcpSocket: procedure(selector: PsfSocketSelector; socket: PsfTcpSocket); cdecl;
  sfSocketSelector_removeUdpSocket: procedure(selector: PsfSocketSelector; socket: PsfUdpSocket); cdecl;
  sfSocketSelector_wait: function(selector: PsfSocketSelector; timeout: sfTime): sfBool; cdecl;
  sfSound_copy: function(const sound: PsfSound): PsfSound; cdecl;
  sfSound_create: function(): PsfSound; cdecl;
  sfSound_destroy: procedure(sound: PsfSound); cdecl;
  sfSound_getAttenuation: function(const sound: PsfSound): Single; cdecl;
  sfSound_getBuffer: function(const sound: PsfSound): PsfSoundBuffer; cdecl;
  sfSound_getLoop: function(const sound: PsfSound): sfBool; cdecl;
  sfSound_getMinDistance: function(const sound: PsfSound): Single; cdecl;
  sfSound_getPitch: function(const sound: PsfSound): Single; cdecl;
  sfSound_getPlayingOffset: function(const sound: PsfSound): sfTime; cdecl;
  sfSound_getPosition: function(const sound: PsfSound): sfVector3f; cdecl;
  sfSound_getStatus: function(const sound: PsfSound): sfSoundStatus; cdecl;
  sfSound_getVolume: function(const sound: PsfSound): Single; cdecl;
  sfSound_isRelativeToListener: function(const sound: PsfSound): sfBool; cdecl;
  sfSound_pause: procedure(sound: PsfSound); cdecl;
  sfSound_play: procedure(sound: PsfSound); cdecl;
  sfSound_setAttenuation: procedure(sound: PsfSound; attenuation: Single); cdecl;
  sfSound_setBuffer: procedure(sound: PsfSound; const buffer: PsfSoundBuffer); cdecl;
  sfSound_setLoop: procedure(sound: PsfSound; loop: sfBool); cdecl;
  sfSound_setMinDistance: procedure(sound: PsfSound; distance: Single); cdecl;
  sfSound_setPitch: procedure(sound: PsfSound; pitch: Single); cdecl;
  sfSound_setPlayingOffset: procedure(sound: PsfSound; timeOffset: sfTime); cdecl;
  sfSound_setPosition: procedure(sound: PsfSound; position: sfVector3f); cdecl;
  sfSound_setRelativeToListener: procedure(sound: PsfSound; relative: sfBool); cdecl;
  sfSound_setVolume: procedure(sound: PsfSound; volume: Single); cdecl;
  sfSound_stop: procedure(sound: PsfSound); cdecl;
  sfSoundBuffer_copy: function(const soundBuffer: PsfSoundBuffer): PsfSoundBuffer; cdecl;
  sfSoundBuffer_createFromFile: function(const filename: PUTF8Char): PsfSoundBuffer; cdecl;
  sfSoundBuffer_createFromMemory: function(const data: Pointer; sizeInBytes: NativeUInt): PsfSoundBuffer; cdecl;
  sfSoundBuffer_createFromSamples: function(const samples: PsfInt16; sampleCount: sfUint64; channelCount: Cardinal; sampleRate: Cardinal): PsfSoundBuffer; cdecl;
  sfSoundBuffer_createFromStream: function(stream: PsfInputStream): PsfSoundBuffer; cdecl;
  sfSoundBuffer_destroy: procedure(soundBuffer: PsfSoundBuffer); cdecl;
  sfSoundBuffer_getChannelCount: function(const soundBuffer: PsfSoundBuffer): Cardinal; cdecl;
  sfSoundBuffer_getDuration: function(const soundBuffer: PsfSoundBuffer): sfTime; cdecl;
  sfSoundBuffer_getSampleCount: function(const soundBuffer: PsfSoundBuffer): sfUint64; cdecl;
  sfSoundBuffer_getSampleRate: function(const soundBuffer: PsfSoundBuffer): Cardinal; cdecl;
  sfSoundBuffer_getSamples: function(const soundBuffer: PsfSoundBuffer): PsfInt16; cdecl;
  sfSoundBuffer_saveToFile: function(const soundBuffer: PsfSoundBuffer; const filename: PUTF8Char): sfBool; cdecl;
  sfSoundBufferRecorder_create: function(): PsfSoundBufferRecorder; cdecl;
  sfSoundBufferRecorder_destroy: procedure(soundBufferRecorder: PsfSoundBufferRecorder); cdecl;
  sfSoundBufferRecorder_getBuffer: function(const soundBufferRecorder: PsfSoundBufferRecorder): PsfSoundBuffer; cdecl;
  sfSoundBufferRecorder_getDevice: function(soundBufferRecorder: PsfSoundBufferRecorder): PUTF8Char; cdecl;
  sfSoundBufferRecorder_getSampleRate: function(const soundBufferRecorder: PsfSoundBufferRecorder): Cardinal; cdecl;
  sfSoundBufferRecorder_setDevice: function(soundBufferRecorder: PsfSoundBufferRecorder; const name: PUTF8Char): sfBool; cdecl;
  sfSoundBufferRecorder_start: function(soundBufferRecorder: PsfSoundBufferRecorder; sampleRate: Cardinal): sfBool; cdecl;
  sfSoundBufferRecorder_stop: procedure(soundBufferRecorder: PsfSoundBufferRecorder); cdecl;
  sfSoundRecorder_create: function(onStart: sfSoundRecorderStartCallback; onProcess: sfSoundRecorderProcessCallback; onStop: sfSoundRecorderStopCallback; userData: Pointer): PsfSoundRecorder; cdecl;
  sfSoundRecorder_destroy: procedure(soundRecorder: PsfSoundRecorder); cdecl;
  sfSoundRecorder_getAvailableDevices: function(count: PNativeUInt): PPUTF8Char; cdecl;
  sfSoundRecorder_getChannelCount: function(const soundRecorder: PsfSoundRecorder): Cardinal; cdecl;
  sfSoundRecorder_getDefaultDevice: function(): PUTF8Char; cdecl;
  sfSoundRecorder_getDevice: function(soundRecorder: PsfSoundRecorder): PUTF8Char; cdecl;
  sfSoundRecorder_getSampleRate: function(const soundRecorder: PsfSoundRecorder): Cardinal; cdecl;
  sfSoundRecorder_isAvailable: function(): sfBool; cdecl;
  sfSoundRecorder_setChannelCount: procedure(soundRecorder: PsfSoundRecorder; channelCount: Cardinal); cdecl;
  sfSoundRecorder_setDevice: function(soundRecorder: PsfSoundRecorder; const name: PUTF8Char): sfBool; cdecl;
  sfSoundRecorder_setProcessingInterval: procedure(soundRecorder: PsfSoundRecorder; interval: sfTime); cdecl;
  sfSoundRecorder_start: function(soundRecorder: PsfSoundRecorder; sampleRate: Cardinal): sfBool; cdecl;
  sfSoundRecorder_stop: procedure(soundRecorder: PsfSoundRecorder); cdecl;
  sfSoundStream_create: function(onGetData: sfSoundStreamGetDataCallback; onSeek: sfSoundStreamSeekCallback; channelCount: Cardinal; sampleRate: Cardinal; userData: Pointer): PsfSoundStream; cdecl;
  sfSoundStream_destroy: procedure(soundStream: PsfSoundStream); cdecl;
  sfSoundStream_getAttenuation: function(const soundStream: PsfSoundStream): Single; cdecl;
  sfSoundStream_getChannelCount: function(const soundStream: PsfSoundStream): Cardinal; cdecl;
  sfSoundStream_getLoop: function(const soundStream: PsfSoundStream): sfBool; cdecl;
  sfSoundStream_getMinDistance: function(const soundStream: PsfSoundStream): Single; cdecl;
  sfSoundStream_getPitch: function(const soundStream: PsfSoundStream): Single; cdecl;
  sfSoundStream_getPlayingOffset: function(const soundStream: PsfSoundStream): sfTime; cdecl;
  sfSoundStream_getPosition: function(const soundStream: PsfSoundStream): sfVector3f; cdecl;
  sfSoundStream_getSampleRate: function(const soundStream: PsfSoundStream): Cardinal; cdecl;
  sfSoundStream_getStatus: function(const soundStream: PsfSoundStream): sfSoundStatus; cdecl;
  sfSoundStream_getVolume: function(const soundStream: PsfSoundStream): Single; cdecl;
  sfSoundStream_isRelativeToListener: function(const soundStream: PsfSoundStream): sfBool; cdecl;
  sfSoundStream_pause: procedure(soundStream: PsfSoundStream); cdecl;
  sfSoundStream_play: procedure(soundStream: PsfSoundStream); cdecl;
  sfSoundStream_setAttenuation: procedure(soundStream: PsfSoundStream; attenuation: Single); cdecl;
  sfSoundStream_setLoop: procedure(soundStream: PsfSoundStream; loop: sfBool); cdecl;
  sfSoundStream_setMinDistance: procedure(soundStream: PsfSoundStream; distance: Single); cdecl;
  sfSoundStream_setPitch: procedure(soundStream: PsfSoundStream; pitch: Single); cdecl;
  sfSoundStream_setPlayingOffset: procedure(soundStream: PsfSoundStream; timeOffset: sfTime); cdecl;
  sfSoundStream_setPosition: procedure(soundStream: PsfSoundStream; position: sfVector3f); cdecl;
  sfSoundStream_setRelativeToListener: procedure(soundStream: PsfSoundStream; relative: sfBool); cdecl;
  sfSoundStream_setVolume: procedure(soundStream: PsfSoundStream; volume: Single); cdecl;
  sfSoundStream_stop: procedure(soundStream: PsfSoundStream); cdecl;
  sfSprite_copy: function(const sprite: PsfSprite): PsfSprite; cdecl;
  sfSprite_create: function(): PsfSprite; cdecl;
  sfSprite_destroy: procedure(sprite: PsfSprite); cdecl;
  sfSprite_getColor: function(const sprite: PsfSprite): sfColor; cdecl;
  sfSprite_getGlobalBounds: function(const sprite: PsfSprite): sfFloatRect; cdecl;
  sfSprite_getInverseTransform: function(const sprite: PsfSprite): sfTransform; cdecl;
  sfSprite_getLocalBounds: function(const sprite: PsfSprite): sfFloatRect; cdecl;
  sfSprite_getOrigin: function(const sprite: PsfSprite): sfVector2f; cdecl;
  sfSprite_getPosition: function(const sprite: PsfSprite): sfVector2f; cdecl;
  sfSprite_getRotation: function(const sprite: PsfSprite): Single; cdecl;
  sfSprite_getScale: function(const sprite: PsfSprite): sfVector2f; cdecl;
  sfSprite_getTexture: function(const sprite: PsfSprite): PsfTexture; cdecl;
  sfSprite_getTextureRect: function(const sprite: PsfSprite): sfIntRect; cdecl;
  sfSprite_getTransform: function(const sprite: PsfSprite): sfTransform; cdecl;
  sfSprite_move: procedure(sprite: PsfSprite; offset: sfVector2f); cdecl;
  sfSprite_rotate: procedure(sprite: PsfSprite; angle: Single); cdecl;
  sfSprite_scale: procedure(sprite: PsfSprite; factors: sfVector2f); cdecl;
  sfSprite_setColor: procedure(sprite: PsfSprite; color: sfColor); cdecl;
  sfSprite_setOrigin: procedure(sprite: PsfSprite; origin: sfVector2f); cdecl;
  sfSprite_setPosition: procedure(sprite: PsfSprite; position: sfVector2f); cdecl;
  sfSprite_setRotation: procedure(sprite: PsfSprite; angle: Single); cdecl;
  sfSprite_setScale: procedure(sprite: PsfSprite; scale: sfVector2f); cdecl;
  sfSprite_setTexture: procedure(sprite: PsfSprite; const texture: PsfTexture; resetRect: sfBool); cdecl;
  sfSprite_setTextureRect: procedure(sprite: PsfSprite; rectangle: sfIntRect); cdecl;
  sfTcpListener_accept: function(listener: PsfTcpListener; connected: PPsfTcpSocket): sfSocketStatus; cdecl;
  sfTcpListener_create: function(): PsfTcpListener; cdecl;
  sfTcpListener_destroy: procedure(listener: PsfTcpListener); cdecl;
  sfTcpListener_getLocalPort: function(const listener: PsfTcpListener): Word; cdecl;
  sfTcpListener_isBlocking: function(const listener: PsfTcpListener): sfBool; cdecl;
  sfTcpListener_listen: function(listener: PsfTcpListener; port: Word; address: sfIpAddress): sfSocketStatus; cdecl;
  sfTcpListener_setBlocking: procedure(listener: PsfTcpListener; blocking: sfBool); cdecl;
  sfTcpSocket_connect: function(socket: PsfTcpSocket; remoteAddress: sfIpAddress; remotePort: Word; timeout: sfTime): sfSocketStatus; cdecl;
  sfTcpSocket_create: function(): PsfTcpSocket; cdecl;
  sfTcpSocket_destroy: procedure(socket: PsfTcpSocket); cdecl;
  sfTcpSocket_disconnect: procedure(socket: PsfTcpSocket); cdecl;
  sfTcpSocket_getLocalPort: function(const socket: PsfTcpSocket): Word; cdecl;
  sfTcpSocket_getRemoteAddress: function(const socket: PsfTcpSocket): sfIpAddress; cdecl;
  sfTcpSocket_getRemotePort: function(const socket: PsfTcpSocket): Word; cdecl;
  sfTcpSocket_isBlocking: function(const socket: PsfTcpSocket): sfBool; cdecl;
  sfTcpSocket_receive: function(socket: PsfTcpSocket; data: Pointer; size: NativeUInt; received: PNativeUInt): sfSocketStatus; cdecl;
  sfTcpSocket_receivePacket: function(socket: PsfTcpSocket; packet: PsfPacket): sfSocketStatus; cdecl;
  sfTcpSocket_send: function(socket: PsfTcpSocket; const data: Pointer; size: NativeUInt): sfSocketStatus; cdecl;
  sfTcpSocket_sendPacket: function(socket: PsfTcpSocket; packet: PsfPacket): sfSocketStatus; cdecl;
  sfTcpSocket_sendPartial: function(socket: PsfTcpSocket; const data: Pointer; size: NativeUInt; sent: PNativeUInt): sfSocketStatus; cdecl;
  sfTcpSocket_setBlocking: procedure(socket: PsfTcpSocket; blocking: sfBool); cdecl;
  sfText_copy: function(const text: PsfText): PsfText; cdecl;
  sfText_create: function(): PsfText; cdecl;
  sfText_destroy: procedure(text: PsfText); cdecl;
  sfText_findCharacterPos: function(const text: PsfText; index: NativeUInt): sfVector2f; cdecl;
  sfText_getCharacterSize: function(const text: PsfText): Cardinal; cdecl;
  sfText_getColor: function(const text: PsfText): sfColor; cdecl;
  sfText_getFillColor: function(const text: PsfText): sfColor; cdecl;
  sfText_getFont: function(const text: PsfText): PsfFont; cdecl;
  sfText_getGlobalBounds: function(const text: PsfText): sfFloatRect; cdecl;
  sfText_getInverseTransform: function(const text: PsfText): sfTransform; cdecl;
  sfText_getLetterSpacing: function(const text: PsfText): Single; cdecl;
  sfText_getLineSpacing: function(const text: PsfText): Single; cdecl;
  sfText_getLocalBounds: function(const text: PsfText): sfFloatRect; cdecl;
  sfText_getOrigin: function(const text: PsfText): sfVector2f; cdecl;
  sfText_getOutlineColor: function(const text: PsfText): sfColor; cdecl;
  sfText_getOutlineThickness: function(const text: PsfText): Single; cdecl;
  sfText_getPosition: function(const text: PsfText): sfVector2f; cdecl;
  sfText_getRotation: function(const text: PsfText): Single; cdecl;
  sfText_getScale: function(const text: PsfText): sfVector2f; cdecl;
  sfText_getString: function(const text: PsfText): PUTF8Char; cdecl;
  sfText_getStyle: function(const text: PsfText): sfUint32; cdecl;
  sfText_getTransform: function(const text: PsfText): sfTransform; cdecl;
  sfText_getUnicodeString: function(const text: PsfText): PsfUint32; cdecl;
  sfText_move: procedure(text: PsfText; offset: sfVector2f); cdecl;
  sfText_rotate: procedure(text: PsfText; angle: Single); cdecl;
  sfText_scale: procedure(text: PsfText; factors: sfVector2f); cdecl;
  sfText_setCharacterSize: procedure(text: PsfText; size: Cardinal); cdecl;
  sfText_setColor: procedure(text: PsfText; color: sfColor); cdecl;
  sfText_setFillColor: procedure(text: PsfText; color: sfColor); cdecl;
  sfText_setFont: procedure(text: PsfText; const font: PsfFont); cdecl;
  sfText_setLetterSpacing: procedure(text: PsfText; spacingFactor: Single); cdecl;
  sfText_setLineSpacing: procedure(text: PsfText; spacingFactor: Single); cdecl;
  sfText_setOrigin: procedure(text: PsfText; origin: sfVector2f); cdecl;
  sfText_setOutlineColor: procedure(text: PsfText; color: sfColor); cdecl;
  sfText_setOutlineThickness: procedure(text: PsfText; thickness: Single); cdecl;
  sfText_setPosition: procedure(text: PsfText; position: sfVector2f); cdecl;
  sfText_setRotation: procedure(text: PsfText; angle: Single); cdecl;
  sfText_setScale: procedure(text: PsfText; scale: sfVector2f); cdecl;
  sfText_setString: procedure(text: PsfText; const _string: PUTF8Char); cdecl;
  sfText_setStyle: procedure(text: PsfText; style: sfUint32); cdecl;
  sfText_setUnicodeString: procedure(text: PsfText; const _string: PsfUint32); cdecl;
  sfTexture_bind: procedure(const texture: PsfTexture); cdecl;
  sfTexture_copy: function(const texture: PsfTexture): PsfTexture; cdecl;
  sfTexture_copyToImage: function(const texture: PsfTexture): PsfImage; cdecl;
  sfTexture_create: function(width: Cardinal; height: Cardinal): PsfTexture; cdecl;
  sfTexture_createFromFile: function(const filename: PUTF8Char; const area: PsfIntRect): PsfTexture; cdecl;
  sfTexture_createFromImage: function(const image: PsfImage; const area: PsfIntRect): PsfTexture; cdecl;
  sfTexture_createFromMemory: function(const data: Pointer; sizeInBytes: NativeUInt; const area: PsfIntRect): PsfTexture; cdecl;
  sfTexture_createFromStream: function(stream: PsfInputStream; const area: PsfIntRect): PsfTexture; cdecl;
  sfTexture_destroy: procedure(texture: PsfTexture); cdecl;
  sfTexture_generateMipmap: function(texture: PsfTexture): sfBool; cdecl;
  sfTexture_getMaximumSize: function(): Cardinal; cdecl;
  sfTexture_getNativeHandle: function(const texture: PsfTexture): Cardinal; cdecl;
  sfTexture_getSize: function(const texture: PsfTexture): sfVector2u; cdecl;
  sfTexture_isRepeated: function(const texture: PsfTexture): sfBool; cdecl;
  sfTexture_isSmooth: function(const texture: PsfTexture): sfBool; cdecl;
  sfTexture_isSrgb: function(const texture: PsfTexture): sfBool; cdecl;
  sfTexture_setRepeated: procedure(texture: PsfTexture; repeated: sfBool); cdecl;
  sfTexture_setSmooth: procedure(texture: PsfTexture; smooth: sfBool); cdecl;
  sfTexture_setSrgb: procedure(texture: PsfTexture; sRgb: sfBool); cdecl;
  sfTexture_swap: procedure(left: PsfTexture; right: PsfTexture); cdecl;
  sfTexture_updateFromImage: procedure(texture: PsfTexture; const image: PsfImage; x: Cardinal; y: Cardinal); cdecl;
  sfTexture_updateFromPixels: procedure(texture: PsfTexture; const pixels: PsfUint8; width: Cardinal; height: Cardinal; x: Cardinal; y: Cardinal); cdecl;
  sfTexture_updateFromRenderWindow: procedure(texture: PsfTexture; const renderWindow: PsfRenderWindow; x: Cardinal; y: Cardinal); cdecl;
  sfTexture_updateFromTexture: procedure(destination: PsfTexture; const source: PsfTexture; x: Cardinal; y: Cardinal); cdecl;
  sfTexture_updateFromWindow: procedure(texture: PsfTexture; const window: PsfWindow; x: Cardinal; y: Cardinal); cdecl;
  sfThread_create: function(_function: sfThread_create_function; userData: Pointer): PsfThread; cdecl;
  sfThread_destroy: procedure(thread: PsfThread); cdecl;
  sfThread_launch: procedure(thread: PsfThread); cdecl;
  sfThread_terminate: procedure(thread: PsfThread); cdecl;
  sfThread_wait: procedure(thread: PsfThread); cdecl;
  sfTime_asMicroseconds: function(time: sfTime): sfInt64; cdecl;
  sfTime_asMilliseconds: function(time: sfTime): sfInt32; cdecl;
  sfTime_asSeconds: function(time: sfTime): Single; cdecl;
  sfTime_Zero: PsfTime;
  sfTouch_getPosition: function(finger: Cardinal; const relativeTo: PsfWindow): sfVector2i; cdecl;
  sfTouch_getPositionRenderWindow: function(finger: Cardinal; const relativeTo: PsfRenderWindow): sfVector2i; cdecl;
  sfTouch_isDown: function(finger: Cardinal): sfBool; cdecl;
  sfTransform_combine: procedure(transform: PsfTransform; const other: PsfTransform); cdecl;
  sfTransform_equal: function(left: PsfTransform; right: PsfTransform): sfBool; cdecl;
  sfTransform_fromMatrix: function(a00: Single; a01: Single; a02: Single; a10: Single; a11: Single; a12: Single; a20: Single; a21: Single; a22: Single): sfTransform; cdecl;
  sfTransform_getInverse: function(const transform: PsfTransform): sfTransform; cdecl;
  sfTransform_getMatrix: procedure(const transform: PsfTransform; matrix: PSingle); cdecl;
  sfTransform_Identity: PsfTransform;
  sfTransform_rotate: procedure(transform: PsfTransform; angle: Single); cdecl;
  sfTransform_rotateWithCenter: procedure(transform: PsfTransform; angle: Single; centerX: Single; centerY: Single); cdecl;
  sfTransform_scale: procedure(transform: PsfTransform; scaleX: Single; scaleY: Single); cdecl;
  sfTransform_scaleWithCenter: procedure(transform: PsfTransform; scaleX: Single; scaleY: Single; centerX: Single; centerY: Single); cdecl;
  sfTransform_transformPoint: function(const transform: PsfTransform; point: sfVector2f): sfVector2f; cdecl;
  sfTransform_transformRect: function(const transform: PsfTransform; rectangle: sfFloatRect): sfFloatRect; cdecl;
  sfTransform_translate: procedure(transform: PsfTransform; x: Single; y: Single); cdecl;
  sfTransformable_copy: function(const transformable: PsfTransformable): PsfTransformable; cdecl;
  sfTransformable_create: function(): PsfTransformable; cdecl;
  sfTransformable_destroy: procedure(transformable: PsfTransformable); cdecl;
  sfTransformable_getInverseTransform: function(const transformable: PsfTransformable): sfTransform; cdecl;
  sfTransformable_getOrigin: function(const transformable: PsfTransformable): sfVector2f; cdecl;
  sfTransformable_getPosition: function(const transformable: PsfTransformable): sfVector2f; cdecl;
  sfTransformable_getRotation: function(const transformable: PsfTransformable): Single; cdecl;
  sfTransformable_getScale: function(const transformable: PsfTransformable): sfVector2f; cdecl;
  sfTransformable_getTransform: function(const transformable: PsfTransformable): sfTransform; cdecl;
  sfTransformable_move: procedure(transformable: PsfTransformable; offset: sfVector2f); cdecl;
  sfTransformable_rotate: procedure(transformable: PsfTransformable; angle: Single); cdecl;
  sfTransformable_scale: procedure(transformable: PsfTransformable; factors: sfVector2f); cdecl;
  sfTransformable_setOrigin: procedure(transformable: PsfTransformable; origin: sfVector2f); cdecl;
  sfTransformable_setPosition: procedure(transformable: PsfTransformable; position: sfVector2f); cdecl;
  sfTransformable_setRotation: procedure(transformable: PsfTransformable; angle: Single); cdecl;
  sfTransformable_setScale: procedure(transformable: PsfTransformable; scale: sfVector2f); cdecl;
  sfTransparent: PsfColor;
  sfUdpSocket_bind: function(socket: PsfUdpSocket; port: Word; address: sfIpAddress): sfSocketStatus; cdecl;
  sfUdpSocket_create: function(): PsfUdpSocket; cdecl;
  sfUdpSocket_destroy: procedure(socket: PsfUdpSocket); cdecl;
  sfUdpSocket_getLocalPort: function(const socket: PsfUdpSocket): Word; cdecl;
  sfUdpSocket_isBlocking: function(const socket: PsfUdpSocket): sfBool; cdecl;
  sfUdpSocket_maxDatagramSize: function(): Cardinal; cdecl;
  sfUdpSocket_receive: function(socket: PsfUdpSocket; data: Pointer; size: NativeUInt; received: PNativeUInt; remoteAddress: PsfIpAddress; remotePort: PWord): sfSocketStatus; cdecl;
  sfUdpSocket_receivePacket: function(socket: PsfUdpSocket; packet: PsfPacket; remoteAddress: PsfIpAddress; remotePort: PWord): sfSocketStatus; cdecl;
  sfUdpSocket_send: function(socket: PsfUdpSocket; const data: Pointer; size: NativeUInt; remoteAddress: sfIpAddress; remotePort: Word): sfSocketStatus; cdecl;
  sfUdpSocket_sendPacket: function(socket: PsfUdpSocket; packet: PsfPacket; remoteAddress: sfIpAddress; remotePort: Word): sfSocketStatus; cdecl;
  sfUdpSocket_setBlocking: procedure(socket: PsfUdpSocket; blocking: sfBool); cdecl;
  sfUdpSocket_unbind: procedure(socket: PsfUdpSocket); cdecl;
  sfVertexArray_append: procedure(vertexArray: PsfVertexArray; vertex: sfVertex); cdecl;
  sfVertexArray_clear: procedure(vertexArray: PsfVertexArray); cdecl;
  sfVertexArray_copy: function(const vertexArray: PsfVertexArray): PsfVertexArray; cdecl;
  sfVertexArray_create: function(): PsfVertexArray; cdecl;
  sfVertexArray_destroy: procedure(vertexArray: PsfVertexArray); cdecl;
  sfVertexArray_getBounds: function(vertexArray: PsfVertexArray): sfFloatRect; cdecl;
  sfVertexArray_getPrimitiveType: function(vertexArray: PsfVertexArray): sfPrimitiveType; cdecl;
  sfVertexArray_getVertex: function(vertexArray: PsfVertexArray; index: NativeUInt): PsfVertex; cdecl;
  sfVertexArray_getVertexCount: function(const vertexArray: PsfVertexArray): NativeUInt; cdecl;
  sfVertexArray_resize: procedure(vertexArray: PsfVertexArray; vertexCount: NativeUInt); cdecl;
  sfVertexArray_setPrimitiveType: procedure(vertexArray: PsfVertexArray; _type: sfPrimitiveType); cdecl;
  sfVertexBuffer_bind: procedure(const vertexBuffer: PsfVertexBuffer); cdecl;
  sfVertexBuffer_copy: function(const vertexBuffer: PsfVertexBuffer): PsfVertexBuffer; cdecl;
  sfVertexBuffer_create: function(vertexCount: Cardinal; _type: sfPrimitiveType; usage: sfVertexBufferUsage): PsfVertexBuffer; cdecl;
  sfVertexBuffer_destroy: procedure(vertexBuffer: PsfVertexBuffer); cdecl;
  sfVertexBuffer_getNativeHandle: function(vertexBuffer: PsfVertexBuffer): Cardinal; cdecl;
  sfVertexBuffer_getPrimitiveType: function(const vertexBuffer: PsfVertexBuffer): sfPrimitiveType; cdecl;
  sfVertexBuffer_getUsage: function(const vertexBuffer: PsfVertexBuffer): sfVertexBufferUsage; cdecl;
  sfVertexBuffer_getVertexCount: function(const vertexBuffer: PsfVertexBuffer): Cardinal; cdecl;
  sfVertexBuffer_isAvailable: function(): sfBool; cdecl;
  sfVertexBuffer_setPrimitiveType: procedure(vertexBuffer: PsfVertexBuffer; _type: sfPrimitiveType); cdecl;
  sfVertexBuffer_setUsage: procedure(vertexBuffer: PsfVertexBuffer; usage: sfVertexBufferUsage); cdecl;
  sfVertexBuffer_swap: procedure(left: PsfVertexBuffer; right: PsfVertexBuffer); cdecl;
  sfVertexBuffer_update: function(vertexBuffer: PsfVertexBuffer; const vertices: PsfVertex; vertexCount: Cardinal; offset: Cardinal): sfBool; cdecl;
  sfVertexBuffer_updateFromVertexBuffer: function(vertexBuffer: PsfVertexBuffer; const other: PsfVertexBuffer): sfBool; cdecl;
  sfVideoMode_getDesktopMode: function(): sfVideoMode; cdecl;
  sfVideoMode_getFullscreenModes: function(count: PNativeUInt): PsfVideoMode; cdecl;
  sfVideoMode_isValid: function(mode: sfVideoMode): sfBool; cdecl;
  sfView_copy: function(const view: PsfView): PsfView; cdecl;
  sfView_create: function(): PsfView; cdecl;
  sfView_createFromRect: function(rectangle: sfFloatRect): PsfView; cdecl;
  sfView_destroy: procedure(view: PsfView); cdecl;
  sfView_getCenter: function(const view: PsfView): sfVector2f; cdecl;
  sfView_getRotation: function(const view: PsfView): Single; cdecl;
  sfView_getSize: function(const view: PsfView): sfVector2f; cdecl;
  sfView_getViewport: function(const view: PsfView): sfFloatRect; cdecl;
  sfView_move: procedure(view: PsfView; offset: sfVector2f); cdecl;
  sfView_reset: procedure(view: PsfView; rectangle: sfFloatRect); cdecl;
  sfView_rotate: procedure(view: PsfView; angle: Single); cdecl;
  sfView_setCenter: procedure(view: PsfView; center: sfVector2f); cdecl;
  sfView_setRotation: procedure(view: PsfView; angle: Single); cdecl;
  sfView_setSize: procedure(view: PsfView; size: sfVector2f); cdecl;
  sfView_setViewport: procedure(view: PsfView; viewport: sfFloatRect); cdecl;
  sfView_zoom: procedure(view: PsfView; factor: Single); cdecl;
  sfWhite: PsfColor;
  sfWindow_close: procedure(window: PsfWindow); cdecl;
  sfWindow_create: function(mode: sfVideoMode; const title: PUTF8Char; style: sfUint32; const settings: PsfContextSettings): PsfWindow; cdecl;
  sfWindow_createFromHandle: function(handle: sfWindowHandle; const settings: PsfContextSettings): PsfWindow; cdecl;
  sfWindow_createUnicode: function(mode: sfVideoMode; const title: PsfUint32; style: sfUint32; const settings: PsfContextSettings): PsfWindow; cdecl;
  sfWindow_destroy: procedure(window: PsfWindow); cdecl;
  sfWindow_display: procedure(window: PsfWindow); cdecl;
  sfWindow_getPosition: function(const window: PsfWindow): sfVector2i; cdecl;
  sfWindow_getSettings: function(const window: PsfWindow): sfContextSettings; cdecl;
  sfWindow_getSize: function(const window: PsfWindow): sfVector2u; cdecl;
  sfWindow_getSystemHandle: function(const window: PsfWindow): sfWindowHandle; cdecl;
  sfWindow_hasFocus: function(const window: PsfWindow): sfBool; cdecl;
  sfWindow_isOpen: function(const window: PsfWindow): sfBool; cdecl;
  sfWindow_pollEvent: function(window: PsfWindow; event: PsfEvent): sfBool; cdecl;
  sfWindow_requestFocus: procedure(window: PsfWindow); cdecl;
  sfWindow_setActive: function(window: PsfWindow; active: sfBool): sfBool; cdecl;
  sfWindow_setFramerateLimit: procedure(window: PsfWindow; limit: Cardinal); cdecl;
  sfWindow_setIcon: procedure(window: PsfWindow; width: Cardinal; height: Cardinal; const pixels: PsfUint8); cdecl;
  sfWindow_setJoystickThreshold: procedure(window: PsfWindow; threshold: Single); cdecl;
  sfWindow_setKeyRepeatEnabled: procedure(window: PsfWindow; enabled: sfBool); cdecl;
  sfWindow_setMouseCursor: procedure(window: PsfWindow; const cursor: PsfCursor); cdecl;
  sfWindow_setMouseCursorGrabbed: procedure(window: PsfWindow; grabbed: sfBool); cdecl;
  sfWindow_setMouseCursorVisible: procedure(window: PsfWindow; visible: sfBool); cdecl;
  sfWindow_setPosition: procedure(window: PsfWindow; position: sfVector2i); cdecl;
  sfWindow_setSize: procedure(window: PsfWindow; size: sfVector2u); cdecl;
  sfWindow_setTitle: procedure(window: PsfWindow; const title: PUTF8Char); cdecl;
  sfWindow_setUnicodeTitle: procedure(window: PsfWindow; const title: PsfUint32); cdecl;
  sfWindow_setVerticalSyncEnabled: procedure(window: PsfWindow; enabled: sfBool); cdecl;
  sfWindow_setVisible: procedure(window: PsfWindow; visible: sfBool); cdecl;
  sfWindow_waitEvent: function(window: PsfWindow; event: PsfEvent): sfBool; cdecl;
  sfYellow: PsfColor;
  zipClose: function(_file: zipFile; const global_comment: PUTF8Char): Integer; cdecl;
  zipCloseFileInZip: function(_file: zipFile): Integer; cdecl;
  zipOpen: function(const pathname: PUTF8Char; append: Integer): zipFile; cdecl;
  zipOpenNewFileInZip3: function(_file: zipFile; const filename: PUTF8Char; const zipfi: Pzip_fileinfo; const extrafield_local: Pointer; size_extrafield_local: uInt; const extrafield_global: Pointer; size_extrafield_global: uInt; const comment: PUTF8Char; method: Integer; level: Integer; raw: Integer; windowBits: Integer; memLevel: Integer; strategy: Integer; const password: PUTF8Char; crcForCrypting: uLong): Integer; cdecl;
  zipWriteInFileInZip: function(_file: zipFile; const buf: Pointer; len: Cardinal): Integer; cdecl;
{$ENDREGION}

implementation

{$R SFML.res}

uses
  System.SysUtils,
  System.IOUtils,
  System.Classes,
  System.Zip,
  WinAPI.ShellAPI;

var
  LDllHandle: THandle;
  LDllName: string;

procedure DeferDelFile(const aFilename: string);
var
  LCode: TStringList;
  LFilename: string;

  procedure C(const aMsg: string; const aArgs: array of const);
  var
    LLine: string;
  begin
    LLine := Format(aMsg, aArgs);
    LCode.Add(LLine);
  end;

begin
  if aFilename.IsEmpty then Exit;
  LFilename := ChangeFileExt(aFilename, '');
  LFilename := LFilename + '_DeferDelFile.bat';

  LCode := TStringList.Create;
  try
    C('@echo off', []);
    C(':Repeat', []);
    C('del "%s"', [aFilename]);
    C('if exist "%s" goto Repeat', [aFilename]);
    C('del "%s"', [LFilename]);
    LCode.SaveToFile(LFilename);
  finally
    FreeAndNil(LCode);
  end;

  if FileExists(LFilename) then
  begin
    ShellExecute(0, 'open', PChar(LFilename), nil, nil, SW_HIDE);
  end;
end;

procedure LoadDLL;
var
  LResStream: TResourceStream;
  LZipFile: TZipFile;
  LZipStream: TStream;
  LFileStream: TFileStream;
  LHeader: TZipHeader;
begin
  LResStream := TResourceStream.Create(HInstance, 'RESDATA', RT_RCDATA);
  LZipFile := TZipFile.Create;
  LZipFile.Open(LResStream, zmRead);
  LZipFile.Read(0, LZipStream, LHeader);
  LDllName := TPath.GetTempFileName;
  LFileStream := TFile.Create(LDllName);
  LFileStream.CopyFrom(LZipStream, LZipStream.Size);
  FreeAndNil(LFileStream);
  FreeAndNil(LZipStream);
  FreeAndNil(LZipFile);
  FreeAndNil(LResStream);

  LDllHandle := SafeLoadLibrary(LDllName);

  {$REGION 'Init DLL Export Variables'}
  nk__begin := GetProcAddress(LDllHandle, 'nk__begin');
  nk__next := GetProcAddress(LDllHandle, 'nk__next');
  nk_begin := GetProcAddress(LDllHandle, 'nk_begin');
  nk_begin_titled := GetProcAddress(LDllHandle, 'nk_begin_titled');
  nk_buffer_clear := GetProcAddress(LDllHandle, 'nk_buffer_clear');
  nk_buffer_free := GetProcAddress(LDllHandle, 'nk_buffer_free');
  nk_buffer_info := GetProcAddress(LDllHandle, 'nk_buffer_info');
  nk_buffer_init := GetProcAddress(LDllHandle, 'nk_buffer_init');
  nk_buffer_init_default := GetProcAddress(LDllHandle, 'nk_buffer_init_default');
  nk_buffer_init_fixed := GetProcAddress(LDllHandle, 'nk_buffer_init_fixed');
  nk_buffer_mark := GetProcAddress(LDllHandle, 'nk_buffer_mark');
  nk_buffer_memory := GetProcAddress(LDllHandle, 'nk_buffer_memory');
  nk_buffer_memory_const := GetProcAddress(LDllHandle, 'nk_buffer_memory_const');
  nk_buffer_push := GetProcAddress(LDllHandle, 'nk_buffer_push');
  nk_buffer_reset := GetProcAddress(LDllHandle, 'nk_buffer_reset');
  nk_buffer_total := GetProcAddress(LDllHandle, 'nk_buffer_total');
  nk_button_color := GetProcAddress(LDllHandle, 'nk_button_color');
  nk_button_image := GetProcAddress(LDllHandle, 'nk_button_image');
  nk_button_image_label := GetProcAddress(LDllHandle, 'nk_button_image_label');
  nk_button_image_label_styled := GetProcAddress(LDllHandle, 'nk_button_image_label_styled');
  nk_button_image_styled := GetProcAddress(LDllHandle, 'nk_button_image_styled');
  nk_button_image_text := GetProcAddress(LDllHandle, 'nk_button_image_text');
  nk_button_image_text_styled := GetProcAddress(LDllHandle, 'nk_button_image_text_styled');
  nk_button_label := GetProcAddress(LDllHandle, 'nk_button_label');
  nk_button_label_styled := GetProcAddress(LDllHandle, 'nk_button_label_styled');
  nk_button_pop_behavior := GetProcAddress(LDllHandle, 'nk_button_pop_behavior');
  nk_button_push_behavior := GetProcAddress(LDllHandle, 'nk_button_push_behavior');
  nk_button_set_behavior := GetProcAddress(LDllHandle, 'nk_button_set_behavior');
  nk_button_symbol := GetProcAddress(LDllHandle, 'nk_button_symbol');
  nk_button_symbol_label := GetProcAddress(LDllHandle, 'nk_button_symbol_label');
  nk_button_symbol_label_styled := GetProcAddress(LDllHandle, 'nk_button_symbol_label_styled');
  nk_button_symbol_styled := GetProcAddress(LDllHandle, 'nk_button_symbol_styled');
  nk_button_symbol_text := GetProcAddress(LDllHandle, 'nk_button_symbol_text');
  nk_button_symbol_text_styled := GetProcAddress(LDllHandle, 'nk_button_symbol_text_styled');
  nk_button_text := GetProcAddress(LDllHandle, 'nk_button_text');
  nk_button_text_styled := GetProcAddress(LDllHandle, 'nk_button_text_styled');
  nk_chart_add_slot := GetProcAddress(LDllHandle, 'nk_chart_add_slot');
  nk_chart_add_slot_colored := GetProcAddress(LDllHandle, 'nk_chart_add_slot_colored');
  nk_chart_begin := GetProcAddress(LDllHandle, 'nk_chart_begin');
  nk_chart_begin_colored := GetProcAddress(LDllHandle, 'nk_chart_begin_colored');
  nk_chart_end := GetProcAddress(LDllHandle, 'nk_chart_end');
  nk_chart_push := GetProcAddress(LDllHandle, 'nk_chart_push');
  nk_chart_push_slot := GetProcAddress(LDllHandle, 'nk_chart_push_slot');
  nk_check_flags_label := GetProcAddress(LDllHandle, 'nk_check_flags_label');
  nk_check_flags_text := GetProcAddress(LDllHandle, 'nk_check_flags_text');
  nk_check_label := GetProcAddress(LDllHandle, 'nk_check_label');
  nk_check_text := GetProcAddress(LDllHandle, 'nk_check_text');
  nk_checkbox_flags_label := GetProcAddress(LDllHandle, 'nk_checkbox_flags_label');
  nk_checkbox_flags_text := GetProcAddress(LDllHandle, 'nk_checkbox_flags_text');
  nk_checkbox_label := GetProcAddress(LDllHandle, 'nk_checkbox_label');
  nk_checkbox_text := GetProcAddress(LDllHandle, 'nk_checkbox_text');
  nk_clear := GetProcAddress(LDllHandle, 'nk_clear');
  nk_color_cf := GetProcAddress(LDllHandle, 'nk_color_cf');
  nk_color_d := GetProcAddress(LDllHandle, 'nk_color_d');
  nk_color_dv := GetProcAddress(LDllHandle, 'nk_color_dv');
  nk_color_f := GetProcAddress(LDllHandle, 'nk_color_f');
  nk_color_fv := GetProcAddress(LDllHandle, 'nk_color_fv');
  nk_color_hex_rgb := GetProcAddress(LDllHandle, 'nk_color_hex_rgb');
  nk_color_hex_rgba := GetProcAddress(LDllHandle, 'nk_color_hex_rgba');
  nk_color_hsv_b := GetProcAddress(LDllHandle, 'nk_color_hsv_b');
  nk_color_hsv_bv := GetProcAddress(LDllHandle, 'nk_color_hsv_bv');
  nk_color_hsv_f := GetProcAddress(LDllHandle, 'nk_color_hsv_f');
  nk_color_hsv_fv := GetProcAddress(LDllHandle, 'nk_color_hsv_fv');
  nk_color_hsv_i := GetProcAddress(LDllHandle, 'nk_color_hsv_i');
  nk_color_hsv_iv := GetProcAddress(LDllHandle, 'nk_color_hsv_iv');
  nk_color_hsva_b := GetProcAddress(LDllHandle, 'nk_color_hsva_b');
  nk_color_hsva_bv := GetProcAddress(LDllHandle, 'nk_color_hsva_bv');
  nk_color_hsva_f := GetProcAddress(LDllHandle, 'nk_color_hsva_f');
  nk_color_hsva_fv := GetProcAddress(LDllHandle, 'nk_color_hsva_fv');
  nk_color_hsva_i := GetProcAddress(LDllHandle, 'nk_color_hsva_i');
  nk_color_hsva_iv := GetProcAddress(LDllHandle, 'nk_color_hsva_iv');
  nk_color_pick := GetProcAddress(LDllHandle, 'nk_color_pick');
  nk_color_picker := GetProcAddress(LDllHandle, 'nk_color_picker');
  nk_color_u32 := GetProcAddress(LDllHandle, 'nk_color_u32');
  nk_colorf_hsva_f := GetProcAddress(LDllHandle, 'nk_colorf_hsva_f');
  nk_colorf_hsva_fv := GetProcAddress(LDllHandle, 'nk_colorf_hsva_fv');
  nk_combo := GetProcAddress(LDllHandle, 'nk_combo');
  nk_combo_begin_color := GetProcAddress(LDllHandle, 'nk_combo_begin_color');
  nk_combo_begin_image := GetProcAddress(LDllHandle, 'nk_combo_begin_image');
  nk_combo_begin_image_label := GetProcAddress(LDllHandle, 'nk_combo_begin_image_label');
  nk_combo_begin_image_text := GetProcAddress(LDllHandle, 'nk_combo_begin_image_text');
  nk_combo_begin_label := GetProcAddress(LDllHandle, 'nk_combo_begin_label');
  nk_combo_begin_symbol := GetProcAddress(LDllHandle, 'nk_combo_begin_symbol');
  nk_combo_begin_symbol_label := GetProcAddress(LDllHandle, 'nk_combo_begin_symbol_label');
  nk_combo_begin_symbol_text := GetProcAddress(LDllHandle, 'nk_combo_begin_symbol_text');
  nk_combo_begin_text := GetProcAddress(LDllHandle, 'nk_combo_begin_text');
  nk_combo_callback := GetProcAddress(LDllHandle, 'nk_combo_callback');
  nk_combo_close := GetProcAddress(LDllHandle, 'nk_combo_close');
  nk_combo_end := GetProcAddress(LDllHandle, 'nk_combo_end');
  nk_combo_item_image_label := GetProcAddress(LDllHandle, 'nk_combo_item_image_label');
  nk_combo_item_image_text := GetProcAddress(LDllHandle, 'nk_combo_item_image_text');
  nk_combo_item_label := GetProcAddress(LDllHandle, 'nk_combo_item_label');
  nk_combo_item_symbol_label := GetProcAddress(LDllHandle, 'nk_combo_item_symbol_label');
  nk_combo_item_symbol_text := GetProcAddress(LDllHandle, 'nk_combo_item_symbol_text');
  nk_combo_item_text := GetProcAddress(LDllHandle, 'nk_combo_item_text');
  nk_combo_separator := GetProcAddress(LDllHandle, 'nk_combo_separator');
  nk_combo_string := GetProcAddress(LDllHandle, 'nk_combo_string');
  nk_combobox := GetProcAddress(LDllHandle, 'nk_combobox');
  nk_combobox_callback := GetProcAddress(LDllHandle, 'nk_combobox_callback');
  nk_combobox_separator := GetProcAddress(LDllHandle, 'nk_combobox_separator');
  nk_combobox_string := GetProcAddress(LDllHandle, 'nk_combobox_string');
  nk_contextual_begin := GetProcAddress(LDllHandle, 'nk_contextual_begin');
  nk_contextual_close := GetProcAddress(LDllHandle, 'nk_contextual_close');
  nk_contextual_end := GetProcAddress(LDllHandle, 'nk_contextual_end');
  nk_contextual_item_image_label := GetProcAddress(LDllHandle, 'nk_contextual_item_image_label');
  nk_contextual_item_image_text := GetProcAddress(LDllHandle, 'nk_contextual_item_image_text');
  nk_contextual_item_label := GetProcAddress(LDllHandle, 'nk_contextual_item_label');
  nk_contextual_item_symbol_label := GetProcAddress(LDllHandle, 'nk_contextual_item_symbol_label');
  nk_contextual_item_symbol_text := GetProcAddress(LDllHandle, 'nk_contextual_item_symbol_text');
  nk_contextual_item_text := GetProcAddress(LDllHandle, 'nk_contextual_item_text');
  nk_draw_image := GetProcAddress(LDllHandle, 'nk_draw_image');
  nk_draw_nine_slice := GetProcAddress(LDllHandle, 'nk_draw_nine_slice');
  nk_draw_text := GetProcAddress(LDllHandle, 'nk_draw_text');
  nk_edit_buffer := GetProcAddress(LDllHandle, 'nk_edit_buffer');
  nk_edit_focus := GetProcAddress(LDllHandle, 'nk_edit_focus');
  nk_edit_string := GetProcAddress(LDllHandle, 'nk_edit_string');
  nk_edit_string_zero_terminated := GetProcAddress(LDllHandle, 'nk_edit_string_zero_terminated');
  nk_edit_unfocus := GetProcAddress(LDllHandle, 'nk_edit_unfocus');
  nk_end := GetProcAddress(LDllHandle, 'nk_end');
  nk_fill_arc := GetProcAddress(LDllHandle, 'nk_fill_arc');
  nk_fill_circle := GetProcAddress(LDllHandle, 'nk_fill_circle');
  nk_fill_polygon := GetProcAddress(LDllHandle, 'nk_fill_polygon');
  nk_fill_rect := GetProcAddress(LDllHandle, 'nk_fill_rect');
  nk_fill_rect_multi_color := GetProcAddress(LDllHandle, 'nk_fill_rect_multi_color');
  nk_fill_triangle := GetProcAddress(LDllHandle, 'nk_fill_triangle');
  nk_filter_ascii := GetProcAddress(LDllHandle, 'nk_filter_ascii');
  nk_filter_binary := GetProcAddress(LDllHandle, 'nk_filter_binary');
  nk_filter_decimal := GetProcAddress(LDllHandle, 'nk_filter_decimal');
  nk_filter_default := GetProcAddress(LDllHandle, 'nk_filter_default');
  nk_filter_float := GetProcAddress(LDllHandle, 'nk_filter_float');
  nk_filter_hex := GetProcAddress(LDllHandle, 'nk_filter_hex');
  nk_filter_oct := GetProcAddress(LDllHandle, 'nk_filter_oct');
  nk_font_atlas_add := GetProcAddress(LDllHandle, 'nk_font_atlas_add');
  nk_font_atlas_add_compressed := GetProcAddress(LDllHandle, 'nk_font_atlas_add_compressed');
  nk_font_atlas_add_compressed_base85 := GetProcAddress(LDllHandle, 'nk_font_atlas_add_compressed_base85');
  nk_font_atlas_add_default := GetProcAddress(LDllHandle, 'nk_font_atlas_add_default');
  nk_font_atlas_add_from_file := GetProcAddress(LDllHandle, 'nk_font_atlas_add_from_file');
  nk_font_atlas_add_from_memory := GetProcAddress(LDllHandle, 'nk_font_atlas_add_from_memory');
  nk_font_atlas_bake := GetProcAddress(LDllHandle, 'nk_font_atlas_bake');
  nk_font_atlas_begin := GetProcAddress(LDllHandle, 'nk_font_atlas_begin');
  nk_font_atlas_cleanup := GetProcAddress(LDllHandle, 'nk_font_atlas_cleanup');
  nk_font_atlas_clear := GetProcAddress(LDllHandle, 'nk_font_atlas_clear');
  nk_font_atlas_end := GetProcAddress(LDllHandle, 'nk_font_atlas_end');
  nk_font_atlas_init := GetProcAddress(LDllHandle, 'nk_font_atlas_init');
  nk_font_atlas_init_custom := GetProcAddress(LDllHandle, 'nk_font_atlas_init_custom');
  nk_font_atlas_init_default := GetProcAddress(LDllHandle, 'nk_font_atlas_init_default');
  nk_font_chinese_glyph_ranges := GetProcAddress(LDllHandle, 'nk_font_chinese_glyph_ranges');
  nk_font_config_ := GetProcAddress(LDllHandle, 'nk_font_config');
  nk_font_cyrillic_glyph_ranges := GetProcAddress(LDllHandle, 'nk_font_cyrillic_glyph_ranges');
  nk_font_default_glyph_ranges := GetProcAddress(LDllHandle, 'nk_font_default_glyph_ranges');
  nk_font_find_glyph := GetProcAddress(LDllHandle, 'nk_font_find_glyph');
  nk_font_korean_glyph_ranges := GetProcAddress(LDllHandle, 'nk_font_korean_glyph_ranges');
  nk_free := GetProcAddress(LDllHandle, 'nk_free');
  nk_get_null_rect := GetProcAddress(LDllHandle, 'nk_get_null_rect');
  nk_group_begin := GetProcAddress(LDllHandle, 'nk_group_begin');
  nk_group_begin_titled := GetProcAddress(LDllHandle, 'nk_group_begin_titled');
  nk_group_end := GetProcAddress(LDllHandle, 'nk_group_end');
  nk_group_get_scroll := GetProcAddress(LDllHandle, 'nk_group_get_scroll');
  nk_group_scrolled_begin := GetProcAddress(LDllHandle, 'nk_group_scrolled_begin');
  nk_group_scrolled_end := GetProcAddress(LDllHandle, 'nk_group_scrolled_end');
  nk_group_scrolled_offset_begin := GetProcAddress(LDllHandle, 'nk_group_scrolled_offset_begin');
  nk_group_set_scroll := GetProcAddress(LDllHandle, 'nk_group_set_scroll');
  nk_handle_id := GetProcAddress(LDllHandle, 'nk_handle_id');
  nk_handle_ptr := GetProcAddress(LDllHandle, 'nk_handle_ptr');
  nk_hsv := GetProcAddress(LDllHandle, 'nk_hsv');
  nk_hsv_bv := GetProcAddress(LDllHandle, 'nk_hsv_bv');
  nk_hsv_f := GetProcAddress(LDllHandle, 'nk_hsv_f');
  nk_hsv_fv := GetProcAddress(LDllHandle, 'nk_hsv_fv');
  nk_hsv_iv := GetProcAddress(LDllHandle, 'nk_hsv_iv');
  nk_hsva := GetProcAddress(LDllHandle, 'nk_hsva');
  nk_hsva_bv := GetProcAddress(LDllHandle, 'nk_hsva_bv');
  nk_hsva_colorf := GetProcAddress(LDllHandle, 'nk_hsva_colorf');
  nk_hsva_colorfv := GetProcAddress(LDllHandle, 'nk_hsva_colorfv');
  nk_hsva_f := GetProcAddress(LDllHandle, 'nk_hsva_f');
  nk_hsva_fv := GetProcAddress(LDllHandle, 'nk_hsva_fv');
  nk_hsva_iv := GetProcAddress(LDllHandle, 'nk_hsva_iv');
  nk_image_ := GetProcAddress(LDllHandle, 'nk_image');
  nk_image_color := GetProcAddress(LDllHandle, 'nk_image_color');
  nk_image_handle := GetProcAddress(LDllHandle, 'nk_image_handle');
  nk_image_id := GetProcAddress(LDllHandle, 'nk_image_id');
  nk_image_is_subimage := GetProcAddress(LDllHandle, 'nk_image_is_subimage');
  nk_image_ptr := GetProcAddress(LDllHandle, 'nk_image_ptr');
  nk_init := GetProcAddress(LDllHandle, 'nk_init');
  nk_init_custom := GetProcAddress(LDllHandle, 'nk_init_custom');
  nk_init_default := GetProcAddress(LDllHandle, 'nk_init_default');
  nk_init_fixed := GetProcAddress(LDllHandle, 'nk_init_fixed');
  nk_input_any_mouse_click_in_rect := GetProcAddress(LDllHandle, 'nk_input_any_mouse_click_in_rect');
  nk_input_begin := GetProcAddress(LDllHandle, 'nk_input_begin');
  nk_input_button := GetProcAddress(LDllHandle, 'nk_input_button');
  nk_input_char := GetProcAddress(LDllHandle, 'nk_input_char');
  nk_input_end := GetProcAddress(LDllHandle, 'nk_input_end');
  nk_input_glyph := GetProcAddress(LDllHandle, 'nk_input_glyph');
  nk_input_has_mouse_click := GetProcAddress(LDllHandle, 'nk_input_has_mouse_click');
  nk_input_has_mouse_click_down_in_rect := GetProcAddress(LDllHandle, 'nk_input_has_mouse_click_down_in_rect');
  nk_input_has_mouse_click_in_rect := GetProcAddress(LDllHandle, 'nk_input_has_mouse_click_in_rect');
  nk_input_is_key_down := GetProcAddress(LDllHandle, 'nk_input_is_key_down');
  nk_input_is_key_pressed := GetProcAddress(LDllHandle, 'nk_input_is_key_pressed');
  nk_input_is_key_released := GetProcAddress(LDllHandle, 'nk_input_is_key_released');
  nk_input_is_mouse_click_down_in_rect := GetProcAddress(LDllHandle, 'nk_input_is_mouse_click_down_in_rect');
  nk_input_is_mouse_click_in_rect := GetProcAddress(LDllHandle, 'nk_input_is_mouse_click_in_rect');
  nk_input_is_mouse_down := GetProcAddress(LDllHandle, 'nk_input_is_mouse_down');
  nk_input_is_mouse_hovering_rect := GetProcAddress(LDllHandle, 'nk_input_is_mouse_hovering_rect');
  nk_input_is_mouse_pressed := GetProcAddress(LDllHandle, 'nk_input_is_mouse_pressed');
  nk_input_is_mouse_prev_hovering_rect := GetProcAddress(LDllHandle, 'nk_input_is_mouse_prev_hovering_rect');
  nk_input_is_mouse_released := GetProcAddress(LDllHandle, 'nk_input_is_mouse_released');
  nk_input_key := GetProcAddress(LDllHandle, 'nk_input_key');
  nk_input_motion := GetProcAddress(LDllHandle, 'nk_input_motion');
  nk_input_mouse_clicked := GetProcAddress(LDllHandle, 'nk_input_mouse_clicked');
  nk_input_scroll := GetProcAddress(LDllHandle, 'nk_input_scroll');
  nk_input_unicode := GetProcAddress(LDllHandle, 'nk_input_unicode');
  nk_item_is_any_active := GetProcAddress(LDllHandle, 'nk_item_is_any_active');
  nk_label := GetProcAddress(LDllHandle, 'nk_label');
  nk_label_colored := GetProcAddress(LDllHandle, 'nk_label_colored');
  nk_label_colored_wrap := GetProcAddress(LDllHandle, 'nk_label_colored_wrap');
  nk_label_wrap := GetProcAddress(LDllHandle, 'nk_label_wrap');
  nk_labelf := GetProcAddress(LDllHandle, 'nk_labelf');
  nk_labelf_colored := GetProcAddress(LDllHandle, 'nk_labelf_colored');
  nk_labelf_colored_wrap := GetProcAddress(LDllHandle, 'nk_labelf_colored_wrap');
  nk_labelf_wrap := GetProcAddress(LDllHandle, 'nk_labelf_wrap');
  nk_labelfv := GetProcAddress(LDllHandle, 'nk_labelfv');
  nk_labelfv_colored := GetProcAddress(LDllHandle, 'nk_labelfv_colored');
  nk_labelfv_colored_wrap := GetProcAddress(LDllHandle, 'nk_labelfv_colored_wrap');
  nk_labelfv_wrap := GetProcAddress(LDllHandle, 'nk_labelfv_wrap');
  nk_layout_ratio_from_pixel := GetProcAddress(LDllHandle, 'nk_layout_ratio_from_pixel');
  nk_layout_reset_min_row_height := GetProcAddress(LDllHandle, 'nk_layout_reset_min_row_height');
  nk_layout_row := GetProcAddress(LDllHandle, 'nk_layout_row');
  nk_layout_row_begin := GetProcAddress(LDllHandle, 'nk_layout_row_begin');
  nk_layout_row_dynamic := GetProcAddress(LDllHandle, 'nk_layout_row_dynamic');
  nk_layout_row_end := GetProcAddress(LDllHandle, 'nk_layout_row_end');
  nk_layout_row_push := GetProcAddress(LDllHandle, 'nk_layout_row_push');
  nk_layout_row_static := GetProcAddress(LDllHandle, 'nk_layout_row_static');
  nk_layout_row_template_begin := GetProcAddress(LDllHandle, 'nk_layout_row_template_begin');
  nk_layout_row_template_end := GetProcAddress(LDllHandle, 'nk_layout_row_template_end');
  nk_layout_row_template_push_dynamic := GetProcAddress(LDllHandle, 'nk_layout_row_template_push_dynamic');
  nk_layout_row_template_push_static := GetProcAddress(LDllHandle, 'nk_layout_row_template_push_static');
  nk_layout_row_template_push_variable := GetProcAddress(LDllHandle, 'nk_layout_row_template_push_variable');
  nk_layout_set_min_row_height := GetProcAddress(LDllHandle, 'nk_layout_set_min_row_height');
  nk_layout_space_begin := GetProcAddress(LDllHandle, 'nk_layout_space_begin');
  nk_layout_space_bounds := GetProcAddress(LDllHandle, 'nk_layout_space_bounds');
  nk_layout_space_end := GetProcAddress(LDllHandle, 'nk_layout_space_end');
  nk_layout_space_push := GetProcAddress(LDllHandle, 'nk_layout_space_push');
  nk_layout_space_rect_to_local := GetProcAddress(LDllHandle, 'nk_layout_space_rect_to_local');
  nk_layout_space_rect_to_screen := GetProcAddress(LDllHandle, 'nk_layout_space_rect_to_screen');
  nk_layout_space_to_local := GetProcAddress(LDllHandle, 'nk_layout_space_to_local');
  nk_layout_space_to_screen := GetProcAddress(LDllHandle, 'nk_layout_space_to_screen');
  nk_layout_widget_bounds := GetProcAddress(LDllHandle, 'nk_layout_widget_bounds');
  nk_list_view_begin := GetProcAddress(LDllHandle, 'nk_list_view_begin');
  nk_list_view_end := GetProcAddress(LDllHandle, 'nk_list_view_end');
  nk_menu_begin_image := GetProcAddress(LDllHandle, 'nk_menu_begin_image');
  nk_menu_begin_image_label := GetProcAddress(LDllHandle, 'nk_menu_begin_image_label');
  nk_menu_begin_image_text := GetProcAddress(LDllHandle, 'nk_menu_begin_image_text');
  nk_menu_begin_label := GetProcAddress(LDllHandle, 'nk_menu_begin_label');
  nk_menu_begin_symbol := GetProcAddress(LDllHandle, 'nk_menu_begin_symbol');
  nk_menu_begin_symbol_label := GetProcAddress(LDllHandle, 'nk_menu_begin_symbol_label');
  nk_menu_begin_symbol_text := GetProcAddress(LDllHandle, 'nk_menu_begin_symbol_text');
  nk_menu_begin_text := GetProcAddress(LDllHandle, 'nk_menu_begin_text');
  nk_menu_close := GetProcAddress(LDllHandle, 'nk_menu_close');
  nk_menu_end := GetProcAddress(LDllHandle, 'nk_menu_end');
  nk_menu_item_image_label := GetProcAddress(LDllHandle, 'nk_menu_item_image_label');
  nk_menu_item_image_text := GetProcAddress(LDllHandle, 'nk_menu_item_image_text');
  nk_menu_item_label := GetProcAddress(LDllHandle, 'nk_menu_item_label');
  nk_menu_item_symbol_label := GetProcAddress(LDllHandle, 'nk_menu_item_symbol_label');
  nk_menu_item_symbol_text := GetProcAddress(LDllHandle, 'nk_menu_item_symbol_text');
  nk_menu_item_text := GetProcAddress(LDllHandle, 'nk_menu_item_text');
  nk_menubar_begin := GetProcAddress(LDllHandle, 'nk_menubar_begin');
  nk_menubar_end := GetProcAddress(LDllHandle, 'nk_menubar_end');
  nk_murmur_hash := GetProcAddress(LDllHandle, 'nk_murmur_hash');
  nk_nine_slice_handle := GetProcAddress(LDllHandle, 'nk_nine_slice_handle');
  nk_nine_slice_id := GetProcAddress(LDllHandle, 'nk_nine_slice_id');
  nk_nine_slice_is_sub9slice := GetProcAddress(LDllHandle, 'nk_nine_slice_is_sub9slice');
  nk_nine_slice_ptr := GetProcAddress(LDllHandle, 'nk_nine_slice_ptr');
  nk_option_label := GetProcAddress(LDllHandle, 'nk_option_label');
  nk_option_text := GetProcAddress(LDllHandle, 'nk_option_text');
  nk_plot := GetProcAddress(LDllHandle, 'nk_plot');
  nk_plot_function := GetProcAddress(LDllHandle, 'nk_plot_function');
  nk_popup_begin := GetProcAddress(LDllHandle, 'nk_popup_begin');
  nk_popup_close := GetProcAddress(LDllHandle, 'nk_popup_close');
  nk_popup_end := GetProcAddress(LDllHandle, 'nk_popup_end');
  nk_popup_get_scroll := GetProcAddress(LDllHandle, 'nk_popup_get_scroll');
  nk_popup_set_scroll := GetProcAddress(LDllHandle, 'nk_popup_set_scroll');
  nk_prog := GetProcAddress(LDllHandle, 'nk_prog');
  nk_progress := GetProcAddress(LDllHandle, 'nk_progress');
  nk_property_double := GetProcAddress(LDllHandle, 'nk_property_double');
  nk_property_float := GetProcAddress(LDllHandle, 'nk_property_float');
  nk_property_int := GetProcAddress(LDllHandle, 'nk_property_int');
  nk_propertyd := GetProcAddress(LDllHandle, 'nk_propertyd');
  nk_propertyf := GetProcAddress(LDllHandle, 'nk_propertyf');
  nk_propertyi := GetProcAddress(LDllHandle, 'nk_propertyi');
  nk_push_custom := GetProcAddress(LDllHandle, 'nk_push_custom');
  nk_push_scissor := GetProcAddress(LDllHandle, 'nk_push_scissor');
  nk_radio_label := GetProcAddress(LDllHandle, 'nk_radio_label');
  nk_radio_text := GetProcAddress(LDllHandle, 'nk_radio_text');
  nk_rect_ := GetProcAddress(LDllHandle, 'nk_rect');
  nk_rect_pos := GetProcAddress(LDllHandle, 'nk_rect_pos');
  nk_rect_size := GetProcAddress(LDllHandle, 'nk_rect_size');
  nk_recta := GetProcAddress(LDllHandle, 'nk_recta');
  nk_recti_ := GetProcAddress(LDllHandle, 'nk_recti');
  nk_rectiv := GetProcAddress(LDllHandle, 'nk_rectiv');
  nk_rectv := GetProcAddress(LDllHandle, 'nk_rectv');
  nk_rgb_ := GetProcAddress(LDllHandle, 'nk_rgb');
  nk_rgb_bv := GetProcAddress(LDllHandle, 'nk_rgb_bv');
  nk_rgb_cf := GetProcAddress(LDllHandle, 'nk_rgb_cf');
  nk_rgb_f := GetProcAddress(LDllHandle, 'nk_rgb_f');
  nk_rgb_fv := GetProcAddress(LDllHandle, 'nk_rgb_fv');
  nk_rgb_hex := GetProcAddress(LDllHandle, 'nk_rgb_hex');
  nk_rgb_iv := GetProcAddress(LDllHandle, 'nk_rgb_iv');
  nk_rgba_ := GetProcAddress(LDllHandle, 'nk_rgba');
  nk_rgba_bv := GetProcAddress(LDllHandle, 'nk_rgba_bv');
  nk_rgba_cf := GetProcAddress(LDllHandle, 'nk_rgba_cf');
  nk_rgba_f := GetProcAddress(LDllHandle, 'nk_rgba_f');
  nk_rgba_fv := GetProcAddress(LDllHandle, 'nk_rgba_fv');
  nk_rgba_hex := GetProcAddress(LDllHandle, 'nk_rgba_hex');
  nk_rgba_iv := GetProcAddress(LDllHandle, 'nk_rgba_iv');
  nk_rgba_u32 := GetProcAddress(LDllHandle, 'nk_rgba_u32');
  nk_select_image_label := GetProcAddress(LDllHandle, 'nk_select_image_label');
  nk_select_image_text := GetProcAddress(LDllHandle, 'nk_select_image_text');
  nk_select_label := GetProcAddress(LDllHandle, 'nk_select_label');
  nk_select_symbol_label := GetProcAddress(LDllHandle, 'nk_select_symbol_label');
  nk_select_symbol_text := GetProcAddress(LDllHandle, 'nk_select_symbol_text');
  nk_select_text := GetProcAddress(LDllHandle, 'nk_select_text');
  nk_selectable_image_label := GetProcAddress(LDllHandle, 'nk_selectable_image_label');
  nk_selectable_image_text := GetProcAddress(LDllHandle, 'nk_selectable_image_text');
  nk_selectable_label := GetProcAddress(LDllHandle, 'nk_selectable_label');
  nk_selectable_symbol_label := GetProcAddress(LDllHandle, 'nk_selectable_symbol_label');
  nk_selectable_symbol_text := GetProcAddress(LDllHandle, 'nk_selectable_symbol_text');
  nk_selectable_text := GetProcAddress(LDllHandle, 'nk_selectable_text');
  nk_slide_float := GetProcAddress(LDllHandle, 'nk_slide_float');
  nk_slide_int := GetProcAddress(LDllHandle, 'nk_slide_int');
  nk_slider_float := GetProcAddress(LDllHandle, 'nk_slider_float');
  nk_slider_int := GetProcAddress(LDllHandle, 'nk_slider_int');
  nk_spacer := GetProcAddress(LDllHandle, 'nk_spacer');
  nk_spacing := GetProcAddress(LDllHandle, 'nk_spacing');
  nk_str_append_str_char := GetProcAddress(LDllHandle, 'nk_str_append_str_char');
  nk_str_append_str_runes := GetProcAddress(LDllHandle, 'nk_str_append_str_runes');
  nk_str_append_str_utf8 := GetProcAddress(LDllHandle, 'nk_str_append_str_utf8');
  nk_str_append_text_char := GetProcAddress(LDllHandle, 'nk_str_append_text_char');
  nk_str_append_text_runes := GetProcAddress(LDllHandle, 'nk_str_append_text_runes');
  nk_str_append_text_utf8 := GetProcAddress(LDllHandle, 'nk_str_append_text_utf8');
  nk_str_at_char := GetProcAddress(LDllHandle, 'nk_str_at_char');
  nk_str_at_char_const := GetProcAddress(LDllHandle, 'nk_str_at_char_const');
  nk_str_at_const := GetProcAddress(LDllHandle, 'nk_str_at_const');
  nk_str_at_rune := GetProcAddress(LDllHandle, 'nk_str_at_rune');
  nk_str_clear := GetProcAddress(LDllHandle, 'nk_str_clear');
  nk_str_delete_chars := GetProcAddress(LDllHandle, 'nk_str_delete_chars');
  nk_str_delete_runes := GetProcAddress(LDllHandle, 'nk_str_delete_runes');
  nk_str_free := GetProcAddress(LDllHandle, 'nk_str_free');
  nk_str_get := GetProcAddress(LDllHandle, 'nk_str_get');
  nk_str_get_const := GetProcAddress(LDllHandle, 'nk_str_get_const');
  nk_str_init := GetProcAddress(LDllHandle, 'nk_str_init');
  nk_str_init_default := GetProcAddress(LDllHandle, 'nk_str_init_default');
  nk_str_init_fixed := GetProcAddress(LDllHandle, 'nk_str_init_fixed');
  nk_str_insert_at_char := GetProcAddress(LDllHandle, 'nk_str_insert_at_char');
  nk_str_insert_at_rune := GetProcAddress(LDllHandle, 'nk_str_insert_at_rune');
  nk_str_insert_str_char := GetProcAddress(LDllHandle, 'nk_str_insert_str_char');
  nk_str_insert_str_runes := GetProcAddress(LDllHandle, 'nk_str_insert_str_runes');
  nk_str_insert_str_utf8 := GetProcAddress(LDllHandle, 'nk_str_insert_str_utf8');
  nk_str_insert_text_char := GetProcAddress(LDllHandle, 'nk_str_insert_text_char');
  nk_str_insert_text_runes := GetProcAddress(LDllHandle, 'nk_str_insert_text_runes');
  nk_str_insert_text_utf8 := GetProcAddress(LDllHandle, 'nk_str_insert_text_utf8');
  nk_str_len := GetProcAddress(LDllHandle, 'nk_str_len');
  nk_str_len_char := GetProcAddress(LDllHandle, 'nk_str_len_char');
  nk_str_remove_chars := GetProcAddress(LDllHandle, 'nk_str_remove_chars');
  nk_str_remove_runes := GetProcAddress(LDllHandle, 'nk_str_remove_runes');
  nk_str_rune_at := GetProcAddress(LDllHandle, 'nk_str_rune_at');
  nk_strfilter := GetProcAddress(LDllHandle, 'nk_strfilter');
  nk_stricmp := GetProcAddress(LDllHandle, 'nk_stricmp');
  nk_stricmpn := GetProcAddress(LDllHandle, 'nk_stricmpn');
  nk_strlen := GetProcAddress(LDllHandle, 'nk_strlen');
  nk_strmatch_fuzzy_string := GetProcAddress(LDllHandle, 'nk_strmatch_fuzzy_string');
  nk_strmatch_fuzzy_text := GetProcAddress(LDllHandle, 'nk_strmatch_fuzzy_text');
  nk_stroke_arc := GetProcAddress(LDllHandle, 'nk_stroke_arc');
  nk_stroke_circle := GetProcAddress(LDllHandle, 'nk_stroke_circle');
  nk_stroke_curve := GetProcAddress(LDllHandle, 'nk_stroke_curve');
  nk_stroke_line := GetProcAddress(LDllHandle, 'nk_stroke_line');
  nk_stroke_polygon := GetProcAddress(LDllHandle, 'nk_stroke_polygon');
  nk_stroke_polyline := GetProcAddress(LDllHandle, 'nk_stroke_polyline');
  nk_stroke_rect := GetProcAddress(LDllHandle, 'nk_stroke_rect');
  nk_stroke_triangle := GetProcAddress(LDllHandle, 'nk_stroke_triangle');
  nk_strtod := GetProcAddress(LDllHandle, 'nk_strtod');
  nk_strtof := GetProcAddress(LDllHandle, 'nk_strtof');
  nk_strtoi := GetProcAddress(LDllHandle, 'nk_strtoi');
  nk_style_default := GetProcAddress(LDllHandle, 'nk_style_default');
  nk_style_from_table := GetProcAddress(LDllHandle, 'nk_style_from_table');
  nk_style_get_color_by_name := GetProcAddress(LDllHandle, 'nk_style_get_color_by_name');
  nk_style_hide_cursor := GetProcAddress(LDllHandle, 'nk_style_hide_cursor');
  nk_style_item_color_ := GetProcAddress(LDllHandle, 'nk_style_item_color');
  nk_style_item_hide := GetProcAddress(LDllHandle, 'nk_style_item_hide');
  nk_style_item_image_ := GetProcAddress(LDllHandle, 'nk_style_item_image');
  nk_style_item_nine_slice_ := GetProcAddress(LDllHandle, 'nk_style_item_nine_slice');
  nk_style_load_all_cursors := GetProcAddress(LDllHandle, 'nk_style_load_all_cursors');
  nk_style_load_cursor := GetProcAddress(LDllHandle, 'nk_style_load_cursor');
  nk_style_pop_color := GetProcAddress(LDllHandle, 'nk_style_pop_color');
  nk_style_pop_flags := GetProcAddress(LDllHandle, 'nk_style_pop_flags');
  nk_style_pop_float := GetProcAddress(LDllHandle, 'nk_style_pop_float');
  nk_style_pop_font := GetProcAddress(LDllHandle, 'nk_style_pop_font');
  nk_style_pop_style_item := GetProcAddress(LDllHandle, 'nk_style_pop_style_item');
  nk_style_pop_vec2 := GetProcAddress(LDllHandle, 'nk_style_pop_vec2');
  nk_style_push_color := GetProcAddress(LDllHandle, 'nk_style_push_color');
  nk_style_push_flags := GetProcAddress(LDllHandle, 'nk_style_push_flags');
  nk_style_push_float := GetProcAddress(LDllHandle, 'nk_style_push_float');
  nk_style_push_font := GetProcAddress(LDllHandle, 'nk_style_push_font');
  nk_style_push_style_item := GetProcAddress(LDllHandle, 'nk_style_push_style_item');
  nk_style_push_vec2 := GetProcAddress(LDllHandle, 'nk_style_push_vec2');
  nk_style_set_cursor := GetProcAddress(LDllHandle, 'nk_style_set_cursor');
  nk_style_set_font := GetProcAddress(LDllHandle, 'nk_style_set_font');
  nk_style_show_cursor := GetProcAddress(LDllHandle, 'nk_style_show_cursor');
  nk_sub9slice_handle := GetProcAddress(LDllHandle, 'nk_sub9slice_handle');
  nk_sub9slice_id := GetProcAddress(LDllHandle, 'nk_sub9slice_id');
  nk_sub9slice_ptr := GetProcAddress(LDllHandle, 'nk_sub9slice_ptr');
  nk_subimage_handle := GetProcAddress(LDllHandle, 'nk_subimage_handle');
  nk_subimage_id := GetProcAddress(LDllHandle, 'nk_subimage_id');
  nk_subimage_ptr := GetProcAddress(LDllHandle, 'nk_subimage_ptr');
  nk_text := GetProcAddress(LDllHandle, 'nk_text');
  nk_text_colored := GetProcAddress(LDllHandle, 'nk_text_colored');
  nk_text_wrap := GetProcAddress(LDllHandle, 'nk_text_wrap');
  nk_text_wrap_colored := GetProcAddress(LDllHandle, 'nk_text_wrap_colored');
  nk_textedit_cut := GetProcAddress(LDllHandle, 'nk_textedit_cut');
  nk_textedit_delete := GetProcAddress(LDllHandle, 'nk_textedit_delete');
  nk_textedit_delete_selection := GetProcAddress(LDllHandle, 'nk_textedit_delete_selection');
  nk_textedit_free := GetProcAddress(LDllHandle, 'nk_textedit_free');
  nk_textedit_init := GetProcAddress(LDllHandle, 'nk_textedit_init');
  nk_textedit_init_default := GetProcAddress(LDllHandle, 'nk_textedit_init_default');
  nk_textedit_init_fixed := GetProcAddress(LDllHandle, 'nk_textedit_init_fixed');
  nk_textedit_paste := GetProcAddress(LDllHandle, 'nk_textedit_paste');
  nk_textedit_redo := GetProcAddress(LDllHandle, 'nk_textedit_redo');
  nk_textedit_select_all := GetProcAddress(LDllHandle, 'nk_textedit_select_all');
  nk_textedit_text := GetProcAddress(LDllHandle, 'nk_textedit_text');
  nk_textedit_undo := GetProcAddress(LDllHandle, 'nk_textedit_undo');
  nk_tooltip := GetProcAddress(LDllHandle, 'nk_tooltip');
  nk_tooltip_begin := GetProcAddress(LDllHandle, 'nk_tooltip_begin');
  nk_tooltip_end := GetProcAddress(LDllHandle, 'nk_tooltip_end');
  nk_tooltipf := GetProcAddress(LDllHandle, 'nk_tooltipf');
  nk_tooltipfv := GetProcAddress(LDllHandle, 'nk_tooltipfv');
  nk_tree_element_image_push_hashed := GetProcAddress(LDllHandle, 'nk_tree_element_image_push_hashed');
  nk_tree_element_pop := GetProcAddress(LDllHandle, 'nk_tree_element_pop');
  nk_tree_element_push_hashed := GetProcAddress(LDllHandle, 'nk_tree_element_push_hashed');
  nk_tree_image_push_hashed := GetProcAddress(LDllHandle, 'nk_tree_image_push_hashed');
  nk_tree_pop := GetProcAddress(LDllHandle, 'nk_tree_pop');
  nk_tree_push_hashed := GetProcAddress(LDllHandle, 'nk_tree_push_hashed');
  nk_tree_state_image_push := GetProcAddress(LDllHandle, 'nk_tree_state_image_push');
  nk_tree_state_pop := GetProcAddress(LDllHandle, 'nk_tree_state_pop');
  nk_tree_state_push := GetProcAddress(LDllHandle, 'nk_tree_state_push');
  nk_triangle_from_direction := GetProcAddress(LDllHandle, 'nk_triangle_from_direction');
  nk_utf_at := GetProcAddress(LDllHandle, 'nk_utf_at');
  nk_utf_decode := GetProcAddress(LDllHandle, 'nk_utf_decode');
  nk_utf_encode := GetProcAddress(LDllHandle, 'nk_utf_encode');
  nk_utf_len := GetProcAddress(LDllHandle, 'nk_utf_len');
  nk_value_bool := GetProcAddress(LDllHandle, 'nk_value_bool');
  nk_value_color_byte := GetProcAddress(LDllHandle, 'nk_value_color_byte');
  nk_value_color_float := GetProcAddress(LDllHandle, 'nk_value_color_float');
  nk_value_color_hex := GetProcAddress(LDllHandle, 'nk_value_color_hex');
  nk_value_float := GetProcAddress(LDllHandle, 'nk_value_float');
  nk_value_int := GetProcAddress(LDllHandle, 'nk_value_int');
  nk_value_uint := GetProcAddress(LDllHandle, 'nk_value_uint');
  nk_vec2_ := GetProcAddress(LDllHandle, 'nk_vec2');
  nk_vec2i_ := GetProcAddress(LDllHandle, 'nk_vec2i');
  nk_vec2iv := GetProcAddress(LDllHandle, 'nk_vec2iv');
  nk_vec2v := GetProcAddress(LDllHandle, 'nk_vec2v');
  nk_widget := GetProcAddress(LDllHandle, 'nk_widget');
  nk_widget_bounds := GetProcAddress(LDllHandle, 'nk_widget_bounds');
  nk_widget_fitting := GetProcAddress(LDllHandle, 'nk_widget_fitting');
  nk_widget_has_mouse_click_down := GetProcAddress(LDllHandle, 'nk_widget_has_mouse_click_down');
  nk_widget_height := GetProcAddress(LDllHandle, 'nk_widget_height');
  nk_widget_is_hovered := GetProcAddress(LDllHandle, 'nk_widget_is_hovered');
  nk_widget_is_mouse_clicked := GetProcAddress(LDllHandle, 'nk_widget_is_mouse_clicked');
  nk_widget_position := GetProcAddress(LDllHandle, 'nk_widget_position');
  nk_widget_size := GetProcAddress(LDllHandle, 'nk_widget_size');
  nk_widget_width := GetProcAddress(LDllHandle, 'nk_widget_width');
  nk_window_close := GetProcAddress(LDllHandle, 'nk_window_close');
  nk_window_collapse := GetProcAddress(LDllHandle, 'nk_window_collapse');
  nk_window_collapse_if := GetProcAddress(LDllHandle, 'nk_window_collapse_if');
  nk_window_find := GetProcAddress(LDllHandle, 'nk_window_find');
  nk_window_get_bounds := GetProcAddress(LDllHandle, 'nk_window_get_bounds');
  nk_window_get_canvas := GetProcAddress(LDllHandle, 'nk_window_get_canvas');
  nk_window_get_content_region := GetProcAddress(LDllHandle, 'nk_window_get_content_region');
  nk_window_get_content_region_max := GetProcAddress(LDllHandle, 'nk_window_get_content_region_max');
  nk_window_get_content_region_min := GetProcAddress(LDllHandle, 'nk_window_get_content_region_min');
  nk_window_get_content_region_size := GetProcAddress(LDllHandle, 'nk_window_get_content_region_size');
  nk_window_get_height := GetProcAddress(LDllHandle, 'nk_window_get_height');
  nk_window_get_panel := GetProcAddress(LDllHandle, 'nk_window_get_panel');
  nk_window_get_position := GetProcAddress(LDllHandle, 'nk_window_get_position');
  nk_window_get_scroll := GetProcAddress(LDllHandle, 'nk_window_get_scroll');
  nk_window_get_size := GetProcAddress(LDllHandle, 'nk_window_get_size');
  nk_window_get_width := GetProcAddress(LDllHandle, 'nk_window_get_width');
  nk_window_has_focus := GetProcAddress(LDllHandle, 'nk_window_has_focus');
  nk_window_is_active := GetProcAddress(LDllHandle, 'nk_window_is_active');
  nk_window_is_any_hovered := GetProcAddress(LDllHandle, 'nk_window_is_any_hovered');
  nk_window_is_closed := GetProcAddress(LDllHandle, 'nk_window_is_closed');
  nk_window_is_collapsed := GetProcAddress(LDllHandle, 'nk_window_is_collapsed');
  nk_window_is_hidden := GetProcAddress(LDllHandle, 'nk_window_is_hidden');
  nk_window_is_hovered := GetProcAddress(LDllHandle, 'nk_window_is_hovered');
  nk_window_set_bounds := GetProcAddress(LDllHandle, 'nk_window_set_bounds');
  nk_window_set_focus := GetProcAddress(LDllHandle, 'nk_window_set_focus');
  nk_window_set_position := GetProcAddress(LDllHandle, 'nk_window_set_position');
  nk_window_set_scroll := GetProcAddress(LDllHandle, 'nk_window_set_scroll');
  nk_window_set_size := GetProcAddress(LDllHandle, 'nk_window_set_size');
  nk_window_show := GetProcAddress(LDllHandle, 'nk_window_show');
  nk_window_show_if := GetProcAddress(LDllHandle, 'nk_window_show_if');
  PHYSFS_addToSearchPath := GetProcAddress(LDllHandle, 'PHYSFS_addToSearchPath');
  PHYSFS_caseFold := GetProcAddress(LDllHandle, 'PHYSFS_caseFold');
  PHYSFS_close := GetProcAddress(LDllHandle, 'PHYSFS_close');
  PHYSFS_deinit := GetProcAddress(LDllHandle, 'PHYSFS_deinit');
  PHYSFS_delete := GetProcAddress(LDllHandle, 'PHYSFS_delete');
  PHYSFS_deregisterArchiver := GetProcAddress(LDllHandle, 'PHYSFS_deregisterArchiver');
  PHYSFS_enumerate := GetProcAddress(LDllHandle, 'PHYSFS_enumerate');
  PHYSFS_enumerateFiles := GetProcAddress(LDllHandle, 'PHYSFS_enumerateFiles');
  PHYSFS_enumerateFilesCallback := GetProcAddress(LDllHandle, 'PHYSFS_enumerateFilesCallback');
  PHYSFS_eof := GetProcAddress(LDllHandle, 'PHYSFS_eof');
  PHYSFS_exists := GetProcAddress(LDllHandle, 'PHYSFS_exists');
  PHYSFS_fileLength := GetProcAddress(LDllHandle, 'PHYSFS_fileLength');
  PHYSFS_flush := GetProcAddress(LDllHandle, 'PHYSFS_flush');
  PHYSFS_freeList := GetProcAddress(LDllHandle, 'PHYSFS_freeList');
  PHYSFS_getAllocator := GetProcAddress(LDllHandle, 'PHYSFS_getAllocator');
  PHYSFS_getBaseDir := GetProcAddress(LDllHandle, 'PHYSFS_getBaseDir');
  PHYSFS_getCdRomDirs := GetProcAddress(LDllHandle, 'PHYSFS_getCdRomDirs');
  PHYSFS_getCdRomDirsCallback := GetProcAddress(LDllHandle, 'PHYSFS_getCdRomDirsCallback');
  PHYSFS_getDirSeparator := GetProcAddress(LDllHandle, 'PHYSFS_getDirSeparator');
  PHYSFS_getErrorByCode := GetProcAddress(LDllHandle, 'PHYSFS_getErrorByCode');
  PHYSFS_getLastError := GetProcAddress(LDllHandle, 'PHYSFS_getLastError');
  PHYSFS_getLastErrorCode := GetProcAddress(LDllHandle, 'PHYSFS_getLastErrorCode');
  PHYSFS_getLastModTime := GetProcAddress(LDllHandle, 'PHYSFS_getLastModTime');
  PHYSFS_getLinkedVersion := GetProcAddress(LDllHandle, 'PHYSFS_getLinkedVersion');
  PHYSFS_getMountPoint := GetProcAddress(LDllHandle, 'PHYSFS_getMountPoint');
  PHYSFS_getPrefDir := GetProcAddress(LDllHandle, 'PHYSFS_getPrefDir');
  PHYSFS_getRealDir := GetProcAddress(LDllHandle, 'PHYSFS_getRealDir');
  PHYSFS_getSearchPath := GetProcAddress(LDllHandle, 'PHYSFS_getSearchPath');
  PHYSFS_getSearchPathCallback := GetProcAddress(LDllHandle, 'PHYSFS_getSearchPathCallback');
  PHYSFS_getUserDir := GetProcAddress(LDllHandle, 'PHYSFS_getUserDir');
  PHYSFS_getWriteDir := GetProcAddress(LDllHandle, 'PHYSFS_getWriteDir');
  PHYSFS_init := GetProcAddress(LDllHandle, 'PHYSFS_init');
  PHYSFS_isDirectory := GetProcAddress(LDllHandle, 'PHYSFS_isDirectory');
  PHYSFS_isInit := GetProcAddress(LDllHandle, 'PHYSFS_isInit');
  PHYSFS_isSymbolicLink := GetProcAddress(LDllHandle, 'PHYSFS_isSymbolicLink');
  PHYSFS_mkdir := GetProcAddress(LDllHandle, 'PHYSFS_mkdir');
  PHYSFS_mount := GetProcAddress(LDllHandle, 'PHYSFS_mount');
  PHYSFS_mountHandle := GetProcAddress(LDllHandle, 'PHYSFS_mountHandle');
  PHYSFS_mountIo := GetProcAddress(LDllHandle, 'PHYSFS_mountIo');
  PHYSFS_mountMemory := GetProcAddress(LDllHandle, 'PHYSFS_mountMemory');
  PHYSFS_openAppend := GetProcAddress(LDllHandle, 'PHYSFS_openAppend');
  PHYSFS_openRead := GetProcAddress(LDllHandle, 'PHYSFS_openRead');
  PHYSFS_openWrite := GetProcAddress(LDllHandle, 'PHYSFS_openWrite');
  PHYSFS_permitSymbolicLinks := GetProcAddress(LDllHandle, 'PHYSFS_permitSymbolicLinks');
  PHYSFS_read := GetProcAddress(LDllHandle, 'PHYSFS_read');
  PHYSFS_readBytes := GetProcAddress(LDllHandle, 'PHYSFS_readBytes');
  PHYSFS_readSBE16 := GetProcAddress(LDllHandle, 'PHYSFS_readSBE16');
  PHYSFS_readSBE32 := GetProcAddress(LDllHandle, 'PHYSFS_readSBE32');
  PHYSFS_readSBE64 := GetProcAddress(LDllHandle, 'PHYSFS_readSBE64');
  PHYSFS_readSLE16 := GetProcAddress(LDllHandle, 'PHYSFS_readSLE16');
  PHYSFS_readSLE32 := GetProcAddress(LDllHandle, 'PHYSFS_readSLE32');
  PHYSFS_readSLE64 := GetProcAddress(LDllHandle, 'PHYSFS_readSLE64');
  PHYSFS_readUBE16 := GetProcAddress(LDllHandle, 'PHYSFS_readUBE16');
  PHYSFS_readUBE32 := GetProcAddress(LDllHandle, 'PHYSFS_readUBE32');
  PHYSFS_readUBE64 := GetProcAddress(LDllHandle, 'PHYSFS_readUBE64');
  PHYSFS_readULE16 := GetProcAddress(LDllHandle, 'PHYSFS_readULE16');
  PHYSFS_readULE32 := GetProcAddress(LDllHandle, 'PHYSFS_readULE32');
  PHYSFS_readULE64 := GetProcAddress(LDllHandle, 'PHYSFS_readULE64');
  PHYSFS_registerArchiver := GetProcAddress(LDllHandle, 'PHYSFS_registerArchiver');
  PHYSFS_removeFromSearchPath := GetProcAddress(LDllHandle, 'PHYSFS_removeFromSearchPath');
  PHYSFS_seek := GetProcAddress(LDllHandle, 'PHYSFS_seek');
  PHYSFS_setAllocator := GetProcAddress(LDllHandle, 'PHYSFS_setAllocator');
  PHYSFS_setBuffer := GetProcAddress(LDllHandle, 'PHYSFS_setBuffer');
  PHYSFS_setErrorCode := GetProcAddress(LDllHandle, 'PHYSFS_setErrorCode');
  PHYSFS_setRoot := GetProcAddress(LDllHandle, 'PHYSFS_setRoot');
  PHYSFS_setSaneConfig := GetProcAddress(LDllHandle, 'PHYSFS_setSaneConfig');
  PHYSFS_setWriteDir := GetProcAddress(LDllHandle, 'PHYSFS_setWriteDir');
  PHYSFS_stat := GetProcAddress(LDllHandle, 'PHYSFS_stat');
  PHYSFS_supportedArchiveTypes := GetProcAddress(LDllHandle, 'PHYSFS_supportedArchiveTypes');
  PHYSFS_swapSBE16 := GetProcAddress(LDllHandle, 'PHYSFS_swapSBE16');
  PHYSFS_swapSBE32 := GetProcAddress(LDllHandle, 'PHYSFS_swapSBE32');
  PHYSFS_swapSBE64 := GetProcAddress(LDllHandle, 'PHYSFS_swapSBE64');
  PHYSFS_swapSLE16 := GetProcAddress(LDllHandle, 'PHYSFS_swapSLE16');
  PHYSFS_swapSLE32 := GetProcAddress(LDllHandle, 'PHYSFS_swapSLE32');
  PHYSFS_swapSLE64 := GetProcAddress(LDllHandle, 'PHYSFS_swapSLE64');
  PHYSFS_swapUBE16 := GetProcAddress(LDllHandle, 'PHYSFS_swapUBE16');
  PHYSFS_swapUBE32 := GetProcAddress(LDllHandle, 'PHYSFS_swapUBE32');
  PHYSFS_swapUBE64 := GetProcAddress(LDllHandle, 'PHYSFS_swapUBE64');
  PHYSFS_swapULE16 := GetProcAddress(LDllHandle, 'PHYSFS_swapULE16');
  PHYSFS_swapULE32 := GetProcAddress(LDllHandle, 'PHYSFS_swapULE32');
  PHYSFS_swapULE64 := GetProcAddress(LDllHandle, 'PHYSFS_swapULE64');
  PHYSFS_symbolicLinksPermitted := GetProcAddress(LDllHandle, 'PHYSFS_symbolicLinksPermitted');
  PHYSFS_tell := GetProcAddress(LDllHandle, 'PHYSFS_tell');
  PHYSFS_ucs4stricmp := GetProcAddress(LDllHandle, 'PHYSFS_ucs4stricmp');
  PHYSFS_unmount := GetProcAddress(LDllHandle, 'PHYSFS_unmount');
  PHYSFS_utf16stricmp := GetProcAddress(LDllHandle, 'PHYSFS_utf16stricmp');
  PHYSFS_utf8FromLatin1 := GetProcAddress(LDllHandle, 'PHYSFS_utf8FromLatin1');
  PHYSFS_utf8FromUcs2 := GetProcAddress(LDllHandle, 'PHYSFS_utf8FromUcs2');
  PHYSFS_utf8FromUcs4 := GetProcAddress(LDllHandle, 'PHYSFS_utf8FromUcs4');
  PHYSFS_utf8FromUtf16 := GetProcAddress(LDllHandle, 'PHYSFS_utf8FromUtf16');
  PHYSFS_utf8stricmp := GetProcAddress(LDllHandle, 'PHYSFS_utf8stricmp');
  PHYSFS_utf8ToUcs2 := GetProcAddress(LDllHandle, 'PHYSFS_utf8ToUcs2');
  PHYSFS_utf8ToUcs4 := GetProcAddress(LDllHandle, 'PHYSFS_utf8ToUcs4');
  PHYSFS_utf8ToUtf16 := GetProcAddress(LDllHandle, 'PHYSFS_utf8ToUtf16');
  PHYSFS_write := GetProcAddress(LDllHandle, 'PHYSFS_write');
  PHYSFS_writeBytes := GetProcAddress(LDllHandle, 'PHYSFS_writeBytes');
  PHYSFS_writeSBE16 := GetProcAddress(LDllHandle, 'PHYSFS_writeSBE16');
  PHYSFS_writeSBE32 := GetProcAddress(LDllHandle, 'PHYSFS_writeSBE32');
  PHYSFS_writeSBE64 := GetProcAddress(LDllHandle, 'PHYSFS_writeSBE64');
  PHYSFS_writeSLE16 := GetProcAddress(LDllHandle, 'PHYSFS_writeSLE16');
  PHYSFS_writeSLE32 := GetProcAddress(LDllHandle, 'PHYSFS_writeSLE32');
  PHYSFS_writeSLE64 := GetProcAddress(LDllHandle, 'PHYSFS_writeSLE64');
  PHYSFS_writeUBE16 := GetProcAddress(LDllHandle, 'PHYSFS_writeUBE16');
  PHYSFS_writeUBE32 := GetProcAddress(LDllHandle, 'PHYSFS_writeUBE32');
  PHYSFS_writeUBE64 := GetProcAddress(LDllHandle, 'PHYSFS_writeUBE64');
  PHYSFS_writeULE16 := GetProcAddress(LDllHandle, 'PHYSFS_writeULE16');
  PHYSFS_writeULE32 := GetProcAddress(LDllHandle, 'PHYSFS_writeULE32');
  PHYSFS_writeULE64 := GetProcAddress(LDllHandle, 'PHYSFS_writeULE64');
  plm_audio_create_with_buffer := GetProcAddress(LDllHandle, 'plm_audio_create_with_buffer');
  plm_audio_decode := GetProcAddress(LDllHandle, 'plm_audio_decode');
  plm_audio_destroy := GetProcAddress(LDllHandle, 'plm_audio_destroy');
  plm_audio_get_samplerate := GetProcAddress(LDllHandle, 'plm_audio_get_samplerate');
  plm_audio_get_time := GetProcAddress(LDllHandle, 'plm_audio_get_time');
  plm_audio_has_ended := GetProcAddress(LDllHandle, 'plm_audio_has_ended');
  plm_audio_has_header := GetProcAddress(LDllHandle, 'plm_audio_has_header');
  plm_audio_rewind := GetProcAddress(LDllHandle, 'plm_audio_rewind');
  plm_audio_set_time := GetProcAddress(LDllHandle, 'plm_audio_set_time');
  plm_buffer_create_for_appending := GetProcAddress(LDllHandle, 'plm_buffer_create_for_appending');
  plm_buffer_create_with_capacity := GetProcAddress(LDllHandle, 'plm_buffer_create_with_capacity');
  plm_buffer_create_with_file := GetProcAddress(LDllHandle, 'plm_buffer_create_with_file');
  plm_buffer_create_with_filename := GetProcAddress(LDllHandle, 'plm_buffer_create_with_filename');
  plm_buffer_create_with_memory := GetProcAddress(LDllHandle, 'plm_buffer_create_with_memory');
  plm_buffer_destroy := GetProcAddress(LDllHandle, 'plm_buffer_destroy');
  plm_buffer_get_remaining := GetProcAddress(LDllHandle, 'plm_buffer_get_remaining');
  plm_buffer_get_size := GetProcAddress(LDllHandle, 'plm_buffer_get_size');
  plm_buffer_has_ended := GetProcAddress(LDllHandle, 'plm_buffer_has_ended');
  plm_buffer_rewind := GetProcAddress(LDllHandle, 'plm_buffer_rewind');
  plm_buffer_set_load_callback := GetProcAddress(LDllHandle, 'plm_buffer_set_load_callback');
  plm_buffer_signal_end := GetProcAddress(LDllHandle, 'plm_buffer_signal_end');
  plm_buffer_write := GetProcAddress(LDllHandle, 'plm_buffer_write');
  plm_create_with_buffer := GetProcAddress(LDllHandle, 'plm_create_with_buffer');
  plm_create_with_file := GetProcAddress(LDllHandle, 'plm_create_with_file');
  plm_create_with_filename := GetProcAddress(LDllHandle, 'plm_create_with_filename');
  plm_create_with_memory := GetProcAddress(LDllHandle, 'plm_create_with_memory');
  plm_decode := GetProcAddress(LDllHandle, 'plm_decode');
  plm_decode_audio := GetProcAddress(LDllHandle, 'plm_decode_audio');
  plm_decode_video := GetProcAddress(LDllHandle, 'plm_decode_video');
  plm_demux_create := GetProcAddress(LDllHandle, 'plm_demux_create');
  plm_demux_decode := GetProcAddress(LDllHandle, 'plm_demux_decode');
  plm_demux_destroy := GetProcAddress(LDllHandle, 'plm_demux_destroy');
  plm_demux_get_duration := GetProcAddress(LDllHandle, 'plm_demux_get_duration');
  plm_demux_get_num_audio_streams := GetProcAddress(LDllHandle, 'plm_demux_get_num_audio_streams');
  plm_demux_get_num_video_streams := GetProcAddress(LDllHandle, 'plm_demux_get_num_video_streams');
  plm_demux_get_start_time := GetProcAddress(LDllHandle, 'plm_demux_get_start_time');
  plm_demux_has_ended := GetProcAddress(LDllHandle, 'plm_demux_has_ended');
  plm_demux_has_headers := GetProcAddress(LDllHandle, 'plm_demux_has_headers');
  plm_demux_rewind := GetProcAddress(LDllHandle, 'plm_demux_rewind');
  plm_demux_seek := GetProcAddress(LDllHandle, 'plm_demux_seek');
  plm_destroy := GetProcAddress(LDllHandle, 'plm_destroy');
  plm_frame_to_abgr := GetProcAddress(LDllHandle, 'plm_frame_to_abgr');
  plm_frame_to_argb := GetProcAddress(LDllHandle, 'plm_frame_to_argb');
  plm_frame_to_bgr := GetProcAddress(LDllHandle, 'plm_frame_to_bgr');
  plm_frame_to_bgra := GetProcAddress(LDllHandle, 'plm_frame_to_bgra');
  plm_frame_to_rgb := GetProcAddress(LDllHandle, 'plm_frame_to_rgb');
  plm_frame_to_rgba := GetProcAddress(LDllHandle, 'plm_frame_to_rgba');
  plm_get_audio_enabled := GetProcAddress(LDllHandle, 'plm_get_audio_enabled');
  plm_get_audio_lead_time := GetProcAddress(LDllHandle, 'plm_get_audio_lead_time');
  plm_get_duration := GetProcAddress(LDllHandle, 'plm_get_duration');
  plm_get_framerate := GetProcAddress(LDllHandle, 'plm_get_framerate');
  plm_get_height := GetProcAddress(LDllHandle, 'plm_get_height');
  plm_get_loop := GetProcAddress(LDllHandle, 'plm_get_loop');
  plm_get_num_audio_streams := GetProcAddress(LDllHandle, 'plm_get_num_audio_streams');
  plm_get_num_video_streams := GetProcAddress(LDllHandle, 'plm_get_num_video_streams');
  plm_get_samplerate := GetProcAddress(LDllHandle, 'plm_get_samplerate');
  plm_get_time := GetProcAddress(LDllHandle, 'plm_get_time');
  plm_get_video_enabled := GetProcAddress(LDllHandle, 'plm_get_video_enabled');
  plm_get_width := GetProcAddress(LDllHandle, 'plm_get_width');
  plm_has_ended := GetProcAddress(LDllHandle, 'plm_has_ended');
  plm_has_headers := GetProcAddress(LDllHandle, 'plm_has_headers');
  plm_rewind := GetProcAddress(LDllHandle, 'plm_rewind');
  plm_seek := GetProcAddress(LDllHandle, 'plm_seek');
  plm_seek_frame := GetProcAddress(LDllHandle, 'plm_seek_frame');
  plm_set_audio_decode_callback := GetProcAddress(LDllHandle, 'plm_set_audio_decode_callback');
  plm_set_audio_enabled := GetProcAddress(LDllHandle, 'plm_set_audio_enabled');
  plm_set_audio_lead_time := GetProcAddress(LDllHandle, 'plm_set_audio_lead_time');
  plm_set_audio_stream := GetProcAddress(LDllHandle, 'plm_set_audio_stream');
  plm_set_loop := GetProcAddress(LDllHandle, 'plm_set_loop');
  plm_set_video_decode_callback := GetProcAddress(LDllHandle, 'plm_set_video_decode_callback');
  plm_set_video_enabled := GetProcAddress(LDllHandle, 'plm_set_video_enabled');
  plm_video_create_with_buffer := GetProcAddress(LDllHandle, 'plm_video_create_with_buffer');
  plm_video_decode := GetProcAddress(LDllHandle, 'plm_video_decode');
  plm_video_destroy := GetProcAddress(LDllHandle, 'plm_video_destroy');
  plm_video_get_framerate := GetProcAddress(LDllHandle, 'plm_video_get_framerate');
  plm_video_get_height := GetProcAddress(LDllHandle, 'plm_video_get_height');
  plm_video_get_time := GetProcAddress(LDllHandle, 'plm_video_get_time');
  plm_video_get_width := GetProcAddress(LDllHandle, 'plm_video_get_width');
  plm_video_has_ended := GetProcAddress(LDllHandle, 'plm_video_has_ended');
  plm_video_has_header := GetProcAddress(LDllHandle, 'plm_video_has_header');
  plm_video_rewind := GetProcAddress(LDllHandle, 'plm_video_rewind');
  plm_video_set_no_delay := GetProcAddress(LDllHandle, 'plm_video_set_no_delay');
  plm_video_set_time := GetProcAddress(LDllHandle, 'plm_video_set_time');
  sfBlack := GetProcAddress(LDllHandle, 'sfBlack');
  sfBlendAdd := GetProcAddress(LDllHandle, 'sfBlendAdd');
  sfBlendAlpha := GetProcAddress(LDllHandle, 'sfBlendAlpha');
  sfBlendMultiply := GetProcAddress(LDllHandle, 'sfBlendMultiply');
  sfBlendNone := GetProcAddress(LDllHandle, 'sfBlendNone');
  sfBlue := GetProcAddress(LDllHandle, 'sfBlue');
  sfCircleShape_copy := GetProcAddress(LDllHandle, 'sfCircleShape_copy');
  sfCircleShape_create := GetProcAddress(LDllHandle, 'sfCircleShape_create');
  sfCircleShape_destroy := GetProcAddress(LDllHandle, 'sfCircleShape_destroy');
  sfCircleShape_getFillColor := GetProcAddress(LDllHandle, 'sfCircleShape_getFillColor');
  sfCircleShape_getGlobalBounds := GetProcAddress(LDllHandle, 'sfCircleShape_getGlobalBounds');
  sfCircleShape_getInverseTransform := GetProcAddress(LDllHandle, 'sfCircleShape_getInverseTransform');
  sfCircleShape_getLocalBounds := GetProcAddress(LDllHandle, 'sfCircleShape_getLocalBounds');
  sfCircleShape_getOrigin := GetProcAddress(LDllHandle, 'sfCircleShape_getOrigin');
  sfCircleShape_getOutlineColor := GetProcAddress(LDllHandle, 'sfCircleShape_getOutlineColor');
  sfCircleShape_getOutlineThickness := GetProcAddress(LDllHandle, 'sfCircleShape_getOutlineThickness');
  sfCircleShape_getPoint := GetProcAddress(LDllHandle, 'sfCircleShape_getPoint');
  sfCircleShape_getPointCount := GetProcAddress(LDllHandle, 'sfCircleShape_getPointCount');
  sfCircleShape_getPosition := GetProcAddress(LDllHandle, 'sfCircleShape_getPosition');
  sfCircleShape_getRadius := GetProcAddress(LDllHandle, 'sfCircleShape_getRadius');
  sfCircleShape_getRotation := GetProcAddress(LDllHandle, 'sfCircleShape_getRotation');
  sfCircleShape_getScale := GetProcAddress(LDllHandle, 'sfCircleShape_getScale');
  sfCircleShape_getTexture := GetProcAddress(LDllHandle, 'sfCircleShape_getTexture');
  sfCircleShape_getTextureRect := GetProcAddress(LDllHandle, 'sfCircleShape_getTextureRect');
  sfCircleShape_getTransform := GetProcAddress(LDllHandle, 'sfCircleShape_getTransform');
  sfCircleShape_move := GetProcAddress(LDllHandle, 'sfCircleShape_move');
  sfCircleShape_rotate := GetProcAddress(LDllHandle, 'sfCircleShape_rotate');
  sfCircleShape_scale := GetProcAddress(LDllHandle, 'sfCircleShape_scale');
  sfCircleShape_setFillColor := GetProcAddress(LDllHandle, 'sfCircleShape_setFillColor');
  sfCircleShape_setOrigin := GetProcAddress(LDllHandle, 'sfCircleShape_setOrigin');
  sfCircleShape_setOutlineColor := GetProcAddress(LDllHandle, 'sfCircleShape_setOutlineColor');
  sfCircleShape_setOutlineThickness := GetProcAddress(LDllHandle, 'sfCircleShape_setOutlineThickness');
  sfCircleShape_setPointCount := GetProcAddress(LDllHandle, 'sfCircleShape_setPointCount');
  sfCircleShape_setPosition := GetProcAddress(LDllHandle, 'sfCircleShape_setPosition');
  sfCircleShape_setRadius := GetProcAddress(LDllHandle, 'sfCircleShape_setRadius');
  sfCircleShape_setRotation := GetProcAddress(LDllHandle, 'sfCircleShape_setRotation');
  sfCircleShape_setScale := GetProcAddress(LDllHandle, 'sfCircleShape_setScale');
  sfCircleShape_setTexture := GetProcAddress(LDllHandle, 'sfCircleShape_setTexture');
  sfCircleShape_setTextureRect := GetProcAddress(LDllHandle, 'sfCircleShape_setTextureRect');
  sfClipboard_getString := GetProcAddress(LDllHandle, 'sfClipboard_getString');
  sfClipboard_getUnicodeString := GetProcAddress(LDllHandle, 'sfClipboard_getUnicodeString');
  sfClipboard_setString := GetProcAddress(LDllHandle, 'sfClipboard_setString');
  sfClipboard_setUnicodeString := GetProcAddress(LDllHandle, 'sfClipboard_setUnicodeString');
  sfClock_copy := GetProcAddress(LDllHandle, 'sfClock_copy');
  sfClock_create := GetProcAddress(LDllHandle, 'sfClock_create');
  sfClock_destroy := GetProcAddress(LDllHandle, 'sfClock_destroy');
  sfClock_getElapsedTime := GetProcAddress(LDllHandle, 'sfClock_getElapsedTime');
  sfClock_restart := GetProcAddress(LDllHandle, 'sfClock_restart');
  sfColor_add := GetProcAddress(LDllHandle, 'sfColor_add');
  sfColor_fromInteger := GetProcAddress(LDllHandle, 'sfColor_fromInteger');
  sfColor_fromRGB := GetProcAddress(LDllHandle, 'sfColor_fromRGB');
  sfColor_fromRGBA := GetProcAddress(LDllHandle, 'sfColor_fromRGBA');
  sfColor_modulate := GetProcAddress(LDllHandle, 'sfColor_modulate');
  sfColor_subtract := GetProcAddress(LDllHandle, 'sfColor_subtract');
  sfColor_toInteger := GetProcAddress(LDllHandle, 'sfColor_toInteger');
  sfContext_create := GetProcAddress(LDllHandle, 'sfContext_create');
  sfContext_destroy := GetProcAddress(LDllHandle, 'sfContext_destroy');
  sfContext_getActiveContextId := GetProcAddress(LDllHandle, 'sfContext_getActiveContextId');
  sfContext_getSettings := GetProcAddress(LDllHandle, 'sfContext_getSettings');
  sfContext_setActive := GetProcAddress(LDllHandle, 'sfContext_setActive');
  sfConvexShape_copy := GetProcAddress(LDllHandle, 'sfConvexShape_copy');
  sfConvexShape_create := GetProcAddress(LDllHandle, 'sfConvexShape_create');
  sfConvexShape_destroy := GetProcAddress(LDllHandle, 'sfConvexShape_destroy');
  sfConvexShape_getFillColor := GetProcAddress(LDllHandle, 'sfConvexShape_getFillColor');
  sfConvexShape_getGlobalBounds := GetProcAddress(LDllHandle, 'sfConvexShape_getGlobalBounds');
  sfConvexShape_getInverseTransform := GetProcAddress(LDllHandle, 'sfConvexShape_getInverseTransform');
  sfConvexShape_getLocalBounds := GetProcAddress(LDllHandle, 'sfConvexShape_getLocalBounds');
  sfConvexShape_getOrigin := GetProcAddress(LDllHandle, 'sfConvexShape_getOrigin');
  sfConvexShape_getOutlineColor := GetProcAddress(LDllHandle, 'sfConvexShape_getOutlineColor');
  sfConvexShape_getOutlineThickness := GetProcAddress(LDllHandle, 'sfConvexShape_getOutlineThickness');
  sfConvexShape_getPoint := GetProcAddress(LDllHandle, 'sfConvexShape_getPoint');
  sfConvexShape_getPointCount := GetProcAddress(LDllHandle, 'sfConvexShape_getPointCount');
  sfConvexShape_getPosition := GetProcAddress(LDllHandle, 'sfConvexShape_getPosition');
  sfConvexShape_getRotation := GetProcAddress(LDllHandle, 'sfConvexShape_getRotation');
  sfConvexShape_getScale := GetProcAddress(LDllHandle, 'sfConvexShape_getScale');
  sfConvexShape_getTexture := GetProcAddress(LDllHandle, 'sfConvexShape_getTexture');
  sfConvexShape_getTextureRect := GetProcAddress(LDllHandle, 'sfConvexShape_getTextureRect');
  sfConvexShape_getTransform := GetProcAddress(LDllHandle, 'sfConvexShape_getTransform');
  sfConvexShape_move := GetProcAddress(LDllHandle, 'sfConvexShape_move');
  sfConvexShape_rotate := GetProcAddress(LDllHandle, 'sfConvexShape_rotate');
  sfConvexShape_scale := GetProcAddress(LDllHandle, 'sfConvexShape_scale');
  sfConvexShape_setFillColor := GetProcAddress(LDllHandle, 'sfConvexShape_setFillColor');
  sfConvexShape_setOrigin := GetProcAddress(LDllHandle, 'sfConvexShape_setOrigin');
  sfConvexShape_setOutlineColor := GetProcAddress(LDllHandle, 'sfConvexShape_setOutlineColor');
  sfConvexShape_setOutlineThickness := GetProcAddress(LDllHandle, 'sfConvexShape_setOutlineThickness');
  sfConvexShape_setPoint := GetProcAddress(LDllHandle, 'sfConvexShape_setPoint');
  sfConvexShape_setPointCount := GetProcAddress(LDllHandle, 'sfConvexShape_setPointCount');
  sfConvexShape_setPosition := GetProcAddress(LDllHandle, 'sfConvexShape_setPosition');
  sfConvexShape_setRotation := GetProcAddress(LDllHandle, 'sfConvexShape_setRotation');
  sfConvexShape_setScale := GetProcAddress(LDllHandle, 'sfConvexShape_setScale');
  sfConvexShape_setTexture := GetProcAddress(LDllHandle, 'sfConvexShape_setTexture');
  sfConvexShape_setTextureRect := GetProcAddress(LDllHandle, 'sfConvexShape_setTextureRect');
  sfCursor_createFromPixels := GetProcAddress(LDllHandle, 'sfCursor_createFromPixels');
  sfCursor_createFromSystem := GetProcAddress(LDllHandle, 'sfCursor_createFromSystem');
  sfCursor_destroy := GetProcAddress(LDllHandle, 'sfCursor_destroy');
  sfCyan := GetProcAddress(LDllHandle, 'sfCyan');
  sfFloatRect_contains := GetProcAddress(LDllHandle, 'sfFloatRect_contains');
  sfFloatRect_intersects := GetProcAddress(LDllHandle, 'sfFloatRect_intersects');
  sfFont_copy := GetProcAddress(LDllHandle, 'sfFont_copy');
  sfFont_createFromFile := GetProcAddress(LDllHandle, 'sfFont_createFromFile');
  sfFont_createFromMemory := GetProcAddress(LDllHandle, 'sfFont_createFromMemory');
  sfFont_createFromStream := GetProcAddress(LDllHandle, 'sfFont_createFromStream');
  sfFont_destroy := GetProcAddress(LDllHandle, 'sfFont_destroy');
  sfFont_getGlyph := GetProcAddress(LDllHandle, 'sfFont_getGlyph');
  sfFont_getInfo := GetProcAddress(LDllHandle, 'sfFont_getInfo');
  sfFont_getKerning := GetProcAddress(LDllHandle, 'sfFont_getKerning');
  sfFont_getLineSpacing := GetProcAddress(LDllHandle, 'sfFont_getLineSpacing');
  sfFont_getTexture := GetProcAddress(LDllHandle, 'sfFont_getTexture');
  sfFont_getUnderlinePosition := GetProcAddress(LDllHandle, 'sfFont_getUnderlinePosition');
  sfFont_getUnderlineThickness := GetProcAddress(LDllHandle, 'sfFont_getUnderlineThickness');
  sfFtp_changeDirectory := GetProcAddress(LDllHandle, 'sfFtp_changeDirectory');
  sfFtp_connect := GetProcAddress(LDllHandle, 'sfFtp_connect');
  sfFtp_create := GetProcAddress(LDllHandle, 'sfFtp_create');
  sfFtp_createDirectory := GetProcAddress(LDllHandle, 'sfFtp_createDirectory');
  sfFtp_deleteDirectory := GetProcAddress(LDllHandle, 'sfFtp_deleteDirectory');
  sfFtp_deleteFile := GetProcAddress(LDllHandle, 'sfFtp_deleteFile');
  sfFtp_destroy := GetProcAddress(LDllHandle, 'sfFtp_destroy');
  sfFtp_disconnect := GetProcAddress(LDllHandle, 'sfFtp_disconnect');
  sfFtp_download := GetProcAddress(LDllHandle, 'sfFtp_download');
  sfFtp_getDirectoryListing := GetProcAddress(LDllHandle, 'sfFtp_getDirectoryListing');
  sfFtp_getWorkingDirectory := GetProcAddress(LDllHandle, 'sfFtp_getWorkingDirectory');
  sfFtp_keepAlive := GetProcAddress(LDllHandle, 'sfFtp_keepAlive');
  sfFtp_login := GetProcAddress(LDllHandle, 'sfFtp_login');
  sfFtp_loginAnonymous := GetProcAddress(LDllHandle, 'sfFtp_loginAnonymous');
  sfFtp_parentDirectory := GetProcAddress(LDllHandle, 'sfFtp_parentDirectory');
  sfFtp_renameFile := GetProcAddress(LDllHandle, 'sfFtp_renameFile');
  sfFtp_sendCommand := GetProcAddress(LDllHandle, 'sfFtp_sendCommand');
  sfFtp_upload := GetProcAddress(LDllHandle, 'sfFtp_upload');
  sfFtpDirectoryResponse_destroy := GetProcAddress(LDllHandle, 'sfFtpDirectoryResponse_destroy');
  sfFtpDirectoryResponse_getDirectory := GetProcAddress(LDllHandle, 'sfFtpDirectoryResponse_getDirectory');
  sfFtpDirectoryResponse_getMessage := GetProcAddress(LDllHandle, 'sfFtpDirectoryResponse_getMessage');
  sfFtpDirectoryResponse_getStatus := GetProcAddress(LDllHandle, 'sfFtpDirectoryResponse_getStatus');
  sfFtpDirectoryResponse_isOk := GetProcAddress(LDllHandle, 'sfFtpDirectoryResponse_isOk');
  sfFtpListingResponse_destroy := GetProcAddress(LDllHandle, 'sfFtpListingResponse_destroy');
  sfFtpListingResponse_getCount := GetProcAddress(LDllHandle, 'sfFtpListingResponse_getCount');
  sfFtpListingResponse_getMessage := GetProcAddress(LDllHandle, 'sfFtpListingResponse_getMessage');
  sfFtpListingResponse_getName := GetProcAddress(LDllHandle, 'sfFtpListingResponse_getName');
  sfFtpListingResponse_getStatus := GetProcAddress(LDllHandle, 'sfFtpListingResponse_getStatus');
  sfFtpListingResponse_isOk := GetProcAddress(LDllHandle, 'sfFtpListingResponse_isOk');
  sfFtpResponse_destroy := GetProcAddress(LDllHandle, 'sfFtpResponse_destroy');
  sfFtpResponse_getMessage := GetProcAddress(LDllHandle, 'sfFtpResponse_getMessage');
  sfFtpResponse_getStatus := GetProcAddress(LDllHandle, 'sfFtpResponse_getStatus');
  sfFtpResponse_isOk := GetProcAddress(LDllHandle, 'sfFtpResponse_isOk');
  sfGreen := GetProcAddress(LDllHandle, 'sfGreen');
  sfHttp_create := GetProcAddress(LDllHandle, 'sfHttp_create');
  sfHttp_destroy := GetProcAddress(LDllHandle, 'sfHttp_destroy');
  sfHttp_sendRequest := GetProcAddress(LDllHandle, 'sfHttp_sendRequest');
  sfHttp_setHost := GetProcAddress(LDllHandle, 'sfHttp_setHost');
  sfHttpRequest_create := GetProcAddress(LDllHandle, 'sfHttpRequest_create');
  sfHttpRequest_destroy := GetProcAddress(LDllHandle, 'sfHttpRequest_destroy');
  sfHttpRequest_setBody := GetProcAddress(LDllHandle, 'sfHttpRequest_setBody');
  sfHttpRequest_setField := GetProcAddress(LDllHandle, 'sfHttpRequest_setField');
  sfHttpRequest_setHttpVersion := GetProcAddress(LDllHandle, 'sfHttpRequest_setHttpVersion');
  sfHttpRequest_setMethod := GetProcAddress(LDllHandle, 'sfHttpRequest_setMethod');
  sfHttpRequest_setUri := GetProcAddress(LDllHandle, 'sfHttpRequest_setUri');
  sfHttpResponse_destroy := GetProcAddress(LDllHandle, 'sfHttpResponse_destroy');
  sfHttpResponse_getBody := GetProcAddress(LDllHandle, 'sfHttpResponse_getBody');
  sfHttpResponse_getField := GetProcAddress(LDllHandle, 'sfHttpResponse_getField');
  sfHttpResponse_getMajorVersion := GetProcAddress(LDllHandle, 'sfHttpResponse_getMajorVersion');
  sfHttpResponse_getMinorVersion := GetProcAddress(LDllHandle, 'sfHttpResponse_getMinorVersion');
  sfHttpResponse_getStatus := GetProcAddress(LDllHandle, 'sfHttpResponse_getStatus');
  sfImage_copy := GetProcAddress(LDllHandle, 'sfImage_copy');
  sfImage_copyImage := GetProcAddress(LDllHandle, 'sfImage_copyImage');
  sfImage_create := GetProcAddress(LDllHandle, 'sfImage_create');
  sfImage_createFromColor := GetProcAddress(LDllHandle, 'sfImage_createFromColor');
  sfImage_createFromFile := GetProcAddress(LDllHandle, 'sfImage_createFromFile');
  sfImage_createFromMemory := GetProcAddress(LDllHandle, 'sfImage_createFromMemory');
  sfImage_createFromPixels := GetProcAddress(LDllHandle, 'sfImage_createFromPixels');
  sfImage_createFromStream := GetProcAddress(LDllHandle, 'sfImage_createFromStream');
  sfImage_createMaskFromColor := GetProcAddress(LDllHandle, 'sfImage_createMaskFromColor');
  sfImage_destroy := GetProcAddress(LDllHandle, 'sfImage_destroy');
  sfImage_flipHorizontally := GetProcAddress(LDllHandle, 'sfImage_flipHorizontally');
  sfImage_flipVertically := GetProcAddress(LDllHandle, 'sfImage_flipVertically');
  sfImage_getPixel := GetProcAddress(LDllHandle, 'sfImage_getPixel');
  sfImage_getPixelsPtr := GetProcAddress(LDllHandle, 'sfImage_getPixelsPtr');
  sfImage_getSize := GetProcAddress(LDllHandle, 'sfImage_getSize');
  sfImage_saveToFile := GetProcAddress(LDllHandle, 'sfImage_saveToFile');
  sfImage_setPixel := GetProcAddress(LDllHandle, 'sfImage_setPixel');
  sfIntRect_contains := GetProcAddress(LDllHandle, 'sfIntRect_contains');
  sfIntRect_intersects := GetProcAddress(LDllHandle, 'sfIntRect_intersects');
  sfIpAddress_Any := GetProcAddress(LDllHandle, 'sfIpAddress_Any');
  sfIpAddress_Broadcast := GetProcAddress(LDllHandle, 'sfIpAddress_Broadcast');
  sfIpAddress_fromBytes := GetProcAddress(LDllHandle, 'sfIpAddress_fromBytes');
  sfIpAddress_fromInteger := GetProcAddress(LDllHandle, 'sfIpAddress_fromInteger');
  sfIpAddress_fromString := GetProcAddress(LDllHandle, 'sfIpAddress_fromString');
  sfIpAddress_getLocalAddress := GetProcAddress(LDllHandle, 'sfIpAddress_getLocalAddress');
  sfIpAddress_getPublicAddress := GetProcAddress(LDllHandle, 'sfIpAddress_getPublicAddress');
  sfIpAddress_LocalHost := GetProcAddress(LDllHandle, 'sfIpAddress_LocalHost');
  sfIpAddress_None := GetProcAddress(LDllHandle, 'sfIpAddress_None');
  sfIpAddress_toInteger := GetProcAddress(LDllHandle, 'sfIpAddress_toInteger');
  sfIpAddress_toString := GetProcAddress(LDllHandle, 'sfIpAddress_toString');
  sfJoystick_getAxisPosition := GetProcAddress(LDllHandle, 'sfJoystick_getAxisPosition');
  sfJoystick_getButtonCount := GetProcAddress(LDllHandle, 'sfJoystick_getButtonCount');
  sfJoystick_getIdentification := GetProcAddress(LDllHandle, 'sfJoystick_getIdentification');
  sfJoystick_hasAxis := GetProcAddress(LDllHandle, 'sfJoystick_hasAxis');
  sfJoystick_isButtonPressed := GetProcAddress(LDllHandle, 'sfJoystick_isButtonPressed');
  sfJoystick_isConnected := GetProcAddress(LDllHandle, 'sfJoystick_isConnected');
  sfJoystick_update := GetProcAddress(LDllHandle, 'sfJoystick_update');
  sfKeyboard_isKeyPressed := GetProcAddress(LDllHandle, 'sfKeyboard_isKeyPressed');
  sfKeyboard_setVirtualKeyboardVisible := GetProcAddress(LDllHandle, 'sfKeyboard_setVirtualKeyboardVisible');
  sfListener_getDirection := GetProcAddress(LDllHandle, 'sfListener_getDirection');
  sfListener_getGlobalVolume := GetProcAddress(LDllHandle, 'sfListener_getGlobalVolume');
  sfListener_getPosition := GetProcAddress(LDllHandle, 'sfListener_getPosition');
  sfListener_getUpVector := GetProcAddress(LDllHandle, 'sfListener_getUpVector');
  sfListener_setDirection := GetProcAddress(LDllHandle, 'sfListener_setDirection');
  sfListener_setGlobalVolume := GetProcAddress(LDllHandle, 'sfListener_setGlobalVolume');
  sfListener_setPosition := GetProcAddress(LDllHandle, 'sfListener_setPosition');
  sfListener_setUpVector := GetProcAddress(LDllHandle, 'sfListener_setUpVector');
  sfMagenta := GetProcAddress(LDllHandle, 'sfMagenta');
  sfMicroseconds := GetProcAddress(LDllHandle, 'sfMicroseconds');
  sfMilliseconds := GetProcAddress(LDllHandle, 'sfMilliseconds');
  sfMouse_getPosition := GetProcAddress(LDllHandle, 'sfMouse_getPosition');
  sfMouse_getPositionRenderWindow := GetProcAddress(LDllHandle, 'sfMouse_getPositionRenderWindow');
  sfMouse_isButtonPressed := GetProcAddress(LDllHandle, 'sfMouse_isButtonPressed');
  sfMouse_setPosition := GetProcAddress(LDllHandle, 'sfMouse_setPosition');
  sfMouse_setPositionRenderWindow := GetProcAddress(LDllHandle, 'sfMouse_setPositionRenderWindow');
  sfMusic_createFromFile := GetProcAddress(LDllHandle, 'sfMusic_createFromFile');
  sfMusic_createFromMemory := GetProcAddress(LDllHandle, 'sfMusic_createFromMemory');
  sfMusic_createFromStream := GetProcAddress(LDllHandle, 'sfMusic_createFromStream');
  sfMusic_destroy := GetProcAddress(LDllHandle, 'sfMusic_destroy');
  sfMusic_getAttenuation := GetProcAddress(LDllHandle, 'sfMusic_getAttenuation');
  sfMusic_getChannelCount := GetProcAddress(LDllHandle, 'sfMusic_getChannelCount');
  sfMusic_getDuration := GetProcAddress(LDllHandle, 'sfMusic_getDuration');
  sfMusic_getLoop := GetProcAddress(LDllHandle, 'sfMusic_getLoop');
  sfMusic_getLoopPoints := GetProcAddress(LDllHandle, 'sfMusic_getLoopPoints');
  sfMusic_getMinDistance := GetProcAddress(LDllHandle, 'sfMusic_getMinDistance');
  sfMusic_getPitch := GetProcAddress(LDllHandle, 'sfMusic_getPitch');
  sfMusic_getPlayingOffset := GetProcAddress(LDllHandle, 'sfMusic_getPlayingOffset');
  sfMusic_getPosition := GetProcAddress(LDllHandle, 'sfMusic_getPosition');
  sfMusic_getSampleRate := GetProcAddress(LDllHandle, 'sfMusic_getSampleRate');
  sfMusic_getStatus := GetProcAddress(LDllHandle, 'sfMusic_getStatus');
  sfMusic_getVolume := GetProcAddress(LDllHandle, 'sfMusic_getVolume');
  sfMusic_isRelativeToListener := GetProcAddress(LDllHandle, 'sfMusic_isRelativeToListener');
  sfMusic_pause := GetProcAddress(LDllHandle, 'sfMusic_pause');
  sfMusic_play := GetProcAddress(LDllHandle, 'sfMusic_play');
  sfMusic_setAttenuation := GetProcAddress(LDllHandle, 'sfMusic_setAttenuation');
  sfMusic_setLoop := GetProcAddress(LDllHandle, 'sfMusic_setLoop');
  sfMusic_setLoopPoints := GetProcAddress(LDllHandle, 'sfMusic_setLoopPoints');
  sfMusic_setMinDistance := GetProcAddress(LDllHandle, 'sfMusic_setMinDistance');
  sfMusic_setPitch := GetProcAddress(LDllHandle, 'sfMusic_setPitch');
  sfMusic_setPlayingOffset := GetProcAddress(LDllHandle, 'sfMusic_setPlayingOffset');
  sfMusic_setPosition := GetProcAddress(LDllHandle, 'sfMusic_setPosition');
  sfMusic_setRelativeToListener := GetProcAddress(LDllHandle, 'sfMusic_setRelativeToListener');
  sfMusic_setVolume := GetProcAddress(LDllHandle, 'sfMusic_setVolume');
  sfMusic_stop := GetProcAddress(LDllHandle, 'sfMusic_stop');
  sfMutex_create := GetProcAddress(LDllHandle, 'sfMutex_create');
  sfMutex_destroy := GetProcAddress(LDllHandle, 'sfMutex_destroy');
  sfMutex_lock := GetProcAddress(LDllHandle, 'sfMutex_lock');
  sfMutex_unlock := GetProcAddress(LDllHandle, 'sfMutex_unlock');
  sfPacket_append := GetProcAddress(LDllHandle, 'sfPacket_append');
  sfPacket_canRead := GetProcAddress(LDllHandle, 'sfPacket_canRead');
  sfPacket_clear := GetProcAddress(LDllHandle, 'sfPacket_clear');
  sfPacket_copy := GetProcAddress(LDllHandle, 'sfPacket_copy');
  sfPacket_create := GetProcAddress(LDllHandle, 'sfPacket_create');
  sfPacket_destroy := GetProcAddress(LDllHandle, 'sfPacket_destroy');
  sfPacket_endOfPacket := GetProcAddress(LDllHandle, 'sfPacket_endOfPacket');
  sfPacket_getData := GetProcAddress(LDllHandle, 'sfPacket_getData');
  sfPacket_getDataSize := GetProcAddress(LDllHandle, 'sfPacket_getDataSize');
  sfPacket_readBool := GetProcAddress(LDllHandle, 'sfPacket_readBool');
  sfPacket_readDouble := GetProcAddress(LDllHandle, 'sfPacket_readDouble');
  sfPacket_readFloat := GetProcAddress(LDllHandle, 'sfPacket_readFloat');
  sfPacket_readInt16 := GetProcAddress(LDllHandle, 'sfPacket_readInt16');
  sfPacket_readInt32 := GetProcAddress(LDllHandle, 'sfPacket_readInt32');
  sfPacket_readInt8 := GetProcAddress(LDllHandle, 'sfPacket_readInt8');
  sfPacket_readString := GetProcAddress(LDllHandle, 'sfPacket_readString');
  sfPacket_readUint16 := GetProcAddress(LDllHandle, 'sfPacket_readUint16');
  sfPacket_readUint32 := GetProcAddress(LDllHandle, 'sfPacket_readUint32');
  sfPacket_readUint8 := GetProcAddress(LDllHandle, 'sfPacket_readUint8');
  sfPacket_readWideString := GetProcAddress(LDllHandle, 'sfPacket_readWideString');
  sfPacket_writeBool := GetProcAddress(LDllHandle, 'sfPacket_writeBool');
  sfPacket_writeDouble := GetProcAddress(LDllHandle, 'sfPacket_writeDouble');
  sfPacket_writeFloat := GetProcAddress(LDllHandle, 'sfPacket_writeFloat');
  sfPacket_writeInt16 := GetProcAddress(LDllHandle, 'sfPacket_writeInt16');
  sfPacket_writeInt32 := GetProcAddress(LDllHandle, 'sfPacket_writeInt32');
  sfPacket_writeInt8 := GetProcAddress(LDllHandle, 'sfPacket_writeInt8');
  sfPacket_writeString := GetProcAddress(LDllHandle, 'sfPacket_writeString');
  sfPacket_writeUint16 := GetProcAddress(LDllHandle, 'sfPacket_writeUint16');
  sfPacket_writeUint32 := GetProcAddress(LDllHandle, 'sfPacket_writeUint32');
  sfPacket_writeUint8 := GetProcAddress(LDllHandle, 'sfPacket_writeUint8');
  sfPacket_writeWideString := GetProcAddress(LDllHandle, 'sfPacket_writeWideString');
  sfRectangleShape_copy := GetProcAddress(LDllHandle, 'sfRectangleShape_copy');
  sfRectangleShape_create := GetProcAddress(LDllHandle, 'sfRectangleShape_create');
  sfRectangleShape_destroy := GetProcAddress(LDllHandle, 'sfRectangleShape_destroy');
  sfRectangleShape_getFillColor := GetProcAddress(LDllHandle, 'sfRectangleShape_getFillColor');
  sfRectangleShape_getGlobalBounds := GetProcAddress(LDllHandle, 'sfRectangleShape_getGlobalBounds');
  sfRectangleShape_getInverseTransform := GetProcAddress(LDllHandle, 'sfRectangleShape_getInverseTransform');
  sfRectangleShape_getLocalBounds := GetProcAddress(LDllHandle, 'sfRectangleShape_getLocalBounds');
  sfRectangleShape_getOrigin := GetProcAddress(LDllHandle, 'sfRectangleShape_getOrigin');
  sfRectangleShape_getOutlineColor := GetProcAddress(LDllHandle, 'sfRectangleShape_getOutlineColor');
  sfRectangleShape_getOutlineThickness := GetProcAddress(LDllHandle, 'sfRectangleShape_getOutlineThickness');
  sfRectangleShape_getPoint := GetProcAddress(LDllHandle, 'sfRectangleShape_getPoint');
  sfRectangleShape_getPointCount := GetProcAddress(LDllHandle, 'sfRectangleShape_getPointCount');
  sfRectangleShape_getPosition := GetProcAddress(LDllHandle, 'sfRectangleShape_getPosition');
  sfRectangleShape_getRotation := GetProcAddress(LDllHandle, 'sfRectangleShape_getRotation');
  sfRectangleShape_getScale := GetProcAddress(LDllHandle, 'sfRectangleShape_getScale');
  sfRectangleShape_getSize := GetProcAddress(LDllHandle, 'sfRectangleShape_getSize');
  sfRectangleShape_getTexture := GetProcAddress(LDllHandle, 'sfRectangleShape_getTexture');
  sfRectangleShape_getTextureRect := GetProcAddress(LDllHandle, 'sfRectangleShape_getTextureRect');
  sfRectangleShape_getTransform := GetProcAddress(LDllHandle, 'sfRectangleShape_getTransform');
  sfRectangleShape_move := GetProcAddress(LDllHandle, 'sfRectangleShape_move');
  sfRectangleShape_rotate := GetProcAddress(LDllHandle, 'sfRectangleShape_rotate');
  sfRectangleShape_scale := GetProcAddress(LDllHandle, 'sfRectangleShape_scale');
  sfRectangleShape_setFillColor := GetProcAddress(LDllHandle, 'sfRectangleShape_setFillColor');
  sfRectangleShape_setOrigin := GetProcAddress(LDllHandle, 'sfRectangleShape_setOrigin');
  sfRectangleShape_setOutlineColor := GetProcAddress(LDllHandle, 'sfRectangleShape_setOutlineColor');
  sfRectangleShape_setOutlineThickness := GetProcAddress(LDllHandle, 'sfRectangleShape_setOutlineThickness');
  sfRectangleShape_setPosition := GetProcAddress(LDllHandle, 'sfRectangleShape_setPosition');
  sfRectangleShape_setRotation := GetProcAddress(LDllHandle, 'sfRectangleShape_setRotation');
  sfRectangleShape_setScale := GetProcAddress(LDllHandle, 'sfRectangleShape_setScale');
  sfRectangleShape_setSize := GetProcAddress(LDllHandle, 'sfRectangleShape_setSize');
  sfRectangleShape_setTexture := GetProcAddress(LDllHandle, 'sfRectangleShape_setTexture');
  sfRectangleShape_setTextureRect := GetProcAddress(LDllHandle, 'sfRectangleShape_setTextureRect');
  sfRed := GetProcAddress(LDllHandle, 'sfRed');
  sfRenderTexture_clear := GetProcAddress(LDllHandle, 'sfRenderTexture_clear');
  sfRenderTexture_create := GetProcAddress(LDllHandle, 'sfRenderTexture_create');
  sfRenderTexture_createWithSettings := GetProcAddress(LDllHandle, 'sfRenderTexture_createWithSettings');
  sfRenderTexture_destroy := GetProcAddress(LDllHandle, 'sfRenderTexture_destroy');
  sfRenderTexture_display := GetProcAddress(LDllHandle, 'sfRenderTexture_display');
  sfRenderTexture_drawCircleShape := GetProcAddress(LDllHandle, 'sfRenderTexture_drawCircleShape');
  sfRenderTexture_drawConvexShape := GetProcAddress(LDllHandle, 'sfRenderTexture_drawConvexShape');
  sfRenderTexture_drawPrimitives := GetProcAddress(LDllHandle, 'sfRenderTexture_drawPrimitives');
  sfRenderTexture_drawRectangleShape := GetProcAddress(LDllHandle, 'sfRenderTexture_drawRectangleShape');
  sfRenderTexture_drawShape := GetProcAddress(LDllHandle, 'sfRenderTexture_drawShape');
  sfRenderTexture_drawSprite := GetProcAddress(LDllHandle, 'sfRenderTexture_drawSprite');
  sfRenderTexture_drawText := GetProcAddress(LDllHandle, 'sfRenderTexture_drawText');
  sfRenderTexture_drawVertexArray := GetProcAddress(LDllHandle, 'sfRenderTexture_drawVertexArray');
  sfRenderTexture_drawVertexBuffer := GetProcAddress(LDllHandle, 'sfRenderTexture_drawVertexBuffer');
  sfRenderTexture_generateMipmap := GetProcAddress(LDllHandle, 'sfRenderTexture_generateMipmap');
  sfRenderTexture_getDefaultView := GetProcAddress(LDllHandle, 'sfRenderTexture_getDefaultView');
  sfRenderTexture_getMaximumAntialiasingLevel := GetProcAddress(LDllHandle, 'sfRenderTexture_getMaximumAntialiasingLevel');
  sfRenderTexture_getSize := GetProcAddress(LDllHandle, 'sfRenderTexture_getSize');
  sfRenderTexture_getTexture := GetProcAddress(LDllHandle, 'sfRenderTexture_getTexture');
  sfRenderTexture_getView := GetProcAddress(LDllHandle, 'sfRenderTexture_getView');
  sfRenderTexture_getViewport := GetProcAddress(LDllHandle, 'sfRenderTexture_getViewport');
  sfRenderTexture_isRepeated := GetProcAddress(LDllHandle, 'sfRenderTexture_isRepeated');
  sfRenderTexture_isSmooth := GetProcAddress(LDllHandle, 'sfRenderTexture_isSmooth');
  sfRenderTexture_mapCoordsToPixel := GetProcAddress(LDllHandle, 'sfRenderTexture_mapCoordsToPixel');
  sfRenderTexture_mapPixelToCoords := GetProcAddress(LDllHandle, 'sfRenderTexture_mapPixelToCoords');
  sfRenderTexture_popGLStates := GetProcAddress(LDllHandle, 'sfRenderTexture_popGLStates');
  sfRenderTexture_pushGLStates := GetProcAddress(LDllHandle, 'sfRenderTexture_pushGLStates');
  sfRenderTexture_resetGLStates := GetProcAddress(LDllHandle, 'sfRenderTexture_resetGLStates');
  sfRenderTexture_setActive := GetProcAddress(LDllHandle, 'sfRenderTexture_setActive');
  sfRenderTexture_setRepeated := GetProcAddress(LDllHandle, 'sfRenderTexture_setRepeated');
  sfRenderTexture_setSmooth := GetProcAddress(LDllHandle, 'sfRenderTexture_setSmooth');
  sfRenderTexture_setView := GetProcAddress(LDllHandle, 'sfRenderTexture_setView');
  sfRenderWindow_capture := GetProcAddress(LDllHandle, 'sfRenderWindow_capture');
  sfRenderWindow_clear := GetProcAddress(LDllHandle, 'sfRenderWindow_clear');
  sfRenderWindow_close := GetProcAddress(LDllHandle, 'sfRenderWindow_close');
  sfRenderWindow_create := GetProcAddress(LDllHandle, 'sfRenderWindow_create');
  sfRenderWindow_createFromHandle := GetProcAddress(LDllHandle, 'sfRenderWindow_createFromHandle');
  sfRenderWindow_createUnicode := GetProcAddress(LDllHandle, 'sfRenderWindow_createUnicode');
  sfRenderWindow_destroy := GetProcAddress(LDllHandle, 'sfRenderWindow_destroy');
  sfRenderWindow_display := GetProcAddress(LDllHandle, 'sfRenderWindow_display');
  sfRenderWindow_drawCircleShape := GetProcAddress(LDllHandle, 'sfRenderWindow_drawCircleShape');
  sfRenderWindow_drawConvexShape := GetProcAddress(LDllHandle, 'sfRenderWindow_drawConvexShape');
  sfRenderWindow_drawPrimitives := GetProcAddress(LDllHandle, 'sfRenderWindow_drawPrimitives');
  sfRenderWindow_drawRectangleShape := GetProcAddress(LDllHandle, 'sfRenderWindow_drawRectangleShape');
  sfRenderWindow_drawShape := GetProcAddress(LDllHandle, 'sfRenderWindow_drawShape');
  sfRenderWindow_drawSprite := GetProcAddress(LDllHandle, 'sfRenderWindow_drawSprite');
  sfRenderWindow_drawText := GetProcAddress(LDllHandle, 'sfRenderWindow_drawText');
  sfRenderWindow_drawVertexArray := GetProcAddress(LDllHandle, 'sfRenderWindow_drawVertexArray');
  sfRenderWindow_drawVertexBuffer := GetProcAddress(LDllHandle, 'sfRenderWindow_drawVertexBuffer');
  sfRenderWindow_getDefaultView := GetProcAddress(LDllHandle, 'sfRenderWindow_getDefaultView');
  sfRenderWindow_getPosition := GetProcAddress(LDllHandle, 'sfRenderWindow_getPosition');
  sfRenderWindow_getSettings := GetProcAddress(LDllHandle, 'sfRenderWindow_getSettings');
  sfRenderWindow_getSize := GetProcAddress(LDllHandle, 'sfRenderWindow_getSize');
  sfRenderWindow_getSystemHandle := GetProcAddress(LDllHandle, 'sfRenderWindow_getSystemHandle');
  sfRenderWindow_getView := GetProcAddress(LDllHandle, 'sfRenderWindow_getView');
  sfRenderWindow_getViewport := GetProcAddress(LDllHandle, 'sfRenderWindow_getViewport');
  sfRenderWindow_hasFocus := GetProcAddress(LDllHandle, 'sfRenderWindow_hasFocus');
  sfRenderWindow_isOpen := GetProcAddress(LDllHandle, 'sfRenderWindow_isOpen');
  sfRenderWindow_mapCoordsToPixel := GetProcAddress(LDllHandle, 'sfRenderWindow_mapCoordsToPixel');
  sfRenderWindow_mapPixelToCoords := GetProcAddress(LDllHandle, 'sfRenderWindow_mapPixelToCoords');
  sfRenderWindow_pollEvent := GetProcAddress(LDllHandle, 'sfRenderWindow_pollEvent');
  sfRenderWindow_popGLStates := GetProcAddress(LDllHandle, 'sfRenderWindow_popGLStates');
  sfRenderWindow_pushGLStates := GetProcAddress(LDllHandle, 'sfRenderWindow_pushGLStates');
  sfRenderWindow_requestFocus := GetProcAddress(LDllHandle, 'sfRenderWindow_requestFocus');
  sfRenderWindow_resetGLStates := GetProcAddress(LDllHandle, 'sfRenderWindow_resetGLStates');
  sfRenderWindow_setActive := GetProcAddress(LDllHandle, 'sfRenderWindow_setActive');
  sfRenderWindow_setFramerateLimit := GetProcAddress(LDllHandle, 'sfRenderWindow_setFramerateLimit');
  sfRenderWindow_setIcon := GetProcAddress(LDllHandle, 'sfRenderWindow_setIcon');
  sfRenderWindow_setJoystickThreshold := GetProcAddress(LDllHandle, 'sfRenderWindow_setJoystickThreshold');
  sfRenderWindow_setKeyRepeatEnabled := GetProcAddress(LDllHandle, 'sfRenderWindow_setKeyRepeatEnabled');
  sfRenderWindow_setMouseCursor := GetProcAddress(LDllHandle, 'sfRenderWindow_setMouseCursor');
  sfRenderWindow_setMouseCursorGrabbed := GetProcAddress(LDllHandle, 'sfRenderWindow_setMouseCursorGrabbed');
  sfRenderWindow_setMouseCursorVisible := GetProcAddress(LDllHandle, 'sfRenderWindow_setMouseCursorVisible');
  sfRenderWindow_setPosition := GetProcAddress(LDllHandle, 'sfRenderWindow_setPosition');
  sfRenderWindow_setSize := GetProcAddress(LDllHandle, 'sfRenderWindow_setSize');
  sfRenderWindow_setTitle := GetProcAddress(LDllHandle, 'sfRenderWindow_setTitle');
  sfRenderWindow_setUnicodeTitle := GetProcAddress(LDllHandle, 'sfRenderWindow_setUnicodeTitle');
  sfRenderWindow_setVerticalSyncEnabled := GetProcAddress(LDllHandle, 'sfRenderWindow_setVerticalSyncEnabled');
  sfRenderWindow_setView := GetProcAddress(LDllHandle, 'sfRenderWindow_setView');
  sfRenderWindow_setVisible := GetProcAddress(LDllHandle, 'sfRenderWindow_setVisible');
  sfRenderWindow_waitEvent := GetProcAddress(LDllHandle, 'sfRenderWindow_waitEvent');
  sfSeconds := GetProcAddress(LDllHandle, 'sfSeconds');
  sfSensor_getValue := GetProcAddress(LDllHandle, 'sfSensor_getValue');
  sfSensor_isAvailable := GetProcAddress(LDllHandle, 'sfSensor_isAvailable');
  sfSensor_setEnabled := GetProcAddress(LDllHandle, 'sfSensor_setEnabled');
  sfShader_bind := GetProcAddress(LDllHandle, 'sfShader_bind');
  sfShader_createFromFile := GetProcAddress(LDllHandle, 'sfShader_createFromFile');
  sfShader_createFromMemory := GetProcAddress(LDllHandle, 'sfShader_createFromMemory');
  sfShader_createFromStream := GetProcAddress(LDllHandle, 'sfShader_createFromStream');
  sfShader_destroy := GetProcAddress(LDllHandle, 'sfShader_destroy');
  sfShader_getNativeHandle := GetProcAddress(LDllHandle, 'sfShader_getNativeHandle');
  sfShader_isAvailable := GetProcAddress(LDllHandle, 'sfShader_isAvailable');
  sfShader_isGeometryAvailable := GetProcAddress(LDllHandle, 'sfShader_isGeometryAvailable');
  sfShader_setBoolUniform := GetProcAddress(LDllHandle, 'sfShader_setBoolUniform');
  sfShader_setBvec2Uniform := GetProcAddress(LDllHandle, 'sfShader_setBvec2Uniform');
  sfShader_setBvec3Uniform := GetProcAddress(LDllHandle, 'sfShader_setBvec3Uniform');
  sfShader_setBvec4Uniform := GetProcAddress(LDllHandle, 'sfShader_setBvec4Uniform');
  sfShader_setColorParameter := GetProcAddress(LDllHandle, 'sfShader_setColorParameter');
  sfShader_setColorUniform := GetProcAddress(LDllHandle, 'sfShader_setColorUniform');
  sfShader_setCurrentTextureParameter := GetProcAddress(LDllHandle, 'sfShader_setCurrentTextureParameter');
  sfShader_setCurrentTextureUniform := GetProcAddress(LDllHandle, 'sfShader_setCurrentTextureUniform');
  sfShader_setFloat2Parameter := GetProcAddress(LDllHandle, 'sfShader_setFloat2Parameter');
  sfShader_setFloat3Parameter := GetProcAddress(LDllHandle, 'sfShader_setFloat3Parameter');
  sfShader_setFloat4Parameter := GetProcAddress(LDllHandle, 'sfShader_setFloat4Parameter');
  sfShader_setFloatParameter := GetProcAddress(LDllHandle, 'sfShader_setFloatParameter');
  sfShader_setFloatUniform := GetProcAddress(LDllHandle, 'sfShader_setFloatUniform');
  sfShader_setFloatUniformArray := GetProcAddress(LDllHandle, 'sfShader_setFloatUniformArray');
  sfShader_setIntColorUniform := GetProcAddress(LDllHandle, 'sfShader_setIntColorUniform');
  sfShader_setIntUniform := GetProcAddress(LDllHandle, 'sfShader_setIntUniform');
  sfShader_setIvec2Uniform := GetProcAddress(LDllHandle, 'sfShader_setIvec2Uniform');
  sfShader_setIvec3Uniform := GetProcAddress(LDllHandle, 'sfShader_setIvec3Uniform');
  sfShader_setIvec4Uniform := GetProcAddress(LDllHandle, 'sfShader_setIvec4Uniform');
  sfShader_setMat3Uniform := GetProcAddress(LDllHandle, 'sfShader_setMat3Uniform');
  sfShader_setMat3UniformArray := GetProcAddress(LDllHandle, 'sfShader_setMat3UniformArray');
  sfShader_setMat4Uniform := GetProcAddress(LDllHandle, 'sfShader_setMat4Uniform');
  sfShader_setMat4UniformArray := GetProcAddress(LDllHandle, 'sfShader_setMat4UniformArray');
  sfShader_setTextureParameter := GetProcAddress(LDllHandle, 'sfShader_setTextureParameter');
  sfShader_setTextureUniform := GetProcAddress(LDllHandle, 'sfShader_setTextureUniform');
  sfShader_setTransformParameter := GetProcAddress(LDllHandle, 'sfShader_setTransformParameter');
  sfShader_setVec2Uniform := GetProcAddress(LDllHandle, 'sfShader_setVec2Uniform');
  sfShader_setVec2UniformArray := GetProcAddress(LDllHandle, 'sfShader_setVec2UniformArray');
  sfShader_setVec3Uniform := GetProcAddress(LDllHandle, 'sfShader_setVec3Uniform');
  sfShader_setVec3UniformArray := GetProcAddress(LDllHandle, 'sfShader_setVec3UniformArray');
  sfShader_setVec4Uniform := GetProcAddress(LDllHandle, 'sfShader_setVec4Uniform');
  sfShader_setVec4UniformArray := GetProcAddress(LDllHandle, 'sfShader_setVec4UniformArray');
  sfShader_setVector2Parameter := GetProcAddress(LDllHandle, 'sfShader_setVector2Parameter');
  sfShader_setVector3Parameter := GetProcAddress(LDllHandle, 'sfShader_setVector3Parameter');
  sfShape_create := GetProcAddress(LDllHandle, 'sfShape_create');
  sfShape_destroy := GetProcAddress(LDllHandle, 'sfShape_destroy');
  sfShape_getFillColor := GetProcAddress(LDllHandle, 'sfShape_getFillColor');
  sfShape_getGlobalBounds := GetProcAddress(LDllHandle, 'sfShape_getGlobalBounds');
  sfShape_getInverseTransform := GetProcAddress(LDllHandle, 'sfShape_getInverseTransform');
  sfShape_getLocalBounds := GetProcAddress(LDllHandle, 'sfShape_getLocalBounds');
  sfShape_getOrigin := GetProcAddress(LDllHandle, 'sfShape_getOrigin');
  sfShape_getOutlineColor := GetProcAddress(LDllHandle, 'sfShape_getOutlineColor');
  sfShape_getOutlineThickness := GetProcAddress(LDllHandle, 'sfShape_getOutlineThickness');
  sfShape_getPoint := GetProcAddress(LDllHandle, 'sfShape_getPoint');
  sfShape_getPointCount := GetProcAddress(LDllHandle, 'sfShape_getPointCount');
  sfShape_getPosition := GetProcAddress(LDllHandle, 'sfShape_getPosition');
  sfShape_getRotation := GetProcAddress(LDllHandle, 'sfShape_getRotation');
  sfShape_getScale := GetProcAddress(LDllHandle, 'sfShape_getScale');
  sfShape_getTexture := GetProcAddress(LDllHandle, 'sfShape_getTexture');
  sfShape_getTextureRect := GetProcAddress(LDllHandle, 'sfShape_getTextureRect');
  sfShape_getTransform := GetProcAddress(LDllHandle, 'sfShape_getTransform');
  sfShape_move := GetProcAddress(LDllHandle, 'sfShape_move');
  sfShape_rotate := GetProcAddress(LDllHandle, 'sfShape_rotate');
  sfShape_scale := GetProcAddress(LDllHandle, 'sfShape_scale');
  sfShape_setFillColor := GetProcAddress(LDllHandle, 'sfShape_setFillColor');
  sfShape_setOrigin := GetProcAddress(LDllHandle, 'sfShape_setOrigin');
  sfShape_setOutlineColor := GetProcAddress(LDllHandle, 'sfShape_setOutlineColor');
  sfShape_setOutlineThickness := GetProcAddress(LDllHandle, 'sfShape_setOutlineThickness');
  sfShape_setPosition := GetProcAddress(LDllHandle, 'sfShape_setPosition');
  sfShape_setRotation := GetProcAddress(LDllHandle, 'sfShape_setRotation');
  sfShape_setScale := GetProcAddress(LDllHandle, 'sfShape_setScale');
  sfShape_setTexture := GetProcAddress(LDllHandle, 'sfShape_setTexture');
  sfShape_setTextureRect := GetProcAddress(LDllHandle, 'sfShape_setTextureRect');
  sfShape_update := GetProcAddress(LDllHandle, 'sfShape_update');
  sfSleep := GetProcAddress(LDllHandle, 'sfSleep');
  sfSocketSelector_addTcpListener := GetProcAddress(LDllHandle, 'sfSocketSelector_addTcpListener');
  sfSocketSelector_addTcpSocket := GetProcAddress(LDllHandle, 'sfSocketSelector_addTcpSocket');
  sfSocketSelector_addUdpSocket := GetProcAddress(LDllHandle, 'sfSocketSelector_addUdpSocket');
  sfSocketSelector_clear := GetProcAddress(LDllHandle, 'sfSocketSelector_clear');
  sfSocketSelector_copy := GetProcAddress(LDllHandle, 'sfSocketSelector_copy');
  sfSocketSelector_create := GetProcAddress(LDllHandle, 'sfSocketSelector_create');
  sfSocketSelector_destroy := GetProcAddress(LDllHandle, 'sfSocketSelector_destroy');
  sfSocketSelector_isTcpListenerReady := GetProcAddress(LDllHandle, 'sfSocketSelector_isTcpListenerReady');
  sfSocketSelector_isTcpSocketReady := GetProcAddress(LDllHandle, 'sfSocketSelector_isTcpSocketReady');
  sfSocketSelector_isUdpSocketReady := GetProcAddress(LDllHandle, 'sfSocketSelector_isUdpSocketReady');
  sfSocketSelector_removeTcpListener := GetProcAddress(LDllHandle, 'sfSocketSelector_removeTcpListener');
  sfSocketSelector_removeTcpSocket := GetProcAddress(LDllHandle, 'sfSocketSelector_removeTcpSocket');
  sfSocketSelector_removeUdpSocket := GetProcAddress(LDllHandle, 'sfSocketSelector_removeUdpSocket');
  sfSocketSelector_wait := GetProcAddress(LDllHandle, 'sfSocketSelector_wait');
  sfSound_copy := GetProcAddress(LDllHandle, 'sfSound_copy');
  sfSound_create := GetProcAddress(LDllHandle, 'sfSound_create');
  sfSound_destroy := GetProcAddress(LDllHandle, 'sfSound_destroy');
  sfSound_getAttenuation := GetProcAddress(LDllHandle, 'sfSound_getAttenuation');
  sfSound_getBuffer := GetProcAddress(LDllHandle, 'sfSound_getBuffer');
  sfSound_getLoop := GetProcAddress(LDllHandle, 'sfSound_getLoop');
  sfSound_getMinDistance := GetProcAddress(LDllHandle, 'sfSound_getMinDistance');
  sfSound_getPitch := GetProcAddress(LDllHandle, 'sfSound_getPitch');
  sfSound_getPlayingOffset := GetProcAddress(LDllHandle, 'sfSound_getPlayingOffset');
  sfSound_getPosition := GetProcAddress(LDllHandle, 'sfSound_getPosition');
  sfSound_getStatus := GetProcAddress(LDllHandle, 'sfSound_getStatus');
  sfSound_getVolume := GetProcAddress(LDllHandle, 'sfSound_getVolume');
  sfSound_isRelativeToListener := GetProcAddress(LDllHandle, 'sfSound_isRelativeToListener');
  sfSound_pause := GetProcAddress(LDllHandle, 'sfSound_pause');
  sfSound_play := GetProcAddress(LDllHandle, 'sfSound_play');
  sfSound_setAttenuation := GetProcAddress(LDllHandle, 'sfSound_setAttenuation');
  sfSound_setBuffer := GetProcAddress(LDllHandle, 'sfSound_setBuffer');
  sfSound_setLoop := GetProcAddress(LDllHandle, 'sfSound_setLoop');
  sfSound_setMinDistance := GetProcAddress(LDllHandle, 'sfSound_setMinDistance');
  sfSound_setPitch := GetProcAddress(LDllHandle, 'sfSound_setPitch');
  sfSound_setPlayingOffset := GetProcAddress(LDllHandle, 'sfSound_setPlayingOffset');
  sfSound_setPosition := GetProcAddress(LDllHandle, 'sfSound_setPosition');
  sfSound_setRelativeToListener := GetProcAddress(LDllHandle, 'sfSound_setRelativeToListener');
  sfSound_setVolume := GetProcAddress(LDllHandle, 'sfSound_setVolume');
  sfSound_stop := GetProcAddress(LDllHandle, 'sfSound_stop');
  sfSoundBuffer_copy := GetProcAddress(LDllHandle, 'sfSoundBuffer_copy');
  sfSoundBuffer_createFromFile := GetProcAddress(LDllHandle, 'sfSoundBuffer_createFromFile');
  sfSoundBuffer_createFromMemory := GetProcAddress(LDllHandle, 'sfSoundBuffer_createFromMemory');
  sfSoundBuffer_createFromSamples := GetProcAddress(LDllHandle, 'sfSoundBuffer_createFromSamples');
  sfSoundBuffer_createFromStream := GetProcAddress(LDllHandle, 'sfSoundBuffer_createFromStream');
  sfSoundBuffer_destroy := GetProcAddress(LDllHandle, 'sfSoundBuffer_destroy');
  sfSoundBuffer_getChannelCount := GetProcAddress(LDllHandle, 'sfSoundBuffer_getChannelCount');
  sfSoundBuffer_getDuration := GetProcAddress(LDllHandle, 'sfSoundBuffer_getDuration');
  sfSoundBuffer_getSampleCount := GetProcAddress(LDllHandle, 'sfSoundBuffer_getSampleCount');
  sfSoundBuffer_getSampleRate := GetProcAddress(LDllHandle, 'sfSoundBuffer_getSampleRate');
  sfSoundBuffer_getSamples := GetProcAddress(LDllHandle, 'sfSoundBuffer_getSamples');
  sfSoundBuffer_saveToFile := GetProcAddress(LDllHandle, 'sfSoundBuffer_saveToFile');
  sfSoundBufferRecorder_create := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_create');
  sfSoundBufferRecorder_destroy := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_destroy');
  sfSoundBufferRecorder_getBuffer := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_getBuffer');
  sfSoundBufferRecorder_getDevice := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_getDevice');
  sfSoundBufferRecorder_getSampleRate := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_getSampleRate');
  sfSoundBufferRecorder_setDevice := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_setDevice');
  sfSoundBufferRecorder_start := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_start');
  sfSoundBufferRecorder_stop := GetProcAddress(LDllHandle, 'sfSoundBufferRecorder_stop');
  sfSoundRecorder_create := GetProcAddress(LDllHandle, 'sfSoundRecorder_create');
  sfSoundRecorder_destroy := GetProcAddress(LDllHandle, 'sfSoundRecorder_destroy');
  sfSoundRecorder_getAvailableDevices := GetProcAddress(LDllHandle, 'sfSoundRecorder_getAvailableDevices');
  sfSoundRecorder_getChannelCount := GetProcAddress(LDllHandle, 'sfSoundRecorder_getChannelCount');
  sfSoundRecorder_getDefaultDevice := GetProcAddress(LDllHandle, 'sfSoundRecorder_getDefaultDevice');
  sfSoundRecorder_getDevice := GetProcAddress(LDllHandle, 'sfSoundRecorder_getDevice');
  sfSoundRecorder_getSampleRate := GetProcAddress(LDllHandle, 'sfSoundRecorder_getSampleRate');
  sfSoundRecorder_isAvailable := GetProcAddress(LDllHandle, 'sfSoundRecorder_isAvailable');
  sfSoundRecorder_setChannelCount := GetProcAddress(LDllHandle, 'sfSoundRecorder_setChannelCount');
  sfSoundRecorder_setDevice := GetProcAddress(LDllHandle, 'sfSoundRecorder_setDevice');
  sfSoundRecorder_setProcessingInterval := GetProcAddress(LDllHandle, 'sfSoundRecorder_setProcessingInterval');
  sfSoundRecorder_start := GetProcAddress(LDllHandle, 'sfSoundRecorder_start');
  sfSoundRecorder_stop := GetProcAddress(LDllHandle, 'sfSoundRecorder_stop');
  sfSoundStream_create := GetProcAddress(LDllHandle, 'sfSoundStream_create');
  sfSoundStream_destroy := GetProcAddress(LDllHandle, 'sfSoundStream_destroy');
  sfSoundStream_getAttenuation := GetProcAddress(LDllHandle, 'sfSoundStream_getAttenuation');
  sfSoundStream_getChannelCount := GetProcAddress(LDllHandle, 'sfSoundStream_getChannelCount');
  sfSoundStream_getLoop := GetProcAddress(LDllHandle, 'sfSoundStream_getLoop');
  sfSoundStream_getMinDistance := GetProcAddress(LDllHandle, 'sfSoundStream_getMinDistance');
  sfSoundStream_getPitch := GetProcAddress(LDllHandle, 'sfSoundStream_getPitch');
  sfSoundStream_getPlayingOffset := GetProcAddress(LDllHandle, 'sfSoundStream_getPlayingOffset');
  sfSoundStream_getPosition := GetProcAddress(LDllHandle, 'sfSoundStream_getPosition');
  sfSoundStream_getSampleRate := GetProcAddress(LDllHandle, 'sfSoundStream_getSampleRate');
  sfSoundStream_getStatus := GetProcAddress(LDllHandle, 'sfSoundStream_getStatus');
  sfSoundStream_getVolume := GetProcAddress(LDllHandle, 'sfSoundStream_getVolume');
  sfSoundStream_isRelativeToListener := GetProcAddress(LDllHandle, 'sfSoundStream_isRelativeToListener');
  sfSoundStream_pause := GetProcAddress(LDllHandle, 'sfSoundStream_pause');
  sfSoundStream_play := GetProcAddress(LDllHandle, 'sfSoundStream_play');
  sfSoundStream_setAttenuation := GetProcAddress(LDllHandle, 'sfSoundStream_setAttenuation');
  sfSoundStream_setLoop := GetProcAddress(LDllHandle, 'sfSoundStream_setLoop');
  sfSoundStream_setMinDistance := GetProcAddress(LDllHandle, 'sfSoundStream_setMinDistance');
  sfSoundStream_setPitch := GetProcAddress(LDllHandle, 'sfSoundStream_setPitch');
  sfSoundStream_setPlayingOffset := GetProcAddress(LDllHandle, 'sfSoundStream_setPlayingOffset');
  sfSoundStream_setPosition := GetProcAddress(LDllHandle, 'sfSoundStream_setPosition');
  sfSoundStream_setRelativeToListener := GetProcAddress(LDllHandle, 'sfSoundStream_setRelativeToListener');
  sfSoundStream_setVolume := GetProcAddress(LDllHandle, 'sfSoundStream_setVolume');
  sfSoundStream_stop := GetProcAddress(LDllHandle, 'sfSoundStream_stop');
  sfSprite_copy := GetProcAddress(LDllHandle, 'sfSprite_copy');
  sfSprite_create := GetProcAddress(LDllHandle, 'sfSprite_create');
  sfSprite_destroy := GetProcAddress(LDllHandle, 'sfSprite_destroy');
  sfSprite_getColor := GetProcAddress(LDllHandle, 'sfSprite_getColor');
  sfSprite_getGlobalBounds := GetProcAddress(LDllHandle, 'sfSprite_getGlobalBounds');
  sfSprite_getInverseTransform := GetProcAddress(LDllHandle, 'sfSprite_getInverseTransform');
  sfSprite_getLocalBounds := GetProcAddress(LDllHandle, 'sfSprite_getLocalBounds');
  sfSprite_getOrigin := GetProcAddress(LDllHandle, 'sfSprite_getOrigin');
  sfSprite_getPosition := GetProcAddress(LDllHandle, 'sfSprite_getPosition');
  sfSprite_getRotation := GetProcAddress(LDllHandle, 'sfSprite_getRotation');
  sfSprite_getScale := GetProcAddress(LDllHandle, 'sfSprite_getScale');
  sfSprite_getTexture := GetProcAddress(LDllHandle, 'sfSprite_getTexture');
  sfSprite_getTextureRect := GetProcAddress(LDllHandle, 'sfSprite_getTextureRect');
  sfSprite_getTransform := GetProcAddress(LDllHandle, 'sfSprite_getTransform');
  sfSprite_move := GetProcAddress(LDllHandle, 'sfSprite_move');
  sfSprite_rotate := GetProcAddress(LDllHandle, 'sfSprite_rotate');
  sfSprite_scale := GetProcAddress(LDllHandle, 'sfSprite_scale');
  sfSprite_setColor := GetProcAddress(LDllHandle, 'sfSprite_setColor');
  sfSprite_setOrigin := GetProcAddress(LDllHandle, 'sfSprite_setOrigin');
  sfSprite_setPosition := GetProcAddress(LDllHandle, 'sfSprite_setPosition');
  sfSprite_setRotation := GetProcAddress(LDllHandle, 'sfSprite_setRotation');
  sfSprite_setScale := GetProcAddress(LDllHandle, 'sfSprite_setScale');
  sfSprite_setTexture := GetProcAddress(LDllHandle, 'sfSprite_setTexture');
  sfSprite_setTextureRect := GetProcAddress(LDllHandle, 'sfSprite_setTextureRect');
  sfTcpListener_accept := GetProcAddress(LDllHandle, 'sfTcpListener_accept');
  sfTcpListener_create := GetProcAddress(LDllHandle, 'sfTcpListener_create');
  sfTcpListener_destroy := GetProcAddress(LDllHandle, 'sfTcpListener_destroy');
  sfTcpListener_getLocalPort := GetProcAddress(LDllHandle, 'sfTcpListener_getLocalPort');
  sfTcpListener_isBlocking := GetProcAddress(LDllHandle, 'sfTcpListener_isBlocking');
  sfTcpListener_listen := GetProcAddress(LDllHandle, 'sfTcpListener_listen');
  sfTcpListener_setBlocking := GetProcAddress(LDllHandle, 'sfTcpListener_setBlocking');
  sfTcpSocket_connect := GetProcAddress(LDllHandle, 'sfTcpSocket_connect');
  sfTcpSocket_create := GetProcAddress(LDllHandle, 'sfTcpSocket_create');
  sfTcpSocket_destroy := GetProcAddress(LDllHandle, 'sfTcpSocket_destroy');
  sfTcpSocket_disconnect := GetProcAddress(LDllHandle, 'sfTcpSocket_disconnect');
  sfTcpSocket_getLocalPort := GetProcAddress(LDllHandle, 'sfTcpSocket_getLocalPort');
  sfTcpSocket_getRemoteAddress := GetProcAddress(LDllHandle, 'sfTcpSocket_getRemoteAddress');
  sfTcpSocket_getRemotePort := GetProcAddress(LDllHandle, 'sfTcpSocket_getRemotePort');
  sfTcpSocket_isBlocking := GetProcAddress(LDllHandle, 'sfTcpSocket_isBlocking');
  sfTcpSocket_receive := GetProcAddress(LDllHandle, 'sfTcpSocket_receive');
  sfTcpSocket_receivePacket := GetProcAddress(LDllHandle, 'sfTcpSocket_receivePacket');
  sfTcpSocket_send := GetProcAddress(LDllHandle, 'sfTcpSocket_send');
  sfTcpSocket_sendPacket := GetProcAddress(LDllHandle, 'sfTcpSocket_sendPacket');
  sfTcpSocket_sendPartial := GetProcAddress(LDllHandle, 'sfTcpSocket_sendPartial');
  sfTcpSocket_setBlocking := GetProcAddress(LDllHandle, 'sfTcpSocket_setBlocking');
  sfText_copy := GetProcAddress(LDllHandle, 'sfText_copy');
  sfText_create := GetProcAddress(LDllHandle, 'sfText_create');
  sfText_destroy := GetProcAddress(LDllHandle, 'sfText_destroy');
  sfText_findCharacterPos := GetProcAddress(LDllHandle, 'sfText_findCharacterPos');
  sfText_getCharacterSize := GetProcAddress(LDllHandle, 'sfText_getCharacterSize');
  sfText_getColor := GetProcAddress(LDllHandle, 'sfText_getColor');
  sfText_getFillColor := GetProcAddress(LDllHandle, 'sfText_getFillColor');
  sfText_getFont := GetProcAddress(LDllHandle, 'sfText_getFont');
  sfText_getGlobalBounds := GetProcAddress(LDllHandle, 'sfText_getGlobalBounds');
  sfText_getInverseTransform := GetProcAddress(LDllHandle, 'sfText_getInverseTransform');
  sfText_getLetterSpacing := GetProcAddress(LDllHandle, 'sfText_getLetterSpacing');
  sfText_getLineSpacing := GetProcAddress(LDllHandle, 'sfText_getLineSpacing');
  sfText_getLocalBounds := GetProcAddress(LDllHandle, 'sfText_getLocalBounds');
  sfText_getOrigin := GetProcAddress(LDllHandle, 'sfText_getOrigin');
  sfText_getOutlineColor := GetProcAddress(LDllHandle, 'sfText_getOutlineColor');
  sfText_getOutlineThickness := GetProcAddress(LDllHandle, 'sfText_getOutlineThickness');
  sfText_getPosition := GetProcAddress(LDllHandle, 'sfText_getPosition');
  sfText_getRotation := GetProcAddress(LDllHandle, 'sfText_getRotation');
  sfText_getScale := GetProcAddress(LDllHandle, 'sfText_getScale');
  sfText_getString := GetProcAddress(LDllHandle, 'sfText_getString');
  sfText_getStyle := GetProcAddress(LDllHandle, 'sfText_getStyle');
  sfText_getTransform := GetProcAddress(LDllHandle, 'sfText_getTransform');
  sfText_getUnicodeString := GetProcAddress(LDllHandle, 'sfText_getUnicodeString');
  sfText_move := GetProcAddress(LDllHandle, 'sfText_move');
  sfText_rotate := GetProcAddress(LDllHandle, 'sfText_rotate');
  sfText_scale := GetProcAddress(LDllHandle, 'sfText_scale');
  sfText_setCharacterSize := GetProcAddress(LDllHandle, 'sfText_setCharacterSize');
  sfText_setColor := GetProcAddress(LDllHandle, 'sfText_setColor');
  sfText_setFillColor := GetProcAddress(LDllHandle, 'sfText_setFillColor');
  sfText_setFont := GetProcAddress(LDllHandle, 'sfText_setFont');
  sfText_setLetterSpacing := GetProcAddress(LDllHandle, 'sfText_setLetterSpacing');
  sfText_setLineSpacing := GetProcAddress(LDllHandle, 'sfText_setLineSpacing');
  sfText_setOrigin := GetProcAddress(LDllHandle, 'sfText_setOrigin');
  sfText_setOutlineColor := GetProcAddress(LDllHandle, 'sfText_setOutlineColor');
  sfText_setOutlineThickness := GetProcAddress(LDllHandle, 'sfText_setOutlineThickness');
  sfText_setPosition := GetProcAddress(LDllHandle, 'sfText_setPosition');
  sfText_setRotation := GetProcAddress(LDllHandle, 'sfText_setRotation');
  sfText_setScale := GetProcAddress(LDllHandle, 'sfText_setScale');
  sfText_setString := GetProcAddress(LDllHandle, 'sfText_setString');
  sfText_setStyle := GetProcAddress(LDllHandle, 'sfText_setStyle');
  sfText_setUnicodeString := GetProcAddress(LDllHandle, 'sfText_setUnicodeString');
  sfTexture_bind := GetProcAddress(LDllHandle, 'sfTexture_bind');
  sfTexture_copy := GetProcAddress(LDllHandle, 'sfTexture_copy');
  sfTexture_copyToImage := GetProcAddress(LDllHandle, 'sfTexture_copyToImage');
  sfTexture_create := GetProcAddress(LDllHandle, 'sfTexture_create');
  sfTexture_createFromFile := GetProcAddress(LDllHandle, 'sfTexture_createFromFile');
  sfTexture_createFromImage := GetProcAddress(LDllHandle, 'sfTexture_createFromImage');
  sfTexture_createFromMemory := GetProcAddress(LDllHandle, 'sfTexture_createFromMemory');
  sfTexture_createFromStream := GetProcAddress(LDllHandle, 'sfTexture_createFromStream');
  sfTexture_destroy := GetProcAddress(LDllHandle, 'sfTexture_destroy');
  sfTexture_generateMipmap := GetProcAddress(LDllHandle, 'sfTexture_generateMipmap');
  sfTexture_getMaximumSize := GetProcAddress(LDllHandle, 'sfTexture_getMaximumSize');
  sfTexture_getNativeHandle := GetProcAddress(LDllHandle, 'sfTexture_getNativeHandle');
  sfTexture_getSize := GetProcAddress(LDllHandle, 'sfTexture_getSize');
  sfTexture_isRepeated := GetProcAddress(LDllHandle, 'sfTexture_isRepeated');
  sfTexture_isSmooth := GetProcAddress(LDllHandle, 'sfTexture_isSmooth');
  sfTexture_isSrgb := GetProcAddress(LDllHandle, 'sfTexture_isSrgb');
  sfTexture_setRepeated := GetProcAddress(LDllHandle, 'sfTexture_setRepeated');
  sfTexture_setSmooth := GetProcAddress(LDllHandle, 'sfTexture_setSmooth');
  sfTexture_setSrgb := GetProcAddress(LDllHandle, 'sfTexture_setSrgb');
  sfTexture_swap := GetProcAddress(LDllHandle, 'sfTexture_swap');
  sfTexture_updateFromImage := GetProcAddress(LDllHandle, 'sfTexture_updateFromImage');
  sfTexture_updateFromPixels := GetProcAddress(LDllHandle, 'sfTexture_updateFromPixels');
  sfTexture_updateFromRenderWindow := GetProcAddress(LDllHandle, 'sfTexture_updateFromRenderWindow');
  sfTexture_updateFromTexture := GetProcAddress(LDllHandle, 'sfTexture_updateFromTexture');
  sfTexture_updateFromWindow := GetProcAddress(LDllHandle, 'sfTexture_updateFromWindow');
  sfThread_create := GetProcAddress(LDllHandle, 'sfThread_create');
  sfThread_destroy := GetProcAddress(LDllHandle, 'sfThread_destroy');
  sfThread_launch := GetProcAddress(LDllHandle, 'sfThread_launch');
  sfThread_terminate := GetProcAddress(LDllHandle, 'sfThread_terminate');
  sfThread_wait := GetProcAddress(LDllHandle, 'sfThread_wait');
  sfTime_asMicroseconds := GetProcAddress(LDllHandle, 'sfTime_asMicroseconds');
  sfTime_asMilliseconds := GetProcAddress(LDllHandle, 'sfTime_asMilliseconds');
  sfTime_asSeconds := GetProcAddress(LDllHandle, 'sfTime_asSeconds');
  sfTime_Zero := GetProcAddress(LDllHandle, 'sfTime_Zero');
  sfTouch_getPosition := GetProcAddress(LDllHandle, 'sfTouch_getPosition');
  sfTouch_getPositionRenderWindow := GetProcAddress(LDllHandle, 'sfTouch_getPositionRenderWindow');
  sfTouch_isDown := GetProcAddress(LDllHandle, 'sfTouch_isDown');
  sfTransform_combine := GetProcAddress(LDllHandle, 'sfTransform_combine');
  sfTransform_equal := GetProcAddress(LDllHandle, 'sfTransform_equal');
  sfTransform_fromMatrix := GetProcAddress(LDllHandle, 'sfTransform_fromMatrix');
  sfTransform_getInverse := GetProcAddress(LDllHandle, 'sfTransform_getInverse');
  sfTransform_getMatrix := GetProcAddress(LDllHandle, 'sfTransform_getMatrix');
  sfTransform_Identity := GetProcAddress(LDllHandle, 'sfTransform_Identity');
  sfTransform_rotate := GetProcAddress(LDllHandle, 'sfTransform_rotate');
  sfTransform_rotateWithCenter := GetProcAddress(LDllHandle, 'sfTransform_rotateWithCenter');
  sfTransform_scale := GetProcAddress(LDllHandle, 'sfTransform_scale');
  sfTransform_scaleWithCenter := GetProcAddress(LDllHandle, 'sfTransform_scaleWithCenter');
  sfTransform_transformPoint := GetProcAddress(LDllHandle, 'sfTransform_transformPoint');
  sfTransform_transformRect := GetProcAddress(LDllHandle, 'sfTransform_transformRect');
  sfTransform_translate := GetProcAddress(LDllHandle, 'sfTransform_translate');
  sfTransformable_copy := GetProcAddress(LDllHandle, 'sfTransformable_copy');
  sfTransformable_create := GetProcAddress(LDllHandle, 'sfTransformable_create');
  sfTransformable_destroy := GetProcAddress(LDllHandle, 'sfTransformable_destroy');
  sfTransformable_getInverseTransform := GetProcAddress(LDllHandle, 'sfTransformable_getInverseTransform');
  sfTransformable_getOrigin := GetProcAddress(LDllHandle, 'sfTransformable_getOrigin');
  sfTransformable_getPosition := GetProcAddress(LDllHandle, 'sfTransformable_getPosition');
  sfTransformable_getRotation := GetProcAddress(LDllHandle, 'sfTransformable_getRotation');
  sfTransformable_getScale := GetProcAddress(LDllHandle, 'sfTransformable_getScale');
  sfTransformable_getTransform := GetProcAddress(LDllHandle, 'sfTransformable_getTransform');
  sfTransformable_move := GetProcAddress(LDllHandle, 'sfTransformable_move');
  sfTransformable_rotate := GetProcAddress(LDllHandle, 'sfTransformable_rotate');
  sfTransformable_scale := GetProcAddress(LDllHandle, 'sfTransformable_scale');
  sfTransformable_setOrigin := GetProcAddress(LDllHandle, 'sfTransformable_setOrigin');
  sfTransformable_setPosition := GetProcAddress(LDllHandle, 'sfTransformable_setPosition');
  sfTransformable_setRotation := GetProcAddress(LDllHandle, 'sfTransformable_setRotation');
  sfTransformable_setScale := GetProcAddress(LDllHandle, 'sfTransformable_setScale');
  sfTransparent := GetProcAddress(LDllHandle, 'sfTransparent');
  sfUdpSocket_bind := GetProcAddress(LDllHandle, 'sfUdpSocket_bind');
  sfUdpSocket_create := GetProcAddress(LDllHandle, 'sfUdpSocket_create');
  sfUdpSocket_destroy := GetProcAddress(LDllHandle, 'sfUdpSocket_destroy');
  sfUdpSocket_getLocalPort := GetProcAddress(LDllHandle, 'sfUdpSocket_getLocalPort');
  sfUdpSocket_isBlocking := GetProcAddress(LDllHandle, 'sfUdpSocket_isBlocking');
  sfUdpSocket_maxDatagramSize := GetProcAddress(LDllHandle, 'sfUdpSocket_maxDatagramSize');
  sfUdpSocket_receive := GetProcAddress(LDllHandle, 'sfUdpSocket_receive');
  sfUdpSocket_receivePacket := GetProcAddress(LDllHandle, 'sfUdpSocket_receivePacket');
  sfUdpSocket_send := GetProcAddress(LDllHandle, 'sfUdpSocket_send');
  sfUdpSocket_sendPacket := GetProcAddress(LDllHandle, 'sfUdpSocket_sendPacket');
  sfUdpSocket_setBlocking := GetProcAddress(LDllHandle, 'sfUdpSocket_setBlocking');
  sfUdpSocket_unbind := GetProcAddress(LDllHandle, 'sfUdpSocket_unbind');
  sfVertexArray_append := GetProcAddress(LDllHandle, 'sfVertexArray_append');
  sfVertexArray_clear := GetProcAddress(LDllHandle, 'sfVertexArray_clear');
  sfVertexArray_copy := GetProcAddress(LDllHandle, 'sfVertexArray_copy');
  sfVertexArray_create := GetProcAddress(LDllHandle, 'sfVertexArray_create');
  sfVertexArray_destroy := GetProcAddress(LDllHandle, 'sfVertexArray_destroy');
  sfVertexArray_getBounds := GetProcAddress(LDllHandle, 'sfVertexArray_getBounds');
  sfVertexArray_getPrimitiveType := GetProcAddress(LDllHandle, 'sfVertexArray_getPrimitiveType');
  sfVertexArray_getVertex := GetProcAddress(LDllHandle, 'sfVertexArray_getVertex');
  sfVertexArray_getVertexCount := GetProcAddress(LDllHandle, 'sfVertexArray_getVertexCount');
  sfVertexArray_resize := GetProcAddress(LDllHandle, 'sfVertexArray_resize');
  sfVertexArray_setPrimitiveType := GetProcAddress(LDllHandle, 'sfVertexArray_setPrimitiveType');
  sfVertexBuffer_bind := GetProcAddress(LDllHandle, 'sfVertexBuffer_bind');
  sfVertexBuffer_copy := GetProcAddress(LDllHandle, 'sfVertexBuffer_copy');
  sfVertexBuffer_create := GetProcAddress(LDllHandle, 'sfVertexBuffer_create');
  sfVertexBuffer_destroy := GetProcAddress(LDllHandle, 'sfVertexBuffer_destroy');
  sfVertexBuffer_getNativeHandle := GetProcAddress(LDllHandle, 'sfVertexBuffer_getNativeHandle');
  sfVertexBuffer_getPrimitiveType := GetProcAddress(LDllHandle, 'sfVertexBuffer_getPrimitiveType');
  sfVertexBuffer_getUsage := GetProcAddress(LDllHandle, 'sfVertexBuffer_getUsage');
  sfVertexBuffer_getVertexCount := GetProcAddress(LDllHandle, 'sfVertexBuffer_getVertexCount');
  sfVertexBuffer_isAvailable := GetProcAddress(LDllHandle, 'sfVertexBuffer_isAvailable');
  sfVertexBuffer_setPrimitiveType := GetProcAddress(LDllHandle, 'sfVertexBuffer_setPrimitiveType');
  sfVertexBuffer_setUsage := GetProcAddress(LDllHandle, 'sfVertexBuffer_setUsage');
  sfVertexBuffer_swap := GetProcAddress(LDllHandle, 'sfVertexBuffer_swap');
  sfVertexBuffer_update := GetProcAddress(LDllHandle, 'sfVertexBuffer_update');
  sfVertexBuffer_updateFromVertexBuffer := GetProcAddress(LDllHandle, 'sfVertexBuffer_updateFromVertexBuffer');
  sfVideoMode_getDesktopMode := GetProcAddress(LDllHandle, 'sfVideoMode_getDesktopMode');
  sfVideoMode_getFullscreenModes := GetProcAddress(LDllHandle, 'sfVideoMode_getFullscreenModes');
  sfVideoMode_isValid := GetProcAddress(LDllHandle, 'sfVideoMode_isValid');
  sfView_copy := GetProcAddress(LDllHandle, 'sfView_copy');
  sfView_create := GetProcAddress(LDllHandle, 'sfView_create');
  sfView_createFromRect := GetProcAddress(LDllHandle, 'sfView_createFromRect');
  sfView_destroy := GetProcAddress(LDllHandle, 'sfView_destroy');
  sfView_getCenter := GetProcAddress(LDllHandle, 'sfView_getCenter');
  sfView_getRotation := GetProcAddress(LDllHandle, 'sfView_getRotation');
  sfView_getSize := GetProcAddress(LDllHandle, 'sfView_getSize');
  sfView_getViewport := GetProcAddress(LDllHandle, 'sfView_getViewport');
  sfView_move := GetProcAddress(LDllHandle, 'sfView_move');
  sfView_reset := GetProcAddress(LDllHandle, 'sfView_reset');
  sfView_rotate := GetProcAddress(LDllHandle, 'sfView_rotate');
  sfView_setCenter := GetProcAddress(LDllHandle, 'sfView_setCenter');
  sfView_setRotation := GetProcAddress(LDllHandle, 'sfView_setRotation');
  sfView_setSize := GetProcAddress(LDllHandle, 'sfView_setSize');
  sfView_setViewport := GetProcAddress(LDllHandle, 'sfView_setViewport');
  sfView_zoom := GetProcAddress(LDllHandle, 'sfView_zoom');
  sfWhite := GetProcAddress(LDllHandle, 'sfWhite');
  sfWindow_close := GetProcAddress(LDllHandle, 'sfWindow_close');
  sfWindow_create := GetProcAddress(LDllHandle, 'sfWindow_create');
  sfWindow_createFromHandle := GetProcAddress(LDllHandle, 'sfWindow_createFromHandle');
  sfWindow_createUnicode := GetProcAddress(LDllHandle, 'sfWindow_createUnicode');
  sfWindow_destroy := GetProcAddress(LDllHandle, 'sfWindow_destroy');
  sfWindow_display := GetProcAddress(LDllHandle, 'sfWindow_display');
  sfWindow_getPosition := GetProcAddress(LDllHandle, 'sfWindow_getPosition');
  sfWindow_getSettings := GetProcAddress(LDllHandle, 'sfWindow_getSettings');
  sfWindow_getSize := GetProcAddress(LDllHandle, 'sfWindow_getSize');
  sfWindow_getSystemHandle := GetProcAddress(LDllHandle, 'sfWindow_getSystemHandle');
  sfWindow_hasFocus := GetProcAddress(LDllHandle, 'sfWindow_hasFocus');
  sfWindow_isOpen := GetProcAddress(LDllHandle, 'sfWindow_isOpen');
  sfWindow_pollEvent := GetProcAddress(LDllHandle, 'sfWindow_pollEvent');
  sfWindow_requestFocus := GetProcAddress(LDllHandle, 'sfWindow_requestFocus');
  sfWindow_setActive := GetProcAddress(LDllHandle, 'sfWindow_setActive');
  sfWindow_setFramerateLimit := GetProcAddress(LDllHandle, 'sfWindow_setFramerateLimit');
  sfWindow_setIcon := GetProcAddress(LDllHandle, 'sfWindow_setIcon');
  sfWindow_setJoystickThreshold := GetProcAddress(LDllHandle, 'sfWindow_setJoystickThreshold');
  sfWindow_setKeyRepeatEnabled := GetProcAddress(LDllHandle, 'sfWindow_setKeyRepeatEnabled');
  sfWindow_setMouseCursor := GetProcAddress(LDllHandle, 'sfWindow_setMouseCursor');
  sfWindow_setMouseCursorGrabbed := GetProcAddress(LDllHandle, 'sfWindow_setMouseCursorGrabbed');
  sfWindow_setMouseCursorVisible := GetProcAddress(LDllHandle, 'sfWindow_setMouseCursorVisible');
  sfWindow_setPosition := GetProcAddress(LDllHandle, 'sfWindow_setPosition');
  sfWindow_setSize := GetProcAddress(LDllHandle, 'sfWindow_setSize');
  sfWindow_setTitle := GetProcAddress(LDllHandle, 'sfWindow_setTitle');
  sfWindow_setUnicodeTitle := GetProcAddress(LDllHandle, 'sfWindow_setUnicodeTitle');
  sfWindow_setVerticalSyncEnabled := GetProcAddress(LDllHandle, 'sfWindow_setVerticalSyncEnabled');
  sfWindow_setVisible := GetProcAddress(LDllHandle, 'sfWindow_setVisible');
  sfWindow_waitEvent := GetProcAddress(LDllHandle, 'sfWindow_waitEvent');
  sfYellow := GetProcAddress(LDllHandle, 'sfYellow');
  zipClose := GetProcAddress(LDllHandle, 'zipClose');
  zipCloseFileInZip := GetProcAddress(LDllHandle, 'zipCloseFileInZip');
  zipOpen := GetProcAddress(LDllHandle, 'zipOpen');
  zipOpenNewFileInZip3 := GetProcAddress(LDllHandle, 'zipOpenNewFileInZip3');
  zipWriteInFileInZip := GetProcAddress(LDllHandle, 'zipWriteInFileInZip');
  {$ENDREGION}

end;

procedure UnloadDLL;
begin
  FreeLibrary(LDllHandle);
  DeferDelFile(LDllName);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;
  LoadDLL;

finalization
  UnloadDLL;

end.
