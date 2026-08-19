package com.bytedance.pangle.transform;

import androidx.annotation.Keep;
import androidx.fragment.app.FragmentActivity;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@Keep
/* loaded from: classes3.dex */
public class HostPartUtils {
    public Class fragmentActivityClazz;

    @hp(hp = {0, 124, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD, 2412, 2413})
    public static class SingletonHolder {
        public static final HostPartUtils INSTANCE = new HostPartUtils();

        private SingletonHolder() {
        }
    }

    public HostPartUtils() {
        try {
            this.fragmentActivityClazz = FragmentActivity.class;
        } catch (Throwable unused) {
        }
    }

    public static FragmentActivity getFragmentActivity(Object obj, String str) {
        return (FragmentActivity) ZeusTransformUtils._getActivity(obj, str);
    }

    public static final Class getFragmentActivityClass() {
        return SingletonHolder.INSTANCE.fragmentActivityClazz;
    }
}
