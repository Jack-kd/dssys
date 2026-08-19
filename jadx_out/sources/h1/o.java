package h1;

import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: classes5.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public final String f50769a;

    /* renamed from: b, reason: collision with root package name */
    public final int f50770b;

    /* renamed from: c, reason: collision with root package name */
    public HandlerThread f50771c;

    /* renamed from: d, reason: collision with root package name */
    public Handler f50772d;

    /* renamed from: e, reason: collision with root package name */
    public Runnable f50773e;

    /* renamed from: f, reason: collision with root package name */
    public m f50774f;

    public o(String str, int i2) {
        this.f50769a = str;
        this.f50770b = i2;
    }

    public boolean b() {
        m mVar = this.f50774f;
        return mVar != null && mVar.b();
    }

    public Integer d() {
        m mVar = this.f50774f;
        if (mVar != null) {
            return mVar.a();
        }
        return null;
    }

    public void e(final m mVar) {
        this.f50772d.post(new Runnable() { // from class: h1.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f50767b.c(mVar);
            }
        });
    }

    public synchronized void f() {
        HandlerThread handlerThread = this.f50771c;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f50771c = null;
            this.f50772d = null;
        }
    }

    public synchronized void g(Runnable runnable) {
        HandlerThread handlerThread = new HandlerThread(this.f50769a, this.f50770b);
        this.f50771c = handlerThread;
        handlerThread.start();
        this.f50772d = new Handler(this.f50771c.getLooper());
        this.f50773e = runnable;
    }

    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void c(m mVar) {
        mVar.f50766b.run();
        this.f50774f = mVar;
        this.f50773e.run();
    }
}
