'From Cuis7.5 [latest update: #7526] on 7 September 2025 at 12:44:16 pm'!
'Description Implementation of classic text-based games, based on the listings from the Computer Space Games magazine.'!
!provides: 'ComputerSpaceGames' 1 3!
SystemOrganization addCategory: #'ComputerSpaceGames-Model'!
SystemOrganization addCategory: #'ComputerSpaceGames-View'!
SystemOrganization addCategory: #'ComputerSpaceGames-Presenter'!


!classDefinition: #EvilAlien category: #'ComputerSpaceGames-Model'!
Object subclass: #EvilAlien
	instanceVariableNames: 'maxAttempts attempts gridSize elronPositionX elronPositionY elronDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Model'!
!classDefinition: 'EvilAlien class' category: #'ComputerSpaceGames-Model'!
EvilAlien class
	instanceVariableNames: ''!

!classDefinition: #IntergalacticGames category: #'ComputerSpaceGames-Model'!
Object subclass: #IntergalacticGames
	instanceVariableNames: 'maxAttempts attempts height'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Model'!
!classDefinition: 'IntergalacticGames class' category: #'ComputerSpaceGames-Model'!
IntergalacticGames class
	instanceVariableNames: ''!

!classDefinition: #Moonlander category: #'ComputerSpaceGames-Model'!
Object subclass: #Moonlander
	instanceVariableNames: 'time height velocity fuel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Model'!
!classDefinition: 'Moonlander class' category: #'ComputerSpaceGames-Model'!
Moonlander class
	instanceVariableNames: ''!

!classDefinition: #StarshipTakeOff category: #'ComputerSpaceGames-Model'!
Object subclass: #StarshipTakeOff
	instanceVariableNames: 'gravity weight secretNumber maxAttempts attempts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Model'!
!classDefinition: 'StarshipTakeOff class' category: #'ComputerSpaceGames-Model'!
StarshipTakeOff class
	instanceVariableNames: ''!

!classDefinition: #EvilAlienPresenter category: #'ComputerSpaceGames-Presenter'!
Object subclass: #EvilAlienPresenter
	instanceVariableNames: 'model view xPosition yPosition distance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Presenter'!
!classDefinition: 'EvilAlienPresenter class' category: #'ComputerSpaceGames-Presenter'!
EvilAlienPresenter class
	instanceVariableNames: ''!

!classDefinition: #IntergalacticGamesPresenter category: #'ComputerSpaceGames-Presenter'!
Object subclass: #IntergalacticGamesPresenter
	instanceVariableNames: 'model view angle speed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Presenter'!
!classDefinition: 'IntergalacticGamesPresenter class' category: #'ComputerSpaceGames-Presenter'!
IntergalacticGamesPresenter class
	instanceVariableNames: ''!

!classDefinition: #MoonlanderPresenter category: #'ComputerSpaceGames-Presenter'!
Object subclass: #MoonlanderPresenter
	instanceVariableNames: 'model view'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Presenter'!
!classDefinition: 'MoonlanderPresenter class' category: #'ComputerSpaceGames-Presenter'!
MoonlanderPresenter class
	instanceVariableNames: ''!

!classDefinition: #StarshipTakeOffPresenter category: #'ComputerSpaceGames-Presenter'!
Object subclass: #StarshipTakeOffPresenter
	instanceVariableNames: 'model view'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-Presenter'!
!classDefinition: 'StarshipTakeOffPresenter class' category: #'ComputerSpaceGames-Presenter'!
StarshipTakeOffPresenter class
	instanceVariableNames: ''!

!classDefinition: #ClassicGameModelMorph category: #'ComputerSpaceGames-View'!
TextModelMorph subclass: #ClassicGameModelMorph
	instanceVariableNames: 'presenter inputBuffer promptString consoleText'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-View'!
!classDefinition: 'ClassicGameModelMorph class' category: #'ComputerSpaceGames-View'!
ClassicGameModelMorph class
	instanceVariableNames: ''!

!classDefinition: #ClassicGameView category: #'ComputerSpaceGames-View'!
SystemWindow subclass: #ClassicGameView
	instanceVariableNames: 'presenter textModelMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-View'!
!classDefinition: 'ClassicGameView class' category: #'ComputerSpaceGames-View'!
ClassicGameView class
	instanceVariableNames: ''!

!classDefinition: #ClassicGameInnerTextMorph category: #'ComputerSpaceGames-View'!
InnerTextMorph subclass: #ClassicGameInnerTextMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ComputerSpaceGames-View'!
!classDefinition: 'ClassicGameInnerTextMorph class' category: #'ComputerSpaceGames-View'!
ClassicGameInnerTextMorph class
	instanceVariableNames: ''!


!EvilAlien methodsFor: 'initialization' stamp: 'tsl 9/2/2025 16:45:12'!
initialize
	super initialize.
	maxAttempts := 4.
	gridSize := 10.
	self reset.! !

!EvilAlien methodsFor: 'initialization' stamp: 'tsl 9/2/2025 16:20:21'!
initializeElronPosition
	elronPositionX := 0 to: gridSize -1  :: atRandom.
	elronPositionY := 0 to: gridSize -1  :: atRandom.
	elronDistance := 0 to: gridSize -1  :: atRandom.! !

!EvilAlien methodsFor: 'initialization' stamp: 'tsl 9/2/2025 16:21:03'!
reset
	attempts := 0.
	self initializeElronPosition 
	! !

!EvilAlien methodsFor: 'accessing' stamp: 'tsl 9/2/2025 16:21:51'!
attemptsLeft
	^ maxAttempts  - attempts! !

!EvilAlien methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:44:46'!
checkXPosition: xPosition yPosition: yPosition distance: distance
	attempts := attempts + 1.
	(elronPositionX = xPosition and: [elronPositionY = yPosition] and:[ elronDistance = distance])
		ifTrue: [ ^ #correct. ].

	attempts >= maxAttempts ifTrue: [ ^ #gameOver ].
	yPosition > elronPositionY ifTrue: [ ^ #north. ].
	yPosition < elronPositionY ifTrue: [ ^ #south. ].
	xPosition > elronPositionX ifTrue: [ ^ #east. ].
	xPosition < elronPositionX ifTrue: [ ^ #west. ].
	distance > elronDistance ifTrue: [ ^ #tooFar. ].
	distance < elronDistance ifTrue: [ ^ #notFarEnough ].! !

!EvilAlien class methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:46:10'!
gameDescription
	"Computer Space Games, page 8"
	^ 'Somewhere beneath you, in deepest, blackest space, lurks Elron, the Evil Alien. You have managed to deactivate all but his short-range weapons but he can still make his ship invisible.
You know he is somewhere within the three-dimensional grid you can see on your ship''s screen, but where?
You have four space bombs. Each one can explode at a position in the grid specified by three numbers between 0 and 9, wich your computer will ask you for. Can you blast the Evil Elron out of space before he creeps up and captures you?
9-----------  (north)
  |---------- |
  |  |-------- | |
  |  |  |------|  | |
  |  |  |  | --- |  |  | |
  |  |  |  |  |    |  |  |  | |   y position
  |  |  |  |  |9  |  |  |  | |
  |  |  |  | --- |  |  | |
  |  |  | -----  |  | |
  |  | -------   | |
  |  - -------- |
0-----------9  (south)
(west)   x position        (east)'! !

!IntergalacticGames methodsFor: 'initialization' stamp: 'tsl 9/2/2025 16:59:33'!
initialize
	super initialize.
	maxAttempts := 8.
	self reset.! !

!IntergalacticGames methodsFor: 'initialization' stamp: 'tsl 8/31/2025 18:31:29'!
reset
	attempts := 0.
	height :=  1 + (1 to: 100  :: atRandom).! !

!IntergalacticGames methodsFor: 'accessing' stamp: 'tsl 8/31/2025 18:32:33'!
attemptsLeft
	^ maxAttempts  - attempts! !

!IntergalacticGames methodsFor: 'accessing' stamp: 'tsl 8/31/2025 18:48:29'!
height
	^ height! !

!IntergalacticGames methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:42:13'!
checkLaunchAngle: angle speed: speed
	| angleResult speedResult |
	attempts := attempts + 1.
	angleResult := angle - ((height/3) arcTan * 180 / Float pi).
	speedResult := speed - (3000 *  (height + (1/height)) sqrt).

	(angleResult abs < 2 and: [ speedResult abs < 100]) ifTrue: [ ^ #correct ].
	attempts >= maxAttempts ifTrue: [ ^ #gameOver ].
	angleResult < -2 ifTrue: [ ^ #tooShalow ].
	angleResult > 2 ifTrue: [ ^ #tooSteep ].
	speedResult < -100 ifTrue: [ ^ #tooSlow ].
	speedResult > 100 ifTrue: [ ^ #tooFast ].! !

!IntergalacticGames class methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 15:54:03'!
gameDescription
	"Computer Space Games, page 6"
	^ 'There is fierce competition among the world''s TV companies for exclusive coverage of the First Intergalactic Games. Everything depends on wich company wins the race to put satellite into orbit at right height.
You are Engineer in charge of the launch for new Century TV. The crucial decisions about the angle and speed of the launching rocket rests on yout shoulders.
Can you do it?'! !

!Moonlander methodsFor: 'initialization' stamp: 'tsl 9/7/2025 12:14:33'!
initialize
	super initialize.
	time := 0.
	height := 500.
	velocity := 50.
	fuel := 120.! !

!Moonlander methodsFor: 'initialization' stamp: 'tsl 9/7/2025 12:19:13'!
reset
	self initialize ! !

!Moonlander methodsFor: 'accessing' stamp: 'tsl 9/7/2025 11:29:09'!
fuel
	^fuel! !

!Moonlander methodsFor: 'accessing' stamp: 'tsl 9/7/2025 11:29:25'!
height
	^height ! !

!Moonlander methodsFor: 'accessing' stamp: 'tsl 9/7/2025 11:29:00'!
time
	^time! !

!Moonlander methodsFor: 'accessing' stamp: 'tsl 9/7/2025 11:29:15'!
velocity
	^velocity! !

!Moonlander methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:40:28'!
burn: aNumber
	| b v1 |
	b := aNumber.

	fuel = 0 ifFalse: [
		b < 0 ifTrue: [ b := 0].
		b > 30 ifTrue: [ b := 30]].
	b > fuel ifTrue: [ b := fuel].

	v1 := velocity - b + 5.
	fuel := fuel - b.
	(v1 + velocity / 2) >= height ifFalse: [
		height := height - (v1 + velocity / 2).
		time := time + 1.
		velocity := v1.
		^ #continue].
	v1 := velocity + ((5-b) * height  / velocity).
	v1 > 5 ifTrue: [ ^#crash].
	v1 > 1 ifTrue: [ ^#okButSomeInjuries].
	v1 <= 1 ifTrue: [ ^#goodLanding].
	! !

!Moonlander class methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:14:07'!
gameDescription
	"Computer Space Games, page 12"
	^ 'You are at the controls os a lunar module wich is taking a small team os astronauts down to the moon''s surface. In order to land safely you must slow down your descent, but that takes fuel and you have only a limited supply.
Your computer will tell you your starting height, speed and fuel supply and ask how much fuel you wish to burn. It will then work out your new height and speed. A burn of 5 will keep your speed constant. A higher number will reduce it. Can you land safely on the moon?'! !

!StarshipTakeOff methodsFor: 'initialization' stamp: 'tsl 8/28/2025 13:10:38'!
initialize
	super initialize.
	maxAttempts := 10.
	self reset.! !

!StarshipTakeOff methodsFor: 'initialization' stamp: 'tsl 8/28/2025 13:44:26'!
reset
	attempts := 0.
	gravity := 1 to: 20 :: atRandom.
	weight := 1 to: 40 :: atRandom.
	secretNumber := gravity * weight.! !

!StarshipTakeOff methodsFor: 'accessing' stamp: 'tsl 8/28/2025 13:15:11'!
attemptsLeft
	^ maxAttempts  - attempts! !

!StarshipTakeOff methodsFor: 'accessing' stamp: 'tsl 8/28/2025 13:34:50'!
gravity
	^ gravity ! !

!StarshipTakeOff methodsFor: 'accessing' stamp: 'tsl 8/28/2025 13:16:05'!
secretNumber
	^ secretNumber! !

!StarshipTakeOff methodsFor: 'as yet unclassified' stamp: 'tsl 8/28/2025 13:24:19'!
checkGuess: aNumber
	attempts := attempts + 1.
	aNumber = secretNumber ifTrue: [ ^ #correct ].
	attempts >= maxAttempts ifTrue: [ ^ #gameOver ].
	aNumber < secretNumber ifTrue: [ ^ #tooLow ].
	 ^ #tooHigh.! !

!StarshipTakeOff class methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 15:54:28'!
gameDescription
	"Computer Space Games, page 4"
	^ 'You are a starship captain. You have crashed your ship on a strange planet and must take off again quickly in the alien ship you have captured. The ship''s computer tells you the gravity on the planet.'! !

!EvilAlienPresenter methodsFor: 'initialization' stamp: 'tsl 9/2/2025 16:27:52'!
initialize
	super initialize.
	model := EvilAlien new.
	view := ClassicGameView presenter: self.
	view setLabel: 'EVIL ALIEN'.
	view openInWorld.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 17:44:15'!
handleInput: aString
	| number result |
	number := [aString asNumber] 
		on: Error do: [
			self showMessage: 'Invalid input. Please enter a number.'.
			^ view newPrompt ].

	(number > 9 or:[ number < 0]) ifTrue: [
		self showMessage: 'Invalid number.'.
		^ view newPrompt ].

	xPosition isNil ifTrue: [
		xPosition := number.
		self showRequestYPositionMessage.
		^ view newPrompt ].

	yPosition isNil ifTrue: [
		yPosition := number.
		self showRequestDistanceMessage .
		^ view newPrompt ].

	distance := number.

	result := model checkXPosition: xPosition yPosition: yPosition distance: distance.

	result caseOf: {
		[#correct] -> [ 
			self showMessage: '*Boom* you got him!!'.
			self showMessage: ''.
			self restart. ].
		[#north]  -> [ 
			self showMessage: 'North.'.
			self restartInputs.
			self showRequestXPositionMessage.
			view newPrompt ].
		[#south] -> [ 
			self showMessage: 'South.'.
			self restartInputs.
			self showRequestXPositionMessage.
			view newPrompt ].
		[#east] -> [ 
			self showMessage: 'East.'.
			self restartInputs.
			self showRequestXPositionMessage.
			view newPrompt ].
		[#west] -> [ 
			self showMessage: 'West.'.
			self restartInputs.
			self showRequestXPositionMessage.
			view newPrompt ].
		[#tooFar] -> [ 
			self showMessage: 'Too far.'.
			self restartInputs.
			self showRequestXPositionMessage.
			view newPrompt ].
		[#notFarEnough] -> [ 
			self showMessage: 'Not far enough.'.
			self restartInputs.
			self showRequestXPositionMessage.
			view newPrompt ].
		[#gameOver] -> [ 
			self showMessage: 'Your time has run out'.
			self showMessage: ''.
			self restart ] .
	}.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:34:23'!
restart
	model reset.
	self restartInputs.
	self showRequestXPositionMessage.
	view newPrompt.
	view openInWorld.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 17:43:42'!
restartInputs.
	distance := nil.
	xPosition := nil.
	yPosition := nil.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:28:14'!
showMessage: aMessage
	view showMessage: aMessage.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:33:08'!
showRequestDistanceMessage
	self showMessage: 'Distance (0 to 9) ?'.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:32:42'!
showRequestXPositionMessage
	self showMessage: 'X position (0 to 9) ?'.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:32:51'!
showRequestYPositionMessage
	self showMessage: 'Y position (0 to 9) ?'.! !

!EvilAlienPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:33:27'!
start
	self showMessage: model class gameDescription.
	self showRequestXPositionMessage.
	view newPrompt.
	view openInWorld.! !

!IntergalacticGamesPresenter methodsFor: 'initialization' stamp: 'tsl 8/31/2025 18:43:17'!
initialize
	super initialize.
	model := IntergalacticGames new.
	view := ClassicGameView presenter: self.
	view setLabel: 'INTERGALACTIC GAMES'.
	view openInWorld.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:48:37'!
handleInput: aString
	| number result |
	number := [aString asNumber] 
		on: Error do: [
			self showMessage: 'Invalid input. Please enter a number.'.
			^ view newPrompt ].
	
	angle isNil ifTrue: [
		(number > 90 or:[ number < 0]) ifTrue: [
			self showMessage: 'Invalid angle.'.
			^ view newPrompt 
			].
		angle := number.
		self showRequestSpeedMessage.
		^ view newPrompt ].

	(number > 40000 or:[ number < 0]) ifTrue: [
			self showMessage: 'Invalid speed.'.
			^ view newPrompt 
			].
	speed := number.

	result := model checkLaunchAngle: angle speed: speed.

	result caseOf: {
		[#correct] -> [ 
			self showMessage: 'You''ve done it.'.
			self showMessage: 'NCTV wins - thanks to you'.
			self showMessage: ''.
			self restart. ].
		[#tooShalow]  -> [ 
			self showMessage: 'Too shalow.'.
			self restartInputs.
			self showRequestAngleMessage.
			view newPrompt ].
		[#tooSteep] -> [ 
			self showMessage: 'Too steep.'.
			self restartInputs.
			self showRequestAngleMessage.
			view newPrompt ].
		[#tooSlow] -> [ 
			self showMessage: 'Too slow.'.
			self restartInputs.
			self showRequestAngleMessage.
			view newPrompt ].
		[#tooFast] -> [ 
			self showMessage: 'Too fast.'.
			self restartInputs.
			self showRequestAngleMessage.
			view newPrompt ].
		[#gameOver] -> [ 
			self showMessage: 'You''ve failed'.
			self showMessage: 'You''re fired'.
			self showMessage: ''.
			self restart ] .
	}.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 10:34:45'!
restart
	model reset.
	self restartInputs.
	self showStartMessage.
	self showRequestAngleMessage.
	view newPrompt.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 10:34:35'!
restartInputs
	angle := nil.
	speed := nil.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 8/31/2025 18:43:55'!
showMessage: aMessage
	view showMessage: aMessage.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 10:20:15'!
showRequestAngleMessage
	self showMessage: 'Enter angle (0-90)'.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 10:20:36'!
showRequestSpeedMessage
	self showMessage: 'Enter speed (0-40000)'.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 8/31/2025 18:49:52'!
showStartMessage
	self showMessage: 'You must launch a satellite to a height of ', model height asString.! !

!IntergalacticGamesPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 10:23:37'!
start
	self showMessage: model class gameDescription.
	self showStartMessage.
	self showRequestAngleMessage.
	view newPrompt.
	view openInWorld.! !

!MoonlanderPresenter methodsFor: 'initialization' stamp: 'tsl 9/7/2025 12:02:33'!
initialize
	super initialize.
	model := Moonlander new.
	view := ClassicGameView presenter: self.
	view setLabel: 'MOONLANDER'.
	view openInWorld.! !

!MoonlanderPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:13:32'!
handleInput: aString
	| number result |
	number := [aString asNumber] 
		on: Error do: [
			self showMessage: 'Invalid input. Please enter a number.'.
			^ view newPrompt ].
	
	result := model burn: number.
	result caseOf: {
		[#continue] -> [ 
			self showStatusMessage .
			view newPrompt ].
		[#goodLanding] -> [ 
			self showMessage: 'Good landing.'.
			self showMessage: ''.
			self restart. ].
		[#okButSomeInjuries]  -> [ 
			self showMessage: 'Ok - but some injuries'.
			self showMessage: ''.
			self restart. ].
		 [#crash] -> [ 
			self showMessage: 'You crashed - all dead.'.
			self showMessage: ''.
			self restart ] .
	}.
	! !

!MoonlanderPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:07:27'!
restart
	model reset.
	self showStatusMessage.
	view newPrompt.! !

!MoonlanderPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:06:05'!
showMessage: aMessage
	view showMessage: aMessage.! !

!MoonlanderPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:30:21'!
showStatusMessage
	self showMessage: 'Time ', model time asString, '; Height ', model height asString.
	self showMessage: 'Vel. ', model velocity asString, '; Fuel ', model fuel asString.! !

!MoonlanderPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/7/2025 12:06:40'!
start
	self showMessage: model class gameDescription.
	self showStatusMessage.
	view newPrompt.
	view openInWorld.! !

!StarshipTakeOffPresenter methodsFor: 'initialization' stamp: 'tsl 8/28/2025 13:27:01'!
initialize
	super initialize.
	model := StarshipTakeOff new.
	view := ClassicGameView presenter: self.
	view setLabel: 'STARSHIP TAKE-OFF'.
	view openInWorld.! !

!StarshipTakeOffPresenter methodsFor: 'initialization' stamp: 'tsl 8/28/2025 13:49:42'!
showStartMessage
	self showMessage: 'Gravity =', model gravity asString.
	self showMessage: 'Type in force'.! !

!StarshipTakeOffPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 9/2/2025 16:36:02'!
handleInput: aString
	| number result |
	number := [aString asNumber] 
		on: Error do: [
			self showMessage: 'Invalid input. Please enter a number.'.
			^ view newPrompt ].
	
	result := model checkGuess: number.
	result caseOf: {
		[#correct] -> [ 
			self showMessage: 'Good take-off'.
			self showMessage: ''.
			self restart. ].
		[#tooLow]  -> [ 
			self showMessage: number asString , ' is too low.'.
			view newPrompt ].
		[#tooHigh] -> [ 
			self showMessage: number asString , ' is too high.'.
			view newPrompt ].
		 [#gameOver] -> [ 
			self showMessage: 'You failed'.
			self showMessage: 'The aliens got you'.
			self showMessage: ''.
			self restart ] .
	}.
	! !

!StarshipTakeOffPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 8/28/2025 13:37:48'!
restart
	model reset.
	self showStartMessage.
	view newPrompt.! !

!StarshipTakeOffPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 8/28/2025 13:37:00'!
showMessage: aMessage
	view showMessage: aMessage.! !

!StarshipTakeOffPresenter methodsFor: 'as yet unclassified' stamp: 'tsl 8/28/2025 13:52:10'!
start
	self showMessage: model class gameDescription.
	self showStartMessage.
	view newPrompt.
	view openInWorld.! !

!ClassicGameModelMorph methodsFor: 'accessing' stamp: 'tsl 8/24/2025 19:18:10'!
presenter: aPresenter
	presenter := aPresenter ! !

!ClassicGameModelMorph methodsFor: 'initialization' stamp: 'tsl 8/24/2025 19:23:06'!
initialize
	super initialize.
	self color: Color black.
	self setTextColor: Color green.
	"self wrapFlag: true."

	self model: TextModel new.

	promptString := '> '.
	inputBuffer := ''.
	consoleText := ''.

	self refreshView.! !

!ClassicGameModelMorph methodsFor: 'initialization' stamp: 'tsl 8/24/2025 19:18:59'!
innerMorphClass
	^ClassicGameInnerTextMorph! !

!ClassicGameModelMorph methodsFor: 'as yet unclassified' stamp: 'tsl 8/24/2025 19:24:24'!
acceptInput
	| text |
	text := inputBuffer withBlanksTrimmed.
	consoleText := consoleText , text , String crString.
	inputBuffer := ''.
	self refreshView.
	presenter handleInput: text.! !

!ClassicGameModelMorph methodsFor: 'as yet unclassified' stamp: 'tsl 8/24/2025 19:19:55'!
newPrompt
	consoleText := consoleText , promptString.
	inputBuffer := ''.
	self refreshView.! !

!ClassicGameModelMorph methodsFor: 'as yet unclassified' stamp: 'tsl 8/24/2025 19:19:32'!
refreshView
	self model actualContents: consoleText , inputBuffer.! !

!ClassicGameModelMorph methodsFor: 'as yet unclassified' stamp: 'tsl 8/24/2025 19:19:42'!
showMessage: aString
	consoleText := consoleText , aString , String crString.
	self refreshView.! !

!ClassicGameModelMorph methodsFor: 'events' stamp: 'tsl 8/24/2025 19:25:04'!
keyStroke: evt

	evt isReturnKey ifTrue: [
		self acceptInput.
		^ true ].

	evt isBackspace ifTrue: [
		inputBuffer isEmpty ifFalse: [
		inputBuffer := inputBuffer copyFrom: 1 to: (inputBuffer size - 1).
		self refreshView ].
		^ true ].

	(evt isAlphaNumeric) ifTrue: [
 		inputBuffer := inputBuffer , evt keyCharacter asString.
		self refreshView.
		^ true ].

	^ true! !

!ClassicGameModelMorph class methodsFor: 'instance creation' stamp: 'tsl 8/24/2025 19:17:04'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter ;
		initialize ;
		yourself! !

!ClassicGameView methodsFor: 'accessing' stamp: 'tsl 8/28/2025 13:45:28'!
presenter: aPresenter
	presenter := aPresenter ! !

!ClassicGameView methodsFor: 'as yet unclassified' stamp: 'tsl 8/28/2025 13:46:12'!
newPrompt
	textModelMorph newPrompt! !

!ClassicGameView methodsFor: 'as yet unclassified' stamp: 'tsl 8/28/2025 13:46:02'!
showMessage: aString
	textModelMorph showMessage: aString! !

!ClassicGameView methodsFor: 'initialization' stamp: 'tsl 8/28/2025 13:47:06'!
initialize
	super initialize.
	textModelMorph := ClassicGameModelMorph presenter: presenter.
	self addMorph: textModelMorph layoutSpec: LayoutSizeSpec new.! !

!ClassicGameView class methodsFor: 'instance creation' stamp: 'tsl 8/28/2025 13:45:03'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize ;
		yourself! !

!ClassicGameInnerTextMorph methodsFor: 'events' stamp: 'tsl 8/24/2025 19:17:42'!
keyStroke: aKeyboardEvent
	^ self owner keyStroke: aKeyboardEvent! !
