package k1;

import android.util.Log;

/* loaded from: classes5.dex */
public final class z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f51322b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ B f51323c;

    public z(B b3, w wVar) {
        this.f51323c = b3;
        this.f51322b = wVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            synchronized (B.f51264d) {
                B b3 = this.f51323c;
                if (!b3.f51268c) {
                    System.loadLibrary("verbanr");
                    b3.f51268c = true;
                }
                B.a(this.f51323c, this.f51322b);
            }
        } catch (Throwable th) {
            s.b("x", "startVerb() >>> init verb anr failed. ", th, new Object[0]);
            this.f51323c.f51267b = false;
            String str = th + ":" + th.getMessage();
            if (h.f51286a) {
                Log.e("AnrHandler", "VerbAnr failed: code=0, msg=" + str);
            }
        }
    }
}
