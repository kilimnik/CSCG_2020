# First thoughts:
Upon opening the game I was guided to a well by the rabbit. The rabbit jumped into it and I jumped too and died. I knew that down there wille be the flag because the description `Follow the white rabbit... into the hole.` told me.

# The Idea:
I thought that there should be a method which checks for fall damage. So I opened the `Assembly-CSharp.dll` inside `dnSpy` and found a class called `PlayerController`. This class has the method `CheckFallDeath` defined as follows
```csharp
private void CheckFallDeath()
{
	if (this.m_IsGrounded && this.m_VerticalSpeed < -(this.maxGravity - 0.1f))
	{
		this.Die();
	}
}
```
If I could increase the `maxGravity` value then no fall damage would be applied. 

# The Exploit:
I had the idea to do a dll injection. So I first created a Loader class which creates a new `MonoBehaviour` and adds it to the `GameObject`.
```csharp
using UnityEngine;

namespace FollowWhiteRabbit_Hack
{
    public class Loader
    {
        public static void Load()
        {
            _Load = new GameObject();
            _Load.AddComponent<Main>();
            GameObject.DontDestroyOnLoad(_Load);
        }
        public static void Unload()
        {
            _Unload();
        }
        private static void _Unload()
        {
            GameObject.Destroy(_Load);
        }
        private static GameObject _Load;
    }
}
```

The actual Main class uses the `FindObjectOfType` Unity method to find the `PlayerController` where I wanted to set the `maxGravity` value to the maximum possible value.
I also added some small things like changing the `GameSettings` on start because they are very buggy and are reset on every start. (Because the `MouseSensitivity` gets set to the `AudioVolume`)

```csharp
using System;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace FollowWhiteRabbit_Hack
{
    class Main : MonoBehaviour
    {
        public void Start()
        {
            _player = FindObjectOfType<PlayerController>();
        }

        public void Update()
        {
            GameSettings.MouseSensitivity(1);
            GameSettings.AudioVolume(0);
            GameSettings.cursorVisible = false;
            _player.maxGravity = Single.MaxValue;

            if (Input.GetKeyDown(KeyCode.Delete)) // Will just unload our DLL
            {
                Loader.Unload();
            }

        }

        private PlayerController _player;
    }
}
```

Now I could use VisualStudio to build an dll. I then used a [SharpMonoInjector](https://github.com/warbler/SharpMonoInjector) to inject the dll to the game.
After injecting it worked I could follow the rabbit into the hole and read the flag.

I later found out that there is a much simpler solution. If the keys f, l, a and g get pressed at the same time the player gets teleported to the bottom of the well.

# Prevention:
The problem here is that a dll can be built and injected very easily. A better option would be to use some kind af anti cheat software which prohibts this. 
