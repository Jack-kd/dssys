package com.smartdigimkt.g0;

import com.smartdigimkt.c5.q;
import java.io.File;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40301a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f40302b;

    public c(e eVar, String str) {
        this.f40302b = eVar;
        this.f40301a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f40302b.f40308d) {
            File file = this.f40302b.f40307c;
            if (file == null) {
                return;
            }
            try {
                if (!file.exists()) {
                    this.f40302b.f40307c.mkdirs();
                }
                File file2 = new File(this.f40302b.f40307c, "tracker_mapping.txt");
                if (file2.exists()) {
                    file2.delete();
                }
                q.a(this.f40301a.getBytes(), file2);
            } catch (Throwable unused) {
            }
        }
    }
}
