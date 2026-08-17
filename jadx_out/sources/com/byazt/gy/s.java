package com.byazt.gy;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 776, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public long hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Object> f20634l = new ConcurrentHashMap();

    public s(long j2) {
        this.hp = j2;
    }

    public long hp() {
        return this.hp;
    }

    public void hp(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        this.f20634l.put(str, obj);
    }

    public Object hp(String str) {
        if (str == null) {
            return null;
        }
        return this.f20634l.get(str);
    }
}
