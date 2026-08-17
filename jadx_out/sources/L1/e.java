package L1;

import L1.d;
import L1.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jetty.util.StringMap;

/* loaded from: classes5.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f222a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final StringMap f223b = new StringMap(true);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f224c = new ArrayList();

    public static class a extends h.a {

        /* renamed from: p, reason: collision with root package name */
        public final int f225p;

        /* renamed from: q, reason: collision with root package name */
        public HashMap f226q;

        public a(String str, int i2) {
            super(str);
            this.f226q = null;
            this.f225p = i2;
        }

        public a d(Object obj) {
            HashMap map = this.f226q;
            if (map == null) {
                return null;
            }
            return (a) map.get(obj);
        }

        public int h() {
            return this.f225p;
        }

        public void i(Object obj, a aVar) {
            if (this.f226q == null) {
                this.f226q = new HashMap();
            }
            this.f226q.put(obj, aVar);
        }
    }

    public a a(String str, int i2) {
        a aVar = new a(str, i2);
        this.f222a.put(aVar, aVar);
        this.f223b.put(str, (Object) aVar);
        while (i2 - this.f224c.size() >= 0) {
            this.f224c.add(null);
        }
        if (this.f224c.get(i2) == null) {
            this.f224c.add(i2, aVar);
        }
        return aVar;
    }

    public a b(d dVar) {
        return (a) this.f222a.get(dVar);
    }

    public a c(String str) {
        return (a) this.f223b.get(str);
    }

    public a d(byte[] bArr, int i2, int i3) {
        Map.Entry bestEntry = this.f223b.getBestEntry(bArr, i2, i3);
        if (bestEntry != null) {
            return (a) bestEntry.getValue();
        }
        return null;
    }

    public int e(d dVar) {
        if (dVar instanceof a) {
            return ((a) dVar).h();
        }
        d dVarG = g(dVar);
        if (dVarG == null || !(dVarG instanceof a)) {
            return -1;
        }
        return ((a) dVarG).h();
    }

    public int f(String str) {
        a aVar = (a) this.f223b.get(str);
        if (aVar == null) {
            return -1;
        }
        return aVar.h();
    }

    public d g(d dVar) {
        if (dVar instanceof a) {
            return dVar;
        }
        a aVarB = b(dVar);
        return aVarB == null ? dVar instanceof d.a ? dVar : new h.a(dVar.a0(), 0, dVar.length(), 0) : aVarB;
    }

    public d h(String str) {
        a aVarC = c(str);
        return aVarC == null ? new a(str, -1) : aVarC;
    }

    public String toString() {
        return "CACHE[bufferMap=" + this.f222a + ",stringMap=" + this.f223b + ",index=" + this.f224c + "]";
    }
}
