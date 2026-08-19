package com.smartdigimkt.c5;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39808a = "fail";

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39809b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f39810c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f39811d;

    public t(String str, String str2, String str3) {
        this.f39809b = str;
        this.f39810c = str2;
        this.f39811d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.ccg.a.f49772z, "strategy");
            jSONObject.put("result", this.f39808a);
            jSONObject.put("placementId", this.f39809b);
            jSONObject.put("adtype", this.f39810c);
            jSONObject.put(MediationConstant.KEY_ERROR_MSG, this.f39811d);
            String string = jSONObject.toString();
            if (TextUtils.equals("fail", this.f39808a)) {
                w.a(1, "sdm_sdk", string);
            } else {
                w.a(0, "sdm_sdk", string);
            }
        } catch (Throwable unused) {
        }
    }
}
