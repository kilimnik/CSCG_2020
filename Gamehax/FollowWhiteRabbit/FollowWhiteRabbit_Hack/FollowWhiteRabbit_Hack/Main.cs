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
