package com.byazt.w;

import com.byazt.y.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public String f26848a;
    public String eb;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26849j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f26850l;

    /* renamed from: s, reason: collision with root package name */
    public volatile long f26851s;

    /* renamed from: w, reason: collision with root package name */
    public String f26852w;

    public hp() {
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mDownloadId", this.hp);
            jSONObject.put("mAdId", this.f26850l);
            jSONObject.put("mExtValue", this.jx);
            jSONObject.put("mPackageName", this.f26849j);
            jSONObject.put("mAppName", this.f26852w);
            jSONObject.put("mLogExtra", this.f26848a);
            jSONObject.put("mFileName", this.eb);
            jSONObject.put("mTimeStamp", this.f26851s);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public hp(long j2, long j3, long j4, String str, String str2, String str3, String str4) {
        this.hp = j2;
        this.f26850l = j3;
        this.jx = j4;
        this.f26849j = str;
        this.f26852w = str2;
        this.f26848a = str3;
        this.eb = str4;
    }

    public static hp hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        hp hpVar = new hp();
        try {
            hpVar.hp = zy.hp(jSONObject, "mDownloadId");
            hpVar.f26850l = zy.hp(jSONObject, "mAdId");
            hpVar.jx = zy.hp(jSONObject, "mExtValue");
            hpVar.f26849j = jSONObject.optString("mPackageName");
            hpVar.f26852w = jSONObject.optString("mAppName");
            hpVar.f26848a = jSONObject.optString("mLogExtra");
            hpVar.eb = jSONObject.optString("mFileName");
            hpVar.f26851s = zy.hp(jSONObject, "mTimeStamp");
            return hpVar;
        } catch (Exception unused) {
            return null;
        }
    }
}
