package com.byazt.zn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER})
/* loaded from: classes3.dex */
public class dy<K, V> extends HashMap<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    public dy<String, Object> hp(K k2, V v2) {
        put(k2, v2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public dy<String, Object> hp(Map<? extends K, ? extends V> map) {
        putAll(map);
        return this;
    }
}
