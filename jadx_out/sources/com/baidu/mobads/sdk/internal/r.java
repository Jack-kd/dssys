package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.NativeResponse;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class r implements NativeResponse.CustomizeMediaPlayer {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11578a = "vstart";

    /* renamed from: b, reason: collision with root package name */
    private static final String f11579b = "vrepeatedplay";

    /* renamed from: c, reason: collision with root package name */
    private static final String f11580c = "vclose";

    /* renamed from: d, reason: collision with root package name */
    private static final String f11581d = "vreadyplay";

    /* renamed from: e, reason: collision with root package name */
    private static final String f11582e = "vplayfail";

    /* renamed from: f, reason: collision with root package name */
    private static final String f11583f = "vmute";

    /* renamed from: g, reason: collision with root package name */
    private static final String f11584g = "vfrozen";

    /* renamed from: h, reason: collision with root package name */
    private static final String f11585h = "vshow";

    /* renamed from: i, reason: collision with root package name */
    private static final String f11586i = "curTimeSec";

    /* renamed from: j, reason: collision with root package name */
    private static final String f11587j = "startTimeSec";

    /* renamed from: k, reason: collision with root package name */
    private static final String f11588k = "autoPlay";

    /* renamed from: l, reason: collision with root package name */
    private static final String f11589l = "reasonValue";

    /* renamed from: m, reason: collision with root package name */
    private final dg f11590m;

    /* renamed from: n, reason: collision with root package name */
    private final a f11591n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f11592o = false;

    /* renamed from: p, reason: collision with root package name */
    private int f11593p = 0;

    public r(dg dgVar, a aVar) {
        this.f11590m = dgVar;
        this.f11591n = aVar;
    }

    private void a(String str, JSONObject jSONObject) {
        a aVar;
        JSONObject jSONObjectY;
        if (this.f11590m == null || (aVar = this.f11591n) == null || (jSONObjectY = aVar.Y()) == null) {
            return;
        }
        try {
            jSONObjectY.put("msg", "sendVideoThirdLog");
            jSONObjectY.put("trackType", str);
            jSONObjectY.put("trackInfo", jSONObject);
            this.f11590m.a(jSONObjectY);
        } catch (Throwable th) {
            bv.a().d(th.getMessage());
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public String getVideoUrl() {
        a aVar = this.f11591n;
        if (aVar != null) {
            return aVar.n();
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportPlayError(int i2) {
        a(f11582e, a(this.f11593p, i2, this.f11592o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportPlayFrozen(int i2) {
        a(f11584g, a(this.f11593p, i2, this.f11592o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportPlayerReady() {
        a(f11581d, a(0, 0, false, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoMuteChange(int i2, boolean z2) {
        a(f11583f, a(this.f11593p, i2, this.f11592o, z2 ? 2 : 1));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoPause(int i2, NativeResponse.VideoReason videoReason) {
        a("vclose", a(this.f11593p, i2, this.f11592o, videoReason.getCode()));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoReplay() {
        this.f11593p = 0;
        a(f11579b, a(0, 0, this.f11592o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoResume(int i2) {
        this.f11593p = i2;
        a(f11578a, a(i2, i2, this.f11592o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoShow() {
        a(f11585h, a(0, 0, false, 7));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoStart(boolean z2) {
        this.f11593p = 0;
        this.f11592o = z2;
        a(f11578a, a(0, 0, z2, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoStop(int i2, NativeResponse.VideoReason videoReason) {
        a("vclose", a(this.f11593p, i2, this.f11592o, videoReason.getCode()));
    }

    private JSONObject a(int i2, int i3, boolean z2, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f11587j, i2 / 1000);
            jSONObject.put(f11586i, i3 / 1000);
            jSONObject.put(f11588k, z2);
            jSONObject.put(f11589l, i4);
            return jSONObject;
        } catch (Throwable th) {
            bv.a().d(th.getMessage());
            return jSONObject;
        }
    }
}
