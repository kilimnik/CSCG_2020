# First thoughts:
Like the description says I have to find a scene which is not yet in the game `It looks like the prison is still under construction on the currently shipped game... But I heard somebody figured out, that early parts of the unreleased content accidentally leaked into this release! Can you find it and follow the white rabbit?`.

# The Idea:
My first idea was to look in the Unity resoureces for the missing scene. I used a programm called [DevXUnpacker](https://www.devxdevelopment.com/Unpacker) to see the resources. There I could import the Unity game. I now could see the `FlagLand` scene which is the scene loaded by default. But there was also the `FlagLand_Update` scene, which upon previewing turned out, to be the prison scene I was looking for.
So I had to somehow load this scene too.

# The Exploit:
In the previous challenge I did an dll injection. Here I will be doing the same thing.
So I first created a Loader class which creates a new `MonoBehaviour` and adds it to the `GameObject`.
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

In the actual Main class I could use the line `SceneManager.LoadSceneAsync("FlagLand_Update", LoadSceneMode.Additive);` to load the prison scene on top of the other. I now saw the prison ingame but I couldn't enter because of the walls.
I decided to make a small noclip position updater by controlling the players position vector.

The whole class looks like this.
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

            SceneManager.LoadSceneAsync("FlagLand_Update", LoadSceneMode.Additive);
        }
        public void Update()
        {
            GameSettings.MouseSensitivity(1);
            GameSettings.AudioVolume(0);
            GameSettings.cursorVisible = false;
            _player.maxGravity = Single.MaxValue;

            if (Input.GetKey(KeyCode.Keypad5))
            {
                _player.transform.position = new Vector3(_player.transform.position.x + 1, _player.transform.position.y, _player.transform.position.z);
            }
            if (Input.GetKey(KeyCode.Keypad2))
            {
                _player.transform.position = new Vector3(_player.transform.position.x - 1, _player.transform.position.y, _player.transform.position.z);
            }
            if (Input.GetKey(KeyCode.Keypad1))
            {
                _player.transform.position = new Vector3(_player.transform.position.x, _player.transform.position.y, _player.transform.position.z - 1);
            }
            if (Input.GetKey(KeyCode.Keypad3))
            {
                _player.transform.position = new Vector3(_player.transform.position.x, _player.transform.position.y, _player.transform.position.z + 1);
            }
            if (Input.GetKey(KeyCode.KeypadMinus))
            {
                _player.transform.position = new Vector3(_player.transform.position.x, _player.transform.position.y - 1, _player.transform.position.z);
            }
            if (Input.GetKey(KeyCode.KeypadPlus))
            {
                _player.transform.position = new Vector3(_player.transform.position.x, _player.transform.position.y + 1, _player.transform.position.z);
            }


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
After injecting I could position myself with the numpad inside the prison and read the flag.

# Prevention:
The problem here is that a dll can be built and injected very easily. A better option would be to use some kind af anti cheat software which prohibts this. 
