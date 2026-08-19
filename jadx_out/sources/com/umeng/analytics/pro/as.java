package com.umeng.analytics.pro;

import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class as implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48709a = "https://ucc.umeng.com/v2/inn/fetch";

    /* renamed from: b, reason: collision with root package name */
    private String f48710b;

    /* renamed from: c, reason: collision with root package name */
    private String f48711c;

    /* renamed from: d, reason: collision with root package name */
    private String f48712d;

    public as(String str, JSONObject jSONObject, String str2) {
        this.f48710b = str;
        this.f48711c = jSONObject.toString();
        this.f48712d = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObject = null;
        try {
            byte[] bArrA = aq.a(this.f48710b, this.f48711c);
            if (bArrA != null) {
                JSONObject jSONObject2 = new JSONObject(new String(bArrA));
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sourceIucc", this.f48712d);
                    jSONObject3.put("config", jSONObject2);
                } catch (Throwable unused) {
                }
                jSONObject = jSONObject3;
            }
        } catch (Throwable unused2) {
        }
        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 102, com.umeng.ccg.d.a(), jSONObject);
    }
}
