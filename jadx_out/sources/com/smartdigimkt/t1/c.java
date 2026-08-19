package com.smartdigimkt.t1;

import com.smartdigimkt.c5.q;
import java.io.File;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44195a = "adx_optional_res.txt";

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44196b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f44197c;

    public c(d dVar, String str) {
        this.f44197c = dVar;
        this.f44196b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f44197c.f44204f) {
            try {
                if (!this.f44197c.f44202d.exists()) {
                    this.f44197c.f44202d.mkdirs();
                }
                File file = new File(this.f44197c.f44202d, this.f44195a);
                if (file.exists()) {
                    file.delete();
                }
                q.a(this.f44196b.getBytes(), file);
            } catch (Throwable unused) {
            }
        }
    }
}
