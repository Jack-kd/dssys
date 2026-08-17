package M1;

import java.security.Principal;
import org.eclipse.jetty.server.handler.d;
import org.eclipse.jetty.server.handler.h;
import t.f;

/* loaded from: classes5.dex */
public abstract class c extends h {

    /* renamed from: h, reason: collision with root package name */
    public static final R1.c f236h = R1.b.a(c.class);

    /* renamed from: i, reason: collision with root package name */
    public static Principal f237i = new a();

    /* renamed from: j, reason: collision with root package name */
    public static Principal f238j = new b();

    public static class a implements Principal {
        @Override // java.security.Principal
        public String getName() {
            return null;
        }

        @Override // java.security.Principal
        public String toString() {
            return "No User";
        }
    }

    public static class b implements Principal {
        @Override // java.security.Principal
        public String getName() {
            return "Nobody";
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }
    }

    public static c f0() {
        d.C0881d c0881dW0 = d.w0();
        if (c0881dW0 == null) {
            return null;
        }
        f.a(c0881dW0.c().c0(c.class));
        return null;
    }
}
