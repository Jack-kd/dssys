package com.smartdigimkt.t1;

import android.content.Context;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44220a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f44221b;

    public i(m mVar, Context context) {
        this.f44221b = mVar;
        this.f44220a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar = this.f44221b;
        Context contextD = this.f44220a;
        synchronized (mVar) {
            if (contextD == null) {
                try {
                    contextD = SDKContext.getInstance().d();
                } catch (Throwable th) {
                    throw th;
                }
            }
            mVar.f44241l = y.b(contextD, "sdm_adx_rp_sdk", "omsdk_sdk_js_url");
        }
        m.a(this.f44221b, this.f44220a);
        m mVar2 = this.f44221b;
        mVar2.f44234e = mVar2.a("omsdk_sdk_js.txt");
        m mVar3 = this.f44221b;
        mVar3.f44236g = mVar3.a("omsdk_webview_injection_content.txt");
    }
}
