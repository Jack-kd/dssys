package com.meishu.sdk.core.webview.jsbridge;

import com.google.gson.Gson;
import com.meishu.sdk.core.utils.v;
import com.meishu.sdk.platform.ms.c;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.webview.jsbridge.bean.a f32126a;

    /* renamed from: b, reason: collision with root package name */
    public final c f32127b;

    public b(c cVar) {
        this.f32127b = cVar;
        if (cVar != null) {
            try {
                if (cVar.a() != null) {
                    Gson gson = v.f32031a;
                    this.f32126a = (com.meishu.sdk.core.webview.jsbridge.bean.a) gson.fromJson(gson.toJson(cVar.a()), com.meishu.sdk.core.webview.jsbridge.bean.a.class);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String a(boolean z2, String str) {
        return "{\"open_status\":" + z2 + ",\"msg\":\"" + str + "\"}";
    }
}
