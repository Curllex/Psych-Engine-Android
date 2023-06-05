function onEvent(n,v1,v2)


	if n == 'Flash camera black(Copy)' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'000000')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',1)
		setProperty('flash.alpha',0)
		doTweenAlpha('flTw','flash',1,v1,'linear')
	end
	end
  
  function onStepHit()
    if curStep == 1 then
      runTimer('flash',2)
    end
  end
  
  function onTweenComplete()
    if curstep == 5 then
      removeLuaSprite('flash')
    end
  end