package com.sigmob.sdk.base.common;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class ab {

    /* renamed from: a, reason: collision with root package name */
    private static final String f35705a = "NativeLoadReadyRecordManager";

    /* renamed from: f, reason: collision with root package name */
    private static final ab f35706f = new ab();

    /* renamed from: b, reason: collision with root package name */
    private boolean f35707b = false;

    /* renamed from: c, reason: collision with root package name */
    private int f35708c = 120;

    /* renamed from: d, reason: collision with root package name */
    private HandlerThread f35709d;

    /* renamed from: e, reason: collision with root package name */
    private Handler f35710e;

    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ab.this.f35707b) {
                ab.this.d();
                try {
                    HashMap<String, aa> mapA = aa.a();
                    if (com.sigmob.sdk.base.utils.f.b(mapA)) {
                        ArrayList arrayList = new ArrayList(mapA.values());
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            aa aaVar = (aa) obj;
                            if (aaVar != null) {
                                ad.a(aaVar);
                                aaVar.b();
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
                if (com.sigmob.sdk.base.utils.v.b(ab.this.f35710e)) {
                    ab.this.f35710e.postDelayed(this, ab.this.f35708c * 1000);
                }
            }
        }
    }

    private ab() {
    }

    public static ab a() {
        return f35706f;
    }

    public synchronized void b() {
        try {
            if (this.f35707b) {
                return;
            }
            this.f35707b = true;
            aa.c();
            if (this.f35709d == null) {
                HandlerThread handlerThread = new HandlerThread(f35705a);
                this.f35709d = handlerThread;
                handlerThread.start();
            }
            if (this.f35710e == null) {
                this.f35710e = new Handler(this.f35709d.getLooper());
            }
            this.f35710e.removeCallbacksAndMessages(null);
            this.f35710e.postDelayed(new a(), this.f35708c * 1000);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Handler handler = this.f35710e;
        if (handler == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
    }

    public void a(int i2) {
        if (i2 <= 0) {
            c();
            return;
        }
        int iMax = Math.max(i2, 10);
        if (this.f35708c == iMax) {
            return;
        }
        this.f35708c = iMax;
        if (!this.f35707b) {
            b();
        } else if (com.sigmob.sdk.base.utils.v.b(this.f35710e)) {
            this.f35710e.removeCallbacksAndMessages(null);
            this.f35710e.postDelayed(new a(), i2 * 1000);
        }
    }

    public void c() {
        this.f35707b = false;
        d();
    }
}
