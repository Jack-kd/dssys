package com.byazt.rz;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 94})
/* loaded from: classes3.dex */
public class eb {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, Long> f25408j = new HashMap();
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f25409l;

    private eb(String str, long j2) {
        this.hp = str;
        this.f25409l = j2;
        this.jx = j2;
    }

    public static eb hp(String str) {
        return new eb(str, SystemClock.elapsedRealtime());
    }

    public long l(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.jx;
        this.jx = SystemClock.elapsedRealtime();
        this.f25408j.put(str, Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    public long hp() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f25409l;
        this.f25408j.put(this.hp, Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        hp(jSONObject, 0L);
    }

    public void hp(JSONObject jSONObject, long j2) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        for (Map.Entry<String, Long> entry : this.f25408j.entrySet()) {
            String key = entry.getKey();
            Long value = entry.getValue();
            if (!TextUtils.isEmpty(key) && value.longValue() > j2) {
                try {
                    jSONObject.put(key, value);
                } catch (JSONException unused) {
                }
            }
        }
    }
}
