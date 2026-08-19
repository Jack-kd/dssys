package com.byazt.nc;

import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1844, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public long f23530a;
    public long eb;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23531j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f23532l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f23533s;

    /* renamed from: w, reason: collision with root package name */
    public long f23534w;

    /* renamed from: com.byazt.nc.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0317hp {
        boolean getHasUseCustomizeVideo();

        hp getVideoModel();
    }

    public void hp(boolean z2) {
        this.f23533s = z2;
    }

    public hp j(boolean z2) {
        this.f23532l = z2;
        return this;
    }

    public hp jx(boolean z2) {
        this.hp = z2;
        return this;
    }

    public hp l(boolean z2) {
        this.f23531j = z2;
        return this;
    }

    public hp w(boolean z2) {
        this.jx = z2;
        return this;
    }

    public hp hp(long j2) {
        this.f23534w = j2;
        return this;
    }

    public hp jx(long j2) {
        this.eb = j2;
        return this;
    }

    public hp l(long j2) {
        this.f23530a = j2;
        return this;
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.hp);
            jSONObject.put("isFromVideoDetailPage", this.f23532l);
            jSONObject.put("isFromDetailPage", this.jx);
            jSONObject.put("duration", this.f23534w);
            jSONObject.put("totalPlayDuration", this.f23530a);
            jSONObject.put("currentPlayPosition", this.eb);
            jSONObject.put("isAutoPlay", this.f23531j);
            jSONObject.put("isMute", this.f23533s);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static hp hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        hp hpVar = new hp();
        hpVar.jx(jSONObject.optBoolean("isCompleted"));
        hpVar.j(jSONObject.optBoolean("isFromVideoDetailPage"));
        hpVar.w(jSONObject.optBoolean("isFromDetailPage"));
        hpVar.hp(jSONObject.optLong("duration"));
        hpVar.l(jSONObject.optLong("totalPlayDuration"));
        hpVar.jx(jSONObject.optLong("currentPlayPosition"));
        hpVar.l(jSONObject.optBoolean("isAutoPlay"));
        hpVar.hp(jSONObject.optBoolean("isMute"));
        return hpVar;
    }
}
