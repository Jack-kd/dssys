package com.byazt.va;

import android.content.Context;
import com.byazt.um.e;
import com.byazt.um.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final ConcurrentHashMap<String, l> hp = new ConcurrentHashMap<>();

    public static synchronized void hp(Context context, zy zyVar, e.hp hpVar) {
        if (zyVar == null) {
            return;
        }
        try {
            ConcurrentHashMap<String, l> concurrentHashMap = hp;
            l lVar = concurrentHashMap.get(zyVar.getFileNameKey());
            if (lVar == null) {
                lVar = new l(context, zyVar);
                concurrentHashMap.put(zyVar.getFileNameKey(), lVar);
                zyVar.getPreloadSize();
                zyVar.getFileNameKey();
            }
            lVar.hp(hpVar);
            zyVar.getPreloadSize();
            zyVar.getFileNameKey();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void hp(zy zyVar) {
        try {
            l lVarRemove = hp.remove(zyVar.getFileNameKey());
            if (lVarRemove != null) {
                lVarRemove.hp(true);
            }
            zyVar.getPreloadSize();
            zyVar.getFileNameKey();
        } catch (Throwable th) {
            throw th;
        }
    }
}
