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
