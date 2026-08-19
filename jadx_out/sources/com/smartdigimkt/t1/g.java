package com.smartdigimkt.t1;

import com.smartdigimkt.c5.q;
import java.io.File;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44212a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f44213b;

    public g(h hVar, String str) {
        this.f44213b = hVar;
        this.f44212a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f44213b.f44218c) {
            File file = this.f44213b.f44217b;
            if (file == null) {
                return;
            }
            try {
                if (!file.exists()) {
                    this.f44213b.f44217b.mkdirs();
                }
                File file2 = new File(this.f44213b.f44217b, "mraid_js.txt");
                if (file2.exists()) {
                    file2.delete();
                }
                q.a(this.f44212a.getBytes(), file2);
            } catch (Throwable unused) {
            }
        }
    }
}
