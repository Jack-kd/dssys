package j1;

import h1.C1431D;
import java.util.List;

/* renamed from: j1.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1585b implements e {
    @Override // j1.e
    public C1431D c() {
        return new C1431D(j(), k());
    }

    @Override // j1.e
    public boolean d() {
        return b("transactionId") && g() == null;
    }

    @Override // j1.e
    public Boolean e() {
        return h("inTransaction");
    }

    @Override // j1.e
    public boolean f() {
        return Boolean.TRUE.equals(a("noResult"));
    }

    @Override // j1.e
    public Integer g() {
        return (Integer) a("transactionId");
    }

    public final Boolean h(String str) {
        Object objA = a(str);
        if (objA instanceof Boolean) {
            return (Boolean) objA;
        }
        return null;
    }

    public boolean i() {
        return Boolean.TRUE.equals(a("continueOnError"));
    }

    public final String j() {
        return (String) a("sql");
    }

    public final List k() {
        return (List) a("arguments");
    }

    public String toString() {
        return getMethod() + " " + j() + " " + k();
    }
}
