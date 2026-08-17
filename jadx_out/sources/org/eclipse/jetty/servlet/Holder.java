package org.eclipse.jetty.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.Registration;
import javax.servlet.UnavailableException;
import org.eclipse.jetty.util.component.e;
import org.eclipse.jetty.util.j;

/* loaded from: classes5.dex */
public abstract class Holder extends org.eclipse.jetty.util.component.a implements e {

    /* renamed from: j, reason: collision with root package name */
    public static final R1.c f52545j = R1.b.a(Holder.class);

    /* renamed from: b, reason: collision with root package name */
    public final Source f52546b;

    /* renamed from: c, reason: collision with root package name */
    public transient Class f52547c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f52548d = new HashMap(3);

    /* renamed from: e, reason: collision with root package name */
    public String f52549e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f52550f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f52551g;

    /* renamed from: h, reason: collision with root package name */
    public String f52552h;

    /* renamed from: i, reason: collision with root package name */
    public org.eclipse.jetty.servlet.c f52553i;

    public enum Source {
        EMBEDDED,
        JAVAX_API,
        DESCRIPTOR,
        ANNOTATION
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52554a;

        static {
            int[] iArr = new int[Source.values().length];
            f52554a = iArr;
            try {
                iArr[Source.JAVAX_API.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52554a[Source.DESCRIPTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52554a[Source.ANNOTATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class b {
        public b() {
        }
    }

    public class c implements Registration.Dynamic {
        public c() {
        }
    }

    public Holder(Source source) {
        this.f52546b = source;
        int i2 = a.f52554a[source.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            this.f52551g = false;
        } else {
            this.f52551g = true;
        }
    }

    public String P() {
        return this.f52549e;
    }

    public Class Q() {
        return this.f52547c;
    }

    public String R(String str) {
        Map map = this.f52548d;
        if (map == null) {
            return null;
        }
        return (String) map.get(str);
    }

    public org.eclipse.jetty.servlet.c S() {
        return this.f52553i;
    }

    public Source T() {
        return this.f52546b;
    }

    public boolean U() {
        return this.f52551g;
    }

    public void V(String str) {
        this.f52549e = str;
        this.f52547c = null;
        if (this.f52552h == null) {
            this.f52552h = str + "-" + Integer.toHexString(hashCode());
        }
    }

    public void W(Class cls) {
        this.f52547c = cls;
        if (cls != null) {
            this.f52549e = cls.getName();
            if (this.f52552h == null) {
                this.f52552h = cls.getName() + "-" + Integer.toHexString(hashCode());
            }
        }
    }

    public void X(String str, String str2) {
        this.f52548d.put(str, str2);
    }

    public void Y(String str) {
        this.f52552h = str;
    }

    public void Z(org.eclipse.jetty.servlet.c cVar) {
        this.f52553i = cVar;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.UnavailableException */
    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws UnavailableException {
        String str;
        if (this.f52547c == null && ((str = this.f52549e) == null || str.equals(""))) {
            throw new UnavailableException("No class for Servlet or Filter for " + this.f52552h);
        }
        if (this.f52547c == null) {
            try {
                this.f52547c = j.c(Holder.class, this.f52549e);
                R1.c cVar = f52545j;
                if (cVar.f()) {
                    cVar.i("Holding {}", this.f52547c);
                }
            } catch (Exception e2) {
                f52545j.e(e2);
                throw new UnavailableException(e2.getMessage());
            }
        }
    }

    public String getName() {
        return this.f52552h;
    }

    @Override // org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) throws IOException {
        appendable.append(this.f52552h).append("==").append(this.f52549e).append(" - ").append(org.eclipse.jetty.util.component.a.getState(this)).append("\n");
        org.eclipse.jetty.util.component.b.S(appendable, str, this.f52548d.entrySet());
    }

    public String toString() {
        return this.f52552h;
    }
}
