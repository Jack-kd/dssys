package com.byazt.py;

import android.content.Context;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static final AtomicBoolean f24529l = new AtomicBoolean(false);

    public static void hp(Context context, String str, int i2, String[] strArr, long[] jArr, VideoEventEngineUploader videoEventEngineUploader) {
        if (hp) {
            return;
        }
        try {
            TTVideoEngine.setCacheInfoLists(strArr, jArr);
            TTVideoEngine.setStringValue(0, str);
            TTVideoEngine.setIntValue(1, i2);
            TTVideoEngine.setIntValue(11, 5);
            TTVideoEngine.setIntValue(2, 10);
            TTVideoEngine.setIntValue(3, 10);
            TTVideoEngine.setIntValue(4, 3);
            TTVideoEngine.setVideoEventUploader(videoEventEngineUploader);
        } catch (Exception unused) {
        }
        hp = true;
    }

    public static void hp(boolean z2) {
        if (z2) {
            TTVideoEngineLog.turnOn(1, 1);
            AVMDLLog.turnOn(1, 1);
        } else {
            TTVideoEngineLog.turnOn(1, 0);
        }
    }

    public static TTVideoEngine hp(Context context) {
        if (!f24529l.getAndSet(true)) {
            TTVideoEngine.startDataLoader(context);
        }
        TTVideoEngine tTVideoEngine = new TTVideoEngine(context, 0);
        tTVideoEngine.setIntOption(160, 1);
        tTVideoEngine.setIntOption(11, 10);
        tTVideoEngine.setIntOption(12, 10);
        tTVideoEngine.setMaxRetryCount(2);
        tTVideoEngine.setScreenOnWhilePlaying(true);
        return tTVideoEngine;
    }
}
