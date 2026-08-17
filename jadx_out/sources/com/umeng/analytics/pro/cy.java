package com.umeng.analytics.pro;

import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class cy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final String f49144a = "https://ulogs.umeng.com/push_cloud_activation";

    /* renamed from: b, reason: collision with root package name */
    public static final String f49145b = "https://preulogs.umeng.com/push_cloud_activation";

    /* renamed from: c, reason: collision with root package name */
    private String f49146c;

    /* renamed from: d, reason: collision with root package name */
    private String f49147d;

    public cy(String str, JSONObject jSONObject) {
        this.f49146c = str;
        this.f49147d = jSONObject.toString();
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObject = null;
        try {
            byte[] bArrA = aq.a(this.f49146c, this.f49147d);
            if (bArrA != null) {
                JSONObject jSONObject2 = new JSONObject(new String(bArrA));
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("config", jSONObject2);
                } catch (Throwable unused) {
                }
                jSONObject = jSONObject3;
            }
        } catch (Throwable unused2) {
        }
        cm.a(UMGlobalContext.getAppContext(), 102, cn.a(), jSONObject);
    }
}
