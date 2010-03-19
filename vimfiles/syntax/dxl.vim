" Vim syntax file
" Language:	DXL
" Maintainer:	Dariusz Synowiec
" Last Change:	

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" A bunch of useful C keywords
syn keyword	cStatement	break return continue halt
syn keyword	cLabel		case default
syn keyword	cConditional	if else switch then
syn keyword	cRepeat		while for do in by all entire top 
syn keyword	cBoolean	true false on off
		
syn keyword	cFunction	print create delete get set put insert module object folder trigger project error warn unixerror noError lastError regexp random length lower upper matches isalpha isupper islower isdigit isxdigit isgraph isalnum isspace ispunct isprint iscntrl intOf stringOf charOf realOf today session dateOf createString find current item name description type getParentProject getParentFolder path fullName refreshDBExplorer read edit share save close isRead isEdit isShare isVisible canRead baseline version exists open softDelete purge undelete isDeleted hardDelete identifier number level leaf isMember first previous parent next sibling below after before last move canDelete setSelection getSelection isSelected deselect table row cell document insertCell insertRow insertColumn tableContents toTable deleteTable target source sourceVersion targetVersion load data addLinkModuleDescriptior setLinkModuleDescriptiorsExclusive 

syn keyword	cOperator	and or sizeof sort 

syn keyword	cType		bool char int Module Object real string Trigger Folfer Project Regexp AttrDef AttrType Baseline Column Date Filter Folder Item Link LinkRef History Sort View Stat Stream null void ModuleVersion 

syn keyword	cStructure	struct union enum Array Buffer Skip 

syn keyword	dxlOpt		post modify trigPreConPass trigRunOK trigPreConFail trigError manyToMany manyToOne oneToOne oneToMany 

syn keyword	dxlDBE		DB DBE separator frame field label slider text choice radioBox verticalradioBox checkBox verticalCheckBox toggle fileName list multiList button ok apply confirm messageBox infoBox warningBox errorBox ack acknowledge tab listView canvas 

syn keyword	dxlDBEfunc	home modified noElems show hide destroy raise busy ready block release inactive active setFocus realize setPos setSize deleteColumn setCheck getCheck  getColumnValue treeView realBackground realColor font draw drawAngle width height rectangle box line ellipse polygon bitmap 

syn keyword	dxlDBEposition	left right beside opposite full spaced flush unattached aligned inside setExtraWidthShare setExtraHeightShare top form 

syn keyword	dxlDBEopt	msgInfo msgWarning msgError msgQuery listViewOptionCheckboxes listViewOptionMultiselect 

syn keyword	cStorageClass	static const

syn keyword	cPreProc	pragma

syn keyword 	keywords1  	DOORSVERSION append appendCell appendColumn appendRow AttrBase attribute canWrite centered centeredtext changeBars date doorsname drawBitmap drawLinks end exportPicture extractAfter extractBelow flushDeletions flushDeletions halt hidden history include inherit keyLeft keyname keyPageDown keyPageUp keyRight keys modules multilist Object PageLayout Permission Project refresh runLim setRegistry skeyInsert sort stack to true Views write
"
syn keyword 	keywords2	accept acceptDate acceptPartition acceptReport AccessRec addAttribute addAwayAttribute addAwayLinkModule addAwayLinkset addAwayModule addAwayView addFilter addGroup addLinkModule addLinkset addMember addMenu addModule addNotifyUser address addToolTip addUser addView all allowsAccess allWaysArrow alternative ancestors and annotation append appendCell appendColumn appendRow applyDate archive ArchiveData archiveFiles archiveItem archiveItemDescription archiveItemName archiveItemSelected archiveItemSoftDeleted archiveItemType archiveModuleItem ascending AttrBaseType attrDate attrdef attrDefItem attrDXLName attrEnumeration attribute attributeDXL attributeMenu attributeValue attrInteger attrName attrReal attrString attrText attrTypeItem attrUsername author background baselineExists baseWin batchMode Bitmap bold bottom bottomLeftArrow bottomRightArrow canControl canControlDef canControlVal canCreate canCreateDef canCreateVal canDeleteDef canDeleteVal canEdit canLock canModify canOpenFile canUnlock canWrite center centered centre cerr change changeBar changeBars changePasswordDialog changePicture char characterSet charsetAnsi charsetDefault charsetEastEurope charsetGreek charsetHebrew charsetRussian charsetSymbol charsetTurkish checkDXL childLocked cistrcmp class clear clearClipboard clearDefaultViewForModule clearDefaultViewForUser clearToolTips client clipboardIsEmpty clipboardIsTransient clipboardMenu clipClear clipClearItem clipCopy clipCopyFlatItem clipCopyHierItem clipCopyMenu clipCut clipCutItem clipLastOp clipPaste clipPasteDownItem clipPasteItem clipPasteMenu clipUndo closeFolder closeProject closeProjectItem color colorBlack colorBlue colorBrown colorCyan colorDarkTurquoise colorGreen colorGrey colorGrey77 colorGrey82 colorLightBlue colorMagenta colorMaroon colorMediumLightBlue colorOptionsItem colorOrange colorPink colorRed colorRedGrey colorWhite colorYellow colours column columnCreateItem columnDeleteItem columnEditItem columnFullJustifyItem columnLeftJustifyItem columnMenu columnRightJustifyItem columnUseAsToolTipsItem columnUseInGraphicsItem combine confAppend confCopyFile confDeleteFile confFileExists confirmPasswordDialog confMkdir confProjUser confRead confRenameFile confSysUser confTemp ConfType confWrite contents control convertFolderToProject convertProjectToFolder copy copyFile copyHier copyPassword cos createButtonBar createDescriptiveModuleItem createFormalModuleItem createLink createLinkModuleItem createPopup createProjectItem currentDirectory currentView cut cutRichText databaseManager date deleteAllMembers deleteCell deleteFile deleteGroup deleteKeyRegistry deleteLink deleteMember deleteModuleItem deleteNotifyUser deletePicture deleteProjectItem deleteRow deleteUser deleteValueRegistry descendants descending deselectItem destroyBitmap directory disabled disconnect dispDeletionItem dispFilteringItem dispFilterParentsItem dispGraphicsItem dispGraphicsLinksItem dispGraphicsToolTipsItem display dispLevel10Item dispLevel1Item dispLevel2Item dispLevel3Item dispLevel4Item dispLevel5Item dispLevel6Item dispLevel7Item dispLevel8Item dispLevel9Item dispLevelAllItem dispose dispOutlineItem dispReqOnlyItem dispSortingItem do doNothing dottedBorder down downArrow downgrade downgradeShare drawBitmap drawLinks duplicateModuleItem duplicateProjectItem editDXLItem editMenu editor editUsersItem email emailCPUpdates empty end endPrintJob enum event excludeCurrent excludeLeaves excludes existsGroup existsUser exp export exportPicture exportRTFString extractAfter extractBelow extractDownItem extractMenu extractSameItem extractSetupItem fileExists_ filter filtering filterItem filterTables findAttribute findByID findLinkset findModule findRichText findView firstNonSpace flushDeletions flushLeft flushRight folderName fontOptionsItem fontTable formal formatBMP formatDIB formatEPSF formatPNG formatUNKNOWN formatWMF getAccountsDisabled getAdministratorName getArchiveType getBoundedAttr getCanvas getCellAlignment getCellShowChangeBars getCellShowLinkArrows getCellWidth getColumnBottom getColumnTop getDatabaseIdentifier getDatabaseMailServer getDatabaseMailServerAccount getDatabaseMinimumPasswordLength getDatabaseName getDatabasePasswordRequired getDef getDefaultColorScheme getDefaultLinkModule getDefaultViewForModule getDefaultViewForUser getDescription getDisableLoginThreshold getDXLFileHelp getDXLFileName getenv getFailedLoginThreshold getFontSettings getImplied getInvalidCharInModuleName getInvalidCharInProjectName getInvalidCharInSuffix getLocksInDatabase getLocksInFolder getLocksInModule getLoginLoggingPolicy getLoginPolicy getModuleDetails getMostRecentBaseline getName getOLEPictureSave getOverridable getParent getPartitionMask getPartitionMaskDef getPartitionMaskVal getPictFormat getPictName getPictWidthHeight getPos getProjectDetails getRealColor getRealColorName getRealColorOptionForTypes getRegistry getRow getSelectedCol getSize getSortColumn getSource getSourceName getTable getTargetName getTemplateFileName getTitle getUserlistDetails getVal gluedHelp goodFileName goodStringOf graphics GraphicsFont Group GroupList groupList halt hasHeader hasInPlace hasLinks hasNoLinks hasScrollbars hasSpecificValue headerAddColumn headerChange headerEdit headerRemoveColumn headerReorder headerReset headerResize headerSelect headerSetHighlight headerShow help helpAboutItem helpContentsItem helpDescriptiveItem helpFormalItem helpHelpItem helpIndexItem helpLinkItem helpMenu helpOn helpProjManItem helpSearchItem hidden hideExplorer history HistorySession HistoryType host hostname Icon importPicture importRTF include info inherit inherited InPartition inPlaceChoice inPlaceChoiceAdd inPlaceCopy inPlaceCut inPlaceGet inplaceHeadingItem inPlaceMove inPlacePaste inplaceRejectItem inPlaceReset inplaceResetAttrItem inPlaceSet inPlaceShow inPlaceString inPlaceText inPlaceTextChange inPlaceTextFilled inPlaceTextHeight inplaceTextItem insertBitmapFromClipboard insertPictureAfter insertPictureBelow insertPictureFile insertPictureFileAfter insertPictureFileBelow instance int ipcHostname isAccessInherited isAccessInheritedDef isAccessInheritedVal isascii isAttribute isBatch isDefault isFiltered isLocked isLockedByUser isLockedClosed isNull isOutline isPartitionedOut isPartitionedOutDef isPartitionedOutVal isRanged isRichText isUsed isValidDescription isValidInt isValidName isValidPrefix isVisibleAttribute italic itemClipboardIsEmpty Justification justify key keyword layoutDXL leftAligned leftArrow leftRightArrow levelModifier link linkCreateItem linkDeleteItem linkEditItem LinkFilter linkFilterBoth linkFilterBoth linkFilterIncoming linkFilterOutgoing linkGraphicsItem linkIndicators linkMatrixItem linkMenu LinkModuleDescriptor linkset linksetCombo linksetDeleteItem linksetMenu linksetRefreshItem linkSourceItem linksVisible linkTargetItem listViewOptionCheckboxes listViewOptionMultiselect loadBitmap loadDirectory loadInPartitionDef loadUserRecord lock Lock LockList lockShare lockWrite log logical0IndicatorColor logical100IndicatorColor logical11IndicatorColor logical22IndicatorColor logical33IndicatorColor logical44IndicatorColor logical55IndicatorColor logical66IndicatorColor logical77IndicatorColor logical88IndicatorColor logicalCurrentBackgroundColor logicalCurrentCellBackgroundColor logicalCurrentObjectOutline logicalDataTextColor logicalDefaultColor logicalDeletedTextColor logicalGraphicsBackgroundColor logicalGraphicsBoxColor logicalGraphicsBoxEdgeColor logicalGraphicsCurrentColor logicalGraphicsElideBoxColor logicalGraphicsLinkColor logicalGraphicsSelectedColor logicalGraphicsShadeColor logicalGraphicsTextColor logicalGridLines logicalHighIndicatorColor logicalHighlightURLColor logicalInPlaceBackgroundColor logicalInPlaceTextColor logicalLinkCurrentBackgroundColor logicalLinkDataTextColor logicalLinkPageBackgroundColor logicalLinksInIndicatorColor logicalLinksOutIndicatorColor logicalLinkTextBackgroundColor logicalLinkTitleBackgroundColor logicalLowIndicatorColor logicalMediumIndicatorColor logicalPageBackgroundColor logicalPageBackgroundFilterColor logicalPageBackgroundFilterSortColor logicalPageBackgroundSortColor logicalPartitionInReadTextColor logicalPartitionInWriteTextColor logicalPartitionOutTextColor logicalPrintPreviewBackgroundColor logicalPrintPreviewPageColor logicalPrintPreviewShadeColor logicalPrintPreviewTextColor logicalReadOnlyTextBackgroundColor logicalReadOnlyTextColor logicalSelectedTextColor logicalTextBackgroundColor logicalTitleTextColor logicalUnlockedTextBackgroundColor logicalUser1Color logicalUser2Color login LoginPolicy main major markUp markUp match maximumAttributeLength maxValue mayArchive mayArchive mayCreateTopLevelFolders mayEditGroupList mayEditUserList mayManage mayPartition member menu menuBar menuStatus minor mkdir modAccessItem modAttrEditItem modBaselineItem modCloseItem modDowngradeItem mode modernDOORSColorScheme modHistoryItem modify modLayoutItem modPrintItem modPrintPreviewItem modSaveItem multi newPosition newValue nextMajor nextMinor nobars noBorder nochanges nohistory none Object objectMenu objEditItem objHistoryItem objLockItem objMoveDownItem objMoveItem objMoveMenu objPurgeItem objUncompressItem objUndeleteItem objUnlockMenu of off oldAbsNo oldValue oleActivate OleAutoArgs OleAutoObj OLEClearItem oleCloseAutoObject oleCopy OLECopyItem oleCreateAutoObject oleCut OLECutItem oleDeactivate oleDelete oleGet oleGetAutoObject oleGetResult oleInsert OLEInsertItem oleIsObject oleLoadBitmap oleMenu oleMethod oleOpen olePaste OLEPasteItem olePasteLink OLEPasteSpecialItem olePut OLERemoveItem oleSaveBitmap oleSetResult OLEVerbItem on openModuleEditItem openModuleReadItem openModuleShareItem openPictFile openProject openProjectItem optionsDefaultsItem optionsExist optionsMenu optionsRestoreItem optionsSaveItem or originalDOORSColorScheme outlining OutPartition page pageBottomMargin pageBreakLevel pageChangeBars pageColumns pageExpandHF pageFormat pageHeaderFooter pageHeight pageLayout PageLayout pageLeftMargin pageName pagePortrait pageRepeatTitles pageRightMargin pageSize pageTitlePage pageTOCLevel pageTOCLevel pageTopMargin pageWidth partition PartitionAttribute PartitionDefinition PartitionFile PartitionLinkset PartitionModule PartitionPermission PartitionView password passwordChanged passwordLifetime passwordMayChange passwordMinimumLength pasteDown pasteSame pasteToEditbox Permission pictureCopy pictureItem polarLine post pow pragma pre printCharArray printModule priority progressCancelled progressMessage progressRange progressStart progressStep Project projectArchiveItem projectAttrItem projectManager projectMenu projectRestoreItem purgeModuleItem purgeProjectItem putString query readFile real realColor_Black realColor_Blue realColor_Brown realColor_Cyan realColor_Dark_Turquoise realColor_Firebrick realColor_Green realColor_Grey11 realColor_Grey22 realColor_Grey33 realColor_Grey44 realColor_Grey55 realColor_Grey66 realColor_Grey77 realColor_Grey82 realColor_Light_Blue realColor_Light_Blue2 realColor_Lime_Green realColor_Magenta realColor_Maroon realColor_Navy realColor_NewGrey1 realColor_NewGrey2 realColor_NewGrey3 realColor_NewGrey4 realColor_Orange realColor_Peru realColor_Pink realColor_Purple realColor_Red realColor_Red_Grey realColor_Rosy_Brown realColor_Sea_Green realColor_Thistle realColor_White realColor_Yellow  recv redoItem refresh refreshExplorer reimportPicture reject rejoinedBy rejoinedDate rejoinPartition rejoinReport remove removeAttribute removed removeLinkModuleDescriptor removeLinkset removeModule removePartition removeUnlistedRichText removeView rename renameFile renameModuleItem replaceRichText resetColor resource resourceName restore restoreFiles restoreModule restoreModuleItem restoreProject restoreUserlist returnPartition richClip richField RichText richText run runLim saveClipboardBitmapToFile saveDirectory saveModified saveUserRecord scroll scrollDown scrollPageDown scrollPageUp scrollSet scrollToEnd scrollToHome scrollToPos scrollUp search sectionNeedsSaved select selected selectedElems selectItem send sendEMailNotification serverMonitorIsOn sessionNo setAccess setAccountsDisabled setAllCellsAlignment setAllCellsBorder setAllCellsShowChangeBars setAllCellsShowLinkArrows setAllCellsWidth setAttrFromHTML setBars setCellAlignment setCellBorder setCellShowChangeBars setCellShowLinkArrows setCellWidth setCenteredSize setColumnAlignment setColumnShowLinkArrows setColumnWidth setDatabaseMailServer setDatabaseMailServerAccount setDatabaseMinimumPasswordLength setDatabaseName setDatabasePasswordRequired setDates setDefaultColorScheme setDefaultLinkModule setDefaultViewForModule setDefaultViewForUser setDescription setDisableLoginThreshold setDXL setempty setenv setFailedLoginThreshold setFontSettings setGotFocus setGroup setHidden setHistory setImplied setInherit setLoginLoggingPolicy setLoginPolicy setLostFocus setlower setMaxValue setMinValue setModule setMulti setName setObject setOLEPictureSave setOverridable setParent setRealColor setRealColorOptionForTypes setRegistry setRichClip setRowWidth setServerMonitor setShowDescriptiveModules setShowFormalModules setShowTableAcrossModule setSortColumn setSource setTarget setTitle setUpExtraction setupper setUser shareLock showChangeBars showDeletedModulesItem showDeletedObjects showDeletedProjectsItem showDescriptiveModules showDescriptiveModulesItem showExplorer showFormalModules showFormalModulesItem showGraphicsDatatips showGraphicsLinks showing showingExplorer showLinkModules showLinkModulesItem showPictures showPrintDialogs showTables side1 side2 sin size sizeof solidBorder sort sortDescriptionItem sorting sortItem sortNameItem sortTypeItem soundex sourceAbsNo sourceIndex sourceIsListView sourceIsTreeView sourcePath spell spellCheckItem spellFix splitter sqrt stacked standard start startConfiguringMenus startPrintJob static status statusBar stopConfiguringMenus stored struct styleCentered styleFixed styleFloating styleNoBorder styleStandard suffix superscript symbolic sync system systemLoginName TableBorderPosition TableBorderStyle tan targetAbsNo targetIndex targetIsListView targetIsTreeView tempFileName Template templates textBold TextFont textItalic textStrikeThrough textUnderline timestamp title to toolBar toolBarComboAdd toolBarComboCount toolBarComboEmpty toolBarComboGetItem toolBarComboGetSelection toolBarComboSelect toolButton toolCombo toolRadio toolsMenu toolSpacer toolToggle ToolType topLeftArrow topMost topRightArrow treeView treeViewOptionSorted true typeName undeleteCell undeleteColumn undeleteModuleItem undeleteProjectItem undeleteRow undeleteTable underline undoItem undoMarkUp union uniqueID unload unlockDiscardAll unlockDiscardSection unlockModulesItem unsaved unset unsetAll unsetAllDef unsetAllVal unsetDef unsetVal up upArrow updateToolBars upDownArrow useAncestors useColumns useCurrent useDescendants useFiltering useFilterTables useGraphics useGraphicsColumn useLevel useOutlining User user useraccess UserClass UserList userList username UserNotifyList userNotifyList useSelection useShowDeleted useShowExplorer useShowLinkIndicators useShowLinks useShowPictures useShowTables useSorting useTooltipColumn useWindows value viaDOORSLogin viaSystemLogin view viewCombo ViewDef viewMenu views window write zipModuleArchive zipNotArchive zipProjectArchive ZipType zipUserListArchive
"contains - this cannot be a keyword because it already is a keyword for
"syntax file
syn keyword 	keywords3  	addRequirement alignment allSettings archiveDate archiveItemproperty arrowBox Assignment Attributes attrRef backslash backspace bars checkStringReturn checkText child clearSelection closeAction colorMap columnCenterJustifyItem columnEdit columnInsert columnRemove compound concatenated Concatenation confCreate confStream confUser controlDown copyMod createCombo createFormalMod createItem createLinkMod createLinkset createMenu createMod createObjDown createObjSame createPasswordDialog databaseId databaseName dataElement deleteAttrDef deleteData deleteLinkset deleteMod deleteObj deleteRecords DescriptiveCut DescriptiveDeleted dirname dispFilter dispFilterDescendantsItem dispGraphics dispOutline dispSort doClose doDraw doDrawing doGet doHigh doLow doQuadraticAnalysis doSplineAnalysis double dropEvent dropEventproperty dumpTable editHeading editLink editMod editText editUsers endLink entries enumEdit Enumeration extractOneDown fieldNumber folderClose FolderCut FolderDeleted folderNew folderOpen FolderOpen FolderOpenDeleted folderRef FormalCut FormalDeleted formatName forWrite fullPath functions getlogicalColorName getSettings getShowTablesAcrossModule graph group GroupDisabled header headerEvent headings includeFontTable increaseLevel initFileName inLink inPlace isFinal justifyCenter justifyFull justifyLeft justifyRight LinkCut LinkDeleted linkModDesc linkModName listSel lockColors matrixMode menuAvailable menuAvailableChecked menuIdentifier menuInvisible menuUnavailable minApplies modAttrName modName modRef moduleMenu moduleName myPageSetup None normal nullCB objActiveChart objAttrName objChart objRange objSpreadSheet objWorkbooks onActivate outLink outPartition param Parsing partAttr partDefinition partFileName Partitions partModule partView permission persistent picture placeOrder processOrders processResult projClose ProjectCut ProjectDeleted projectDescription ProjectOpen ProjectOpenDeleted projNew projOpen redraw reopened repacanv repMan returnDesc richString richStringcharset richStringrichTextProperty rowHead runFile runStr saveBitmapFromClipboard saveErrorLog scrollBar Selecting sendRID setColumnShowChangebars SetExcelCell setShowlinkModules setShowTablesAcrossModule setting shareable shareMod showDeletedModules showDeletedProjects showMarkedObjs showTable srcModName srcModRef srcModRef srcName srcObject storeFiltering storeLevel storeOutlining storeSorting sumAttrs tableCell tableCreate tableInsertCol tableInsertRow tabSelected takeAction targetAddress targetMod template tooltip toolTipCallback trendPlot undeleteMod underlined unlockSaveAll unlockSaveSection unmarked useCompress UserDisabled useShowSorting useTables viaPassword viewCreateItem viewDeleteItem viewShowItem

"syn keyword	cDXLKeyword	contained TODO FIXME XXX TBD
syn keyword	cTodo		contained TODO FIXME XXX TBD

" cCommentGroup allows adding matches for special things in comments
syn cluster	cCommentGroup	contains=cTodo

" String and Character constants
" Highlight special characters (those which have a backslash) differently
syn match	cSpecial	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
if !exists("c_no_utf")
  syn match	cSpecial	display contained "\\\(u\x\{4}\|U\x\{8}\)"
endif
if exists("c_no_cformat")
  syn region	cString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,@Spell
  " cCppString: same as cString, but ends at end of line
  syn region	cCppString	start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=cSpecial,@Spell
else
  if !exists("c_no_c99") " ISO C99
    syn match	cFormat		display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbdiuoxXDOUfFeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained
  else
    syn match	cFormat		display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlL]\|ll\)\=\([bdiuoxXDOUfeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained
  endif
  syn match	cFormat		display "%%" contained
  syn region	cString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,cFormat,@Spell
  " cCppString: same as cString, but ends at end of line
  syn region	cCppString	start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=cSpecial,cFormat,@Spell
endif

syn match	cCharacter	"L\='[^\\]'"
syn match	cCharacter	"L'[^']*'" contains=cSpecial
if exists("c_gnu")
  syn match	cSpecialError	"L\='\\[^'\"?\\abefnrtv]'"
  syn match	cSpecialCharacter "L\='\\['\"?\\abefnrtv]'"
else
  syn match	cSpecialError	"L\='\\[^'\"?\\abfnrtv]'"
  syn match	cSpecialCharacter "L\='\\['\"?\\abfnrtv]'"
endif
syn match	cSpecialCharacter display "L\='\\\o\{1,3}'"
syn match	cSpecialCharacter display "'\\x\x\{1,2}'"
syn match	cSpecialCharacter display "L'\\x\x\+'"

"when wanted, highlight trailing white space
if exists("c_space_errors")
  if !exists("c_no_trail_space_error")
    syn match	cSpaceError	display excludenl "\s\+$"
  endif
  if !exists("c_no_tab_space_error")
    syn match	cSpaceError	display " \+\t"me=e-1
  endif
endif

" This should be before cErrInParen to avoid problems with #define ({ xxx })
if exists("c_curly_error")
  syntax match cCurlyError "}"
  syntax region	cBlock		start="{" end="}" contains=ALLBUT,cCurlyError,@cParenGroup,cErrInParen,cCppParen,cErrInBracket,cCppBracket,cCppString,@Spell fold
else
  syntax region	cBlock		start="{" end="}" transparent fold
endif

"catch errors caused by wrong parenthesis and brackets
" also accept <% for {, %> for }, <: for [ and :> for ] (C99)
" But avoid matching <::.
syn cluster	cParenGroup	contains=cParenError,cIncluded,cSpecial,cCommentSkip,cCommentString,cComment2String,@cCommentGroup,cCommentStartError,cUserCont,cUserLabel,cBitField,cOctalZero,cCppOut,cCppOut2,cCppSkip,cFormat,cNumber,cFloat,cOctal,cOctalError,cNumbersCom
if exists("c_no_curly_error")
  syn region	cParen		transparent start='(' end=')' contains=ALLBUT,@cParenGroup,cCppParen,cCppString,@Spell
  " cCppParen: same as cParen but ends at end-of-line; used in cDefine
  syn region	cCppParen	transparent start='(' skip='\\$' excludenl end=')' end='$' contained contains=ALLBUT,@cParenGroup,cParen,cString,@Spell
  syn match	cParenError	display ")"
  syn match	cErrInParen	display contained "^[{}]\|^<%\|^%>"
elseif exists("c_no_bracket_error")
  syn region	cParen		transparent start='(' end=')' contains=ALLBUT,@cParenGroup,cCppParen,cCppString,@Spell
  " cCppParen: same as cParen but ends at end-of-line; used in cDefine
  syn region	cCppParen	transparent start='(' skip='\\$' excludenl end=')' end='$' contained contains=ALLBUT,@cParenGroup,cParen,cString,@Spell
  syn match	cParenError	display ")"
  syn match	cErrInParen	display contained "[{}]\|<%\|%>"
else
  syn region	cParen		transparent start='(' end=')' contains=ALLBUT,@cParenGroup,cCppParen,cErrInBracket,cCppBracket,cCppString,@Spell
  " cCppParen: same as cParen but ends at end-of-line; used in cDefine
  syn region	cCppParen	transparent start='(' skip='\\$' excludenl end=')' end='$' contained contains=ALLBUT,@cParenGroup,cErrInBracket,cParen,cBracket,cString,@Spell
  syn match	cParenError	display "[\])]"
  syn match	cErrInParen	display contained "[\]{}]\|<%\|%>"
  syn region	cBracket	transparent start='\[\|<::\@!' end=']\|:>' contains=ALLBUT,@cParenGroup,cErrInParen,cCppParen,cCppBracket,cCppString,@Spell
  " cCppBracket: same as cParen but ends at end-of-line; used in cDefine
  syn region	cCppBracket	transparent start='\[\|<::\@!' skip='\\$' excludenl end=']\|:>' end='$' contained contains=ALLBUT,@cParenGroup,cErrInParen,cParen,cBracket,cString,@Spell
  syn match	cErrInBracket	display contained "[);{}]\|<%\|%>"
endif

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match	cNumbers	display transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctalError,cOctal
" Same, but without octal error (for comments)
syn match	cNumbersCom	display contained transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctal
syn match	cNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
"hex number
syn match	cNumber		display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
" Flag the first zero of an octal number as something special
syn match	cOctal		display contained "0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero
syn match	cOctalZero	display contained "\<0"
syn match	cFloat		display contained "\d\+f"
"floating point number, with dot, optional exponent
syn match	cFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match	cFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match	cFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"
if !exists("c_no_c99")
  "hexadecimal floating point number, optional leading digits, with dot, with exponent
  syn match	cFloat		display contained "0x\x*\.\x\+p[-+]\=\d\+[fl]\=\>"
  "hexadecimal floating point number, with leading digits, optional dot, with exponent
  syn match	cFloat		display contained "0x\x\+\.\=p[-+]\=\d\+[fl]\=\>"
endif

" flag an octal number with wrong digits
syn match	cOctalError	display contained "0\o*[89]\d*"
syn case match

if exists("c_comment_strings")
  " A comment can contain cString, cCharacter and cNumber.
  " But a "*/" inside a cString in a cComment DOES end the comment!  So we
  " need to use a special type of cString: cCommentString, which also ends on
  " "*/", and sees a "*" at the start of the line as comment again.
  " Unfortunately this doesn't very well work for // type of comments :-(
  syntax match	cCommentSkip	contained "^\s*\*\($\|\s\+\)"
  syntax region cCommentString	contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=cSpecial,cCommentSkip
  syntax region cComment2String	contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end="$" contains=cSpecial
  syntax region  cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cComment2String,cCharacter,cNumbersCom,cSpaceError,@Spell
  if exists("c_no_comment_fold")
    " Use "extend" here to have preprocessor lines not terminate halfway a
    " comment.
    syntax region cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell extend
  else
    syntax region cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell fold extend
  endif
else
  syn region	cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cSpaceError,@Spell
  if exists("c_no_comment_fold")
    syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell extend
  else
    syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell fold extend
  endif
endif
" keep a // comment separately, it terminates a preproc. conditional
syntax match	cCommentError	display "\*/"
syntax match	cCommentStartError display "/\*"me=e-1 contained

syn keyword	cOperator	sizeof
if exists("c_gnu")
  syn keyword	cOperator	typeof __real__ __imag__
endif
syn keyword	cType		int long short char void
syn keyword	cType		signed unsigned float double
if !exists("c_no_ansi") || exists("c_ansi_typedefs")
  syn keyword   cType		size_t ssize_t off_t wchar_t ptrdiff_t sig_atomic_t fpos_t
  syn keyword   cType		clock_t time_t va_list jmp_buf FILE DIR div_t ldiv_t
  syn keyword   cType		mbstate_t wctrans_t wint_t wctype_t
endif
if !exists("c_no_c99") " ISO C99
  syn keyword	cType		bool complex
  syn keyword	cType		int8_t int16_t int32_t int64_t
  syn keyword	cType		uint8_t uint16_t uint32_t uint64_t
  syn keyword	cType		int_least8_t int_least16_t int_least32_t int_least64_t
  syn keyword	cType		uint_least8_t uint_least16_t uint_least32_t uint_least64_t
  syn keyword	cType		int_fast8_t int_fast16_t int_fast32_t int_fast64_t
  syn keyword	cType		uint_fast8_t uint_fast16_t uint_fast32_t uint_fast64_t
  syn keyword	cType		intptr_t uintptr_t
  syn keyword	cType		intmax_t uintmax_t
endif
if exists("c_gnu")
  syn keyword	cType		__label__ __complex__ __volatile__
endif

syn keyword	cStructure	struct union enum typedef
syn keyword	cStorageClass	static register auto volatile extern const
if exists("c_gnu")
  syn keyword	cStorageClass	inline __attribute__
endif
if !exists("c_no_c99")
  syn keyword	cStorageClass	inline restrict
endif

if !exists("c_no_ansi") || exists("c_ansi_constants") || exists("c_gnu")
  if exists("c_gnu")
    syn keyword cConstant __GNUC__ __FUNCTION__ __PRETTY_FUNCTION__ __func__
  endif
  syn keyword cConstant __LINE__ __FILE__ __DATE__ __TIME__ __STDC__
  syn keyword cConstant __STDC_VERSION__
  syn keyword cConstant CHAR_BIT MB_LEN_MAX MB_CUR_MAX
  syn keyword cConstant UCHAR_MAX UINT_MAX ULONG_MAX USHRT_MAX
  syn keyword cConstant CHAR_MIN INT_MIN LONG_MIN SHRT_MIN
  syn keyword cConstant CHAR_MAX INT_MAX LONG_MAX SHRT_MAX
  syn keyword cConstant SCHAR_MIN SINT_MIN SLONG_MIN SSHRT_MIN
  syn keyword cConstant SCHAR_MAX SINT_MAX SLONG_MAX SSHRT_MAX
  if !exists("c_no_c99")
    syn keyword cConstant __func__
    syn keyword cConstant LLONG_MIN LLONG_MAX ULLONG_MAX
    syn keyword cConstant INT8_MIN INT16_MIN INT32_MIN INT64_MIN
    syn keyword cConstant INT8_MAX INT16_MAX INT32_MAX INT64_MAX
    syn keyword cConstant UINT8_MAX UINT16_MAX UINT32_MAX UINT64_MAX
    syn keyword cConstant INT_LEAST8_MIN INT_LEAST16_MIN INT_LEAST32_MIN INT_LEAST64_MIN
    syn keyword cConstant INT_LEAST8_MAX INT_LEAST16_MAX INT_LEAST32_MAX INT_LEAST64_MAX
    syn keyword cConstant UINT_LEAST8_MAX UINT_LEAST16_MAX UINT_LEAST32_MAX UINT_LEAST64_MAX
    syn keyword cConstant INT_FAST8_MIN INT_FAST16_MIN INT_FAST32_MIN INT_FAST64_MIN
    syn keyword cConstant INT_FAST8_MAX INT_FAST16_MAX INT_FAST32_MAX INT_FAST64_MAX
    syn keyword cConstant UINT_FAST8_MAX UINT_FAST16_MAX UINT_FAST32_MAX UINT_FAST64_MAX
    syn keyword cConstant INTPTR_MIN INTPTR_MAX UINTPTR_MAX
    syn keyword cConstant INTMAX_MIN INTMAX_MAX UINTMAX_MAX
    syn keyword cConstant PTRDIFF_MIN PTRDIFF_MAX SIG_ATOMIC_MIN SIG_ATOMIC_MAX
    syn keyword cConstant SIZE_MAX WCHAR_MIN WCHAR_MAX WINT_MIN WINT_MAX
  endif
  syn keyword cConstant FLT_RADIX FLT_ROUNDS
  syn keyword cConstant FLT_DIG FLT_MANT_DIG FLT_EPSILON
  syn keyword cConstant DBL_DIG DBL_MANT_DIG DBL_EPSILON
  syn keyword cConstant LDBL_DIG LDBL_MANT_DIG LDBL_EPSILON
  syn keyword cConstant FLT_MIN FLT_MAX FLT_MIN_EXP FLT_MAX_EXP
  syn keyword cConstant FLT_MIN_10_EXP FLT_MAX_10_EXP
  syn keyword cConstant DBL_MIN DBL_MAX DBL_MIN_EXP DBL_MAX_EXP
  syn keyword cConstant DBL_MIN_10_EXP DBL_MAX_10_EXP
  syn keyword cConstant LDBL_MIN LDBL_MAX LDBL_MIN_EXP LDBL_MAX_EXP
  syn keyword cConstant LDBL_MIN_10_EXP LDBL_MAX_10_EXP
  syn keyword cConstant HUGE_VAL CLOCKS_PER_SEC NULL
  syn keyword cConstant LC_ALL LC_COLLATE LC_CTYPE LC_MONETARY
  syn keyword cConstant LC_NUMERIC LC_TIME
  syn keyword cConstant SIG_DFL SIG_ERR SIG_IGN
  syn keyword cConstant SIGABRT SIGFPE SIGILL SIGHUP SIGINT SIGSEGV SIGTERM
  " Add POSIX signals as well...
  syn keyword cConstant SIGABRT SIGALRM SIGCHLD SIGCONT SIGFPE SIGHUP
  syn keyword cConstant SIGILL SIGINT SIGKILL SIGPIPE SIGQUIT SIGSEGV
  syn keyword cConstant SIGSTOP SIGTERM SIGTRAP SIGTSTP SIGTTIN SIGTTOU
  syn keyword cConstant SIGUSR1 SIGUSR2
  syn keyword cConstant _IOFBF _IOLBF _IONBF BUFSIZ EOF WEOF
  syn keyword cConstant FOPEN_MAX FILENAME_MAX L_tmpnam
  syn keyword cConstant SEEK_CUR SEEK_END SEEK_SET
  syn keyword cConstant TMP_MAX stderr stdin stdout
  syn keyword cConstant EXIT_FAILURE EXIT_SUCCESS RAND_MAX
  " Add POSIX errors as well
  syn keyword cConstant E2BIG EACCES EAGAIN EBADF EBADMSG EBUSY
  syn keyword cConstant ECANCELED ECHILD EDEADLK EDOM EEXIST EFAULT
  syn keyword cConstant EFBIG EILSEQ EINPROGRESS EINTR EINVAL EIO EISDIR
  syn keyword cConstant EMFILE EMLINK EMSGSIZE ENAMETOOLONG ENFILE ENODEV
  syn keyword cConstant ENOENT ENOEXEC ENOLCK ENOMEM ENOSPC ENOSYS
  syn keyword cConstant ENOTDIR ENOTEMPTY ENOTSUP ENOTTY ENXIO EPERM
  syn keyword cConstant EPIPE ERANGE EROFS ESPIPE ESRCH ETIMEDOUT EXDEV
  " math.h
  syn keyword cConstant M_E M_LOG2E M_LOG10E M_LN2 M_LN10 M_PI M_PI_2 M_PI_4
  syn keyword cConstant M_1_PI M_2_PI M_2_SQRTPI M_SQRT2 M_SQRT1_2
endif
if !exists("c_no_c99") " ISO C99
  syn keyword cConstant true false
endif

" Accept %: for # (C99)
syn region	cPreCondit	start="^\s*\(%:\|#\)\s*\(if\|ifdef\|ifndef\|elif\)\>" skip="\\$" end="$" end="//"me=s-1 contains=cComment,cCppString,cCharacter,cCppParen,cParenError,cNumbers,cCommentError,cSpaceError
syn match	cPreCondit	display "^\s*\(%:\|#\)\s*\(else\|endif\)\>"
if !exists("c_no_if0")
  if !exists("c_no_if0_fold")
    syn region	cCppOut		start="^\s*\(%:\|#\)\s*if\s\+0\+\>" end=".\@=\|$" contains=cCppOut2 fold
  else
    syn region	cCppOut		start="^\s*\(%:\|#\)\s*if\s\+0\+\>" end=".\@=\|$" contains=cCppOut2
  endif
  syn region	cCppOut2	contained start="0" end="^\s*\(%:\|#\)\s*\(endif\>\|else\>\|elif\>\)" contains=cSpaceError,cCppSkip
  syn region	cCppSkip	contained start="^\s*\(%:\|#\)\s*\(if\>\|ifdef\>\|ifndef\>\)" skip="\\$" end="^\s*\(%:\|#\)\s*endif\>" contains=cSpaceError,cCppSkip
endif
syn region	cIncluded	display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match	cIncluded	display contained "<[^>]*>"
syn match	cInclude	display "^\s*\(%:\|#\)\s*include\>\s*["<]" contains=cIncluded
"syn match cLineSkip	"\\$"
syn cluster	cPreProcGroup	contains=cPreCondit,cIncluded,cInclude,cDefine,cErrInParen,cErrInBracket,cUserLabel,cSpecial,cOctalZero,cCppOut,cCppOut2,cCppSkip,cFormat,cNumber,cFloat,cOctal,cOctalError,cNumbersCom,cString,cCommentSkip,cCommentString,cComment2String,@cCommentGroup,cCommentStartError,cParen,cBracket,cMulti
syn region	cDefine		start="^\s*\(%:\|#\)\s*\(define\|undef\)\>" skip="\\$" end="$" end="//"me=s-1 keepend contains=ALLBUT,@cPreProcGroup,@Spell
syn region	cPreProc	start="^\s*\(%:\|#\)\s*\(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$" keepend contains=ALLBUT,@cPreProcGroup,@Spell

" Highlight User Labels
syn cluster	cMultiGroup	contains=cIncluded,cSpecial,cCommentSkip,cCommentString,cComment2String,@cCommentGroup,cCommentStartError,cUserCont,cUserLabel,cBitField,cOctalZero,cCppOut,cCppOut2,cCppSkip,cFormat,cNumber,cFloat,cOctal,cOctalError,cNumbersCom,cCppParen,cCppBracket,cCppString
syn region	cMulti		transparent start='?' skip='::' end=':' contains=ALLBUT,@cMultiGroup,@Spell
" Avoid matching foo::bar() in C++ by requiring that the next char is not ':'
syn cluster	cLabelGroup	contains=cUserLabel
syn match	cUserCont	display "^\s*\I\i*\s*:$" contains=@cLabelGroup
syn match	cUserCont	display ";\s*\I\i*\s*:$" contains=@cLabelGroup
syn match	cUserCont	display "^\s*\I\i*\s*:[^:]"me=e-1 contains=@cLabelGroup
syn match	cUserCont	display ";\s*\I\i*\s*:[^:]"me=e-1 contains=@cLabelGroup

syn match	cUserLabel	display "\I\i*" contained

" Avoid recognizing most bitfields as labels
syn match	cBitField	display "^\s*\I\i*\s*:\s*[1-9]"me=e-1 contains=cType
syn match	cBitField	display ";\s*\I\i*\s*:\s*[1-9]"me=e-1 contains=cType

if exists("c_minlines")
  let b:c_minlines = c_minlines
else
  if !exists("c_no_if0")
    let b:c_minlines = 50	" #if 0 constructs can be long
  else
    let b:c_minlines = 15	" mostly for () constructs
  endif
endif
if exists("c_curly_error")
  syn sync fromstart
else
  exec "syn sync ccomment cComment minlines=" . b:c_minlines
endif

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link cFormat		cSpecial
hi def link cCppString		cString
hi def link cCommentL		cComment
hi def link cCommentStart	cComment
hi def link cLabel		Label
hi def link cUserLabel		Label
hi def link cConditional	Conditional
hi def link cRepeat		Repeat
hi def link cCharacter		Character
hi def link cSpecialCharacter	cSpecial
hi def link cNumber		Number
hi def link cOctal		Number
hi def link cOctalZero		PreProc	 " link this to Error if you want
hi def link cFloat		Float
hi def link cOctalError		cError
hi def link cParenError		cError
hi def link cErrInParen		cError
hi def link cErrInBracket	cError
hi def link cCommentError	cError
hi def link cCommentStartError	cError
hi def link cSpaceError		cError
hi def link cSpecialError	cError
hi def link cCurlyError		cError
hi def link cOperator		Operator
hi def link cStructure		Structure
hi def link cStorageClass	StorageClass
hi def link cInclude		Include
hi def link cPreProc		PreProc
hi def link cDefine		Macro
hi def link cIncluded		cString
hi def link cError		Error
hi def link cStatement		Statement
hi def link cPreCondit		PreCondit
hi def link cType		Type
hi def link cConstant		Constant
hi def link cCommentString	cString
hi def link cComment2String	cString
hi def link cCommentSkip	cComment
hi def link cString		String
hi def link cComment		Comment
hi def link cSpecial		SpecialChar
hi def link cTodo		Todo
hi def link cCppSkip		cCppOut
hi def link cCppOut2		cCppOut
hi def link cCppOut		Comment
hi def link keywords0		Statement
hi def link keywords1		Conditional
hi def link keywords2		Constant
hi def link keywords3		Structure
hi def link cFunction 		Function

let b:current_syntax = "c"

" vim: ts=8
