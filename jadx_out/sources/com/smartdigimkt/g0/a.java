package com.smartdigimkt.g0;

import com.smartdigimkt.c5.q;
import java.io.File;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f40297a;

    public a(e eVar) {
        this.f40297a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strC;
        e eVar = this.f40297a;
        synchronized (eVar.f40308d) {
            strC = e.f40304g;
            if (eVar.f40307c != null) {
                try {
                    File file = new File(eVar.f40307c, "tracker_mapping.txt");
                    if (file.exists() && file.canRead()) {
                        strC = q.c(file);
                    }
                } catch (Throwable unused) {
                }
            }
        }
        eVar.f40306b = strC;
        e eVar2 = this.f40297a;
        eVar2.a(eVar2.f40306b);
    }
}
