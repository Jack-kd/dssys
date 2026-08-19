package com.byazt.xq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.LinkedHashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s<K, T> extends LinkedHashMap<K, T> {
    public int hp;

    public s() {
        this(4, 4);
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, T> entry) {
        return size() > this.hp;
    }

    public s(int i2, int i3) {
        this(i2, i3, true);
    }

    public s(int i2, int i3, boolean z2) {
        super(i2, 0.75f, z2);
        hp(i3);
    }
}
