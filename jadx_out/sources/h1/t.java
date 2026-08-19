package h1;

import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: classes5.dex */
public class t implements p {

    /* renamed from: a, reason: collision with root package name */
    public final String f50786a;

    /* renamed from: b, reason: collision with root package name */
    public final int f50787b;

    /* renamed from: c, reason: collision with root package name */
    public HandlerThread f50788c;

    /* renamed from: d, reason: collision with root package name */
    public Handler f50789d;

    public t(String str, int i2) {
        this.f50786a = str;
        this.f50787b = i2;
    }

    @Override // h1.p
    public void c(m mVar) {
        this.f50789d.post(mVar.f50766b);
    }

    @Override // h1.p
    public void d() {
        HandlerThread handlerThread = this.f50788c;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f50788c = null;
            this.f50789d = null;
        }
    }

    @Override // h1.p
    public void start() {
        HandlerThread handlerThread = new HandlerThread(this.f50786a, this.f50787b);
        this.f50788c = handlerThread;
        handlerThread.start();
        this.f50789d = new Handler(this.f50788c.getLooper());
    }
}
