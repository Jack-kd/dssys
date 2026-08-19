package com.smartdigimkt.z4;

import com.smartdigimkt.c5.y;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONObject f45502a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f45503b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f45504c;

    public r(s sVar, JSONObject jSONObject, String str) {
        this.f45504c = sVar;
        this.f45502a = jSONObject;
        this.f45503b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = this.f45502a;
        String string = jSONObject == null ? "" : jSONObject.toString();
        y.a(this.f45504c.f45505a, "sdm_adx_rp_sdk", this.f45503b + "_PL_SY", string);
    }
}
