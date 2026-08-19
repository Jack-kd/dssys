package com.smartdigimkt.y3;

import android.content.Context;
import com.smartdigimkt.c5.y;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f45219a;

    public k(l lVar) {
        this.f45219a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicInteger atomicInteger;
        AtomicInteger atomicInteger2;
        try {
            Context context = this.f45219a.f45226f;
            if (context == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - y.a(context, "sdm_adx_rp_sdk", "LOG_SEND_TIME");
            l lVar = this.f45219a;
            if (jCurrentTimeMillis > lVar.f45223c || ((atomicInteger2 = lVar.f45228h) != null && atomicInteger2.get() >= this.f45219a.f45221a)) {
                l lVar2 = this.f45219a;
                if (lVar2.f45229i || (atomicInteger = lVar2.f45228h) == null || atomicInteger.get() <= 0) {
                    return;
                }
                this.f45219a.b();
            }
        } catch (Throwable unused) {
        }
    }
}
