package com.smartdigimkt.t1;

import com.smartdigimkt.c5.q;
import java.io.File;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f44208a;

    public e(h hVar) {
        this.f44208a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strC;
        h hVar = this.f44208a;
        synchronized (hVar.f44218c) {
            strC = "";
            if (hVar.f44217b != null) {
                try {
                    File file = new File(hVar.f44217b, "mraid_js.txt");
                    if (file.exists() && file.canRead()) {
                        strC = q.c(file);
                    }
                } catch (Throwable unused) {
                }
            }
        }
        hVar.f44216a = strC;
    }
}
