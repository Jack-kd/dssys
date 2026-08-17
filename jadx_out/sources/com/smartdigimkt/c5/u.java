package com.smartdigimkt.c5;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39812a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39813b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f39814c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f39815d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f39816e;

    public u(String str, String str2, String str3, String str4, String str5) {
        this.f39812a = str;
        this.f39813b = str2;
        this.f39814c = str3;
        this.f39815d = str4;
        this.f39816e = str5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("placementId", this.f39812a);
            jSONObject.put("adtype", this.f39813b);
            jSONObject.put("api", this.f39814c);
            jSONObject.put("result", this.f39815d);
            jSONObject.put(MediationConstant.KEY_REASON, this.f39816e);
            "sdm_sdk".concat(SDKContext.getInstance().i() ? "(DebuggerMode)" : "");
            jSONObject.toString();
        } catch (Throwable unused) {
        }
    }
}
