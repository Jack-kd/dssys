package z0;

import android.app.Application;
import h.AbstractC1423a;
import x0.C1799a;

/* renamed from: z0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1806a {
    public static void a(Application application, String str) throws InterruptedException {
        try {
            AbstractC1423a.a(application, str, "e8adfe58aa99c43090f84819012c2a45");
            Thread.sleep(1000L);
            C1799a.a("init", "onSuccess");
        } catch (Exception e2) {
            E0.a.a("init onFail:" + e2.toString());
            C1799a.a("init", "onError");
        }
    }
}
