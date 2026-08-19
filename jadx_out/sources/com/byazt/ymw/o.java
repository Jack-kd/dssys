package com.byazt.ymw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes3.dex */
public abstract class o {
    public final ConcurrentHashMap<Integer, ConcurrentHashMap<Integer, Runnable>> hp = new ConcurrentHashMap<>();

    public void hp(int i2, int i3, Runnable runnable) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        ConcurrentHashMap<Integer, Runnable> concurrentHashMap = this.hp.get(Integer.valueOf(i2));
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
            this.hp.put(Integer.valueOf(i2), concurrentHashMap);
        }
        concurrentHashMap.put(Integer.valueOf(i3), runnable);
    }

    public abstract boolean hp(int i2);

    public void jx(int i2) {
        Runnable value;
        ConcurrentHashMap<Integer, Runnable> concurrentHashMapRemove = this.hp.remove(Integer.valueOf(i2));
        if (concurrentHashMapRemove != null) {
            for (Map.Entry<Integer, Runnable> entry : concurrentHashMapRemove.entrySet()) {
                if (entry != null && (value = entry.getValue()) != null) {
                    value.run();
                }
            }
        }
    }

    public void l(int i2) {
        this.hp.remove(Integer.valueOf(i2));
    }

    public void hp(int i2, int i3) {
        ConcurrentHashMap<Integer, Runnable> concurrentHashMap;
        if (i2 <= 0 || i3 <= 0 || (concurrentHashMap = this.hp.get(Integer.valueOf(i2))) == null) {
            return;
        }
        concurrentHashMap.remove(Integer.valueOf(i3));
    }
}
