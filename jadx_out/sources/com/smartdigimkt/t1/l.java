package com.smartdigimkt.t1;

import com.smartdigimkt.c5.q;
import java.io.File;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44226a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44227b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f44228c;

    public l(m mVar, String str, String str2) {
        this.f44228c = mVar;
        this.f44226a = str;
        this.f44227b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f44228c.f44240k) {
            try {
                if (!this.f44228c.f44237h.exists()) {
                    this.f44228c.f44237h.mkdirs();
                }
                File file = new File(this.f44228c.f44237h, this.f44226a);
                if (file.exists()) {
                    file.delete();
                }
                q.a(this.f44227b.getBytes(), file);
            } catch (Throwable unused) {
            }
        }
    }
}
