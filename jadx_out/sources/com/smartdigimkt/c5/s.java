package com.smartdigimkt.c5;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39804a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39805b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f39806c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.f f39807d;

    public s(String str, String str2, String str3, com.smartdigimkt.a5.f fVar) {
        this.f39804a = str;
        this.f39805b = str2;
        this.f39806c = str3;
        this.f39807d = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.ccg.a.f49772z, "bidding");
            jSONObject.put("result", this.f39804a);
            jSONObject.put("placementId", this.f39805b);
            jSONObject.put("adtype", this.f39806c);
            jSONObject.put("adsourceId", this.f39807d.f39450k);
            jSONObject.put("networkFirmId", this.f39807d.f39441b);
            jSONObject.put("content", this.f39807d.f39443d);
            jSONObject.put("msg", this.f39807d.f39448i);
            String string = jSONObject.toString();
            if (TextUtils.equals("fail", this.f39804a)) {
                w.a(1, "sdm_sdk", string);
            } else {
                w.a(0, "sdm_sdk", string);
            }
        } catch (Throwable unused) {
        }
    }
}
