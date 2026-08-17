package com.smartdigimkt.c3;

import android.content.Context;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.x.l;
import java.io.File;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39664a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39665b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f39666c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SDKContext f39667d;

    public b(SDKContext sDKContext, String str, String str2, Context context) {
        this.f39667d = sDKContext;
        this.f39664a = str;
        this.f39665b = str2;
        this.f39666c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SDKContext sDKContext = this.f39667d;
        String str = this.f39664a;
        String str2 = this.f39665b;
        y.a(sDKContext.f44114c, "sdm_adx_rp_sdk", "sdm_adx_rp_appid", str);
        y.a(sDKContext.f44114c, "sdm_adx_rp_sdk", "sdm_adx_rp_appkey", str2);
        SDKContext.a(this.f39667d);
        l.a().a(this.f39666c, this.f39667d.f44123l);
        Context context = this.f39666c;
        if (context != null) {
            SDKContext sDKContext2 = this.f39667d;
            File file = new File(context.getDir("database", 0), "sdm_adx_rp_webview_db");
            if (!file.exists()) {
                file.mkdirs();
            }
            sDKContext2.f44110I = file.getAbsolutePath();
        }
        this.f39667d.getClass();
    }
}
