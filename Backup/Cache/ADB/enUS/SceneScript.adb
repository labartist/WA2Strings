WCH8             d  �c��V��@[  ��X�2  �2        :         Blackrock Train Depot - Board the Grimrail - Storyboard --Init Vars
	scene:SetFadeRegion(100,true)
	genericFOV90 = 368
	SceneModels = {
		Steam = "World\\Expansion05\\Doodads\\Ashrand\\Doodads\\6AR_Steam_C02.m2",
		Invis = "SPELLS\\INVISIBLE.m2",
	}
	party = SpawnPlayerGroupAtPoints(12615, 1, true)
	local soundDummy = SpawnModelActor(SceneModels.Invis,1647.66,1561.79,37.4977,0,1.5,false)
	soundDummy:PlayMusic(49162)	--Music
	MoveCameraToPathStart(genericFOV90,0,12617,12618)
--Start Camera and Move Players
	SendTrigger("PlayerStart")
	SetCameraFollowPath(genericFOV90,0,12617,12618,5)
	local grinding = soundDummy:PlaySoundKit(48939,false)
	Wait(1.75)
	steamVents = SpawnModelActorsAtPoints(SceneModels.Steam,12621,true,1.5)
	Wait(1.4)
	finalSteam = SpawnModelActor(SceneModels.Steam,1647.66,1561.79,37.4977,0,1.5,false)
	finalSteam:PlaySoundKit(48882,true)
	Wait(3)
	finalSteam:Fade(0,0)
	--finalSteam:Despawn()
	
--Reached end of the walkway
	finalSteam:PlaySoundKit(48938,true)
	MoveCameraToPathStart(genericFOV90,0,12622,12623)
	SetCameraFollowPath(genericFOV90,0,12622,12623,4)
	Wait(3.75)
	local wheels = finalSteam:PlaySoundKit(42829,false)
	MoveCameraToPathStart(genericFOV90,0,12628,12629)
	SetCameraFollowPath(genericFOV90,0,12628,12629,4)
	Wait(1)
	finalSteam:PlaySoundKit(48937,true)
	Wait(3)

--Start Jump Sequence
	MoveCameraToPathStart(genericFOV90,0,12631,12632)
	SetCameraFollowPath(genericFOV90,0,12631,12632,3.75)
	Wait(0.5)
	local runPath = scene:LoadPath(12653).nodes
	
	steamVents[2]:PlaySoundKit(48882,true)
	Wait(0.5)
	steamVents[7]:PlaySoundKit(48882,true)
	Wait(3)
	MoveCameraToPathStart(genericFOV90,0,12654,12657)
	SetCameraFollowPath(genericFOV90,0,12654,12657,2)
	Wait(1)
	grinding:Stop()
	wheels:Stop()
	scene:ApplyScreenEffect(827)
	Wait(2)

	scene:EndScene()
	SendTrigger("normalPhase")
--174940 �2  