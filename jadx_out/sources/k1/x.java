package k1;

import com.aegis.verbanr.VerbAnrHandler;
import java.io.File;

/* loaded from: classes5.dex */
public final class x implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ File f51317b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VerbAnrHandler f51318c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f51319d;

    public x(long j2, VerbAnrHandler verbAnrHandler, File file) {
        this.f51317b = file;
        this.f51318c = verbAnrHandler;
        this.f51319d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f51317b.exists() && this.f51317b.length() != 0) {
                VerbAnrHandler.e(this.f51317b, this.f51319d);
                VerbAnrHandler.d(this.f51317b);
                VerbAnrHandler.b(this.f51319d, this.f51318c, this.f51317b);
                return;
            }
            s.b("VerbAnrHandler", "stackCallback() >>> file gone: %s", null, this.f51317b.getAbsolutePath());
            this.f51318c.a(-1000, "stack file missing: " + this.f51317b.getAbsolutePath());
        } catch (Throwable th) {
            s.b("VerbAnrHandler", "stackCallback() >>> failed.", th, new Object[0]);
            this.f51318c.a(-1000, th + ":" + th.getMessage());
        }
    }
}
