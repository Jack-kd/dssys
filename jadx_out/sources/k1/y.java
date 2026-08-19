package k1;

import com.aegis.verbanr.VerbAnrHandler;

/* loaded from: classes5.dex */
public final class y implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f51320b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f51321c;

    public y(int i2, String str) {
        this.f51320b = i2;
        this.f51321c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            VerbAnrHandler verbAnrHandler = VerbAnrHandler.f1292c;
            if (verbAnrHandler != null) {
                verbAnrHandler.a(this.f51320b, this.f51321c);
            }
        } catch (Throwable th) {
            s.b("VerbAnrHandler", "obtainFailedCallback() >>> failed.", th, new Object[0]);
        }
    }
}
