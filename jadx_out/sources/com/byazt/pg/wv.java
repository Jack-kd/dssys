package com.byazt.pg;

import android.content.Context;
import android.os.Looper;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface wv {
    com.byazt.um.eb createTTLiveVideoPlayer(Context context, boolean z2, long j2, JSONObject jSONObject, Looper looper);

    com.byazt.um.eb createTTVideoPlayer(Context context, String str);

    com.byazt.um.hp createVideoCacheDir();

    com.byazt.um.e createVideoPreload();

    int getLiveSupportCode();

    boolean isTTVideoOk();

    void openDebugLog(boolean z2);

    void preloadTTVideo(Context context, String str, int i2, String[] strArr, long[] jArr, boolean z2);
}
