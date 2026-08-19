package com.smartdigimkt.t1;

import android.content.Context;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44191a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f44192b;

    public a(d dVar, Context context) {
        this.f44192b = dVar;
        this.f44191a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f44192b;
        Context contextD = this.f44191a;
        synchronized (dVar) {
            if (contextD == null) {
                try {
                    contextD = SDKContext.getInstance().d();
                } catch (Throwable th) {
                    throw th;
                }
            }
            dVar.f44206h = y.b(contextD, "sdm_adx_rp_sdk", "adx_optional_res_url");
        }
        d dVar2 = this.f44192b;
        dVar2.f44205g = dVar2.c();
    }
}
