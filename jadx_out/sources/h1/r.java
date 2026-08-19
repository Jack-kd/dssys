package h1;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public class r implements p {

    /* renamed from: a, reason: collision with root package name */
    public final String f50779a;

    /* renamed from: b, reason: collision with root package name */
    public final int f50780b;

    /* renamed from: c, reason: collision with root package name */
    public final int f50781c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedList f50782d = new LinkedList();

    /* renamed from: e, reason: collision with root package name */
    public final Set f50783e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    public final Set f50784f = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    public final Map f50785g = new HashMap();

    public r(String str, int i2, int i3) {
        this.f50779a = str;
        this.f50780b = i2;
        this.f50781c = i3;
    }

    @Override // h1.p
    public synchronized void c(m mVar) {
        this.f50782d.add(mVar);
        Iterator it = new HashSet(this.f50783e).iterator();
        while (it.hasNext()) {
            j((o) it.next());
        }
    }

    @Override // h1.p
    public synchronized void d() {
        try {
            Iterator it = this.f50783e.iterator();
            while (it.hasNext()) {
                ((o) it.next()).f();
            }
            Iterator it2 = this.f50784f.iterator();
            while (it2.hasNext()) {
                ((o) it2.next()).f();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public o f(String str, int i2) {
        return new o(str, i2);
    }

    public final synchronized m g(o oVar) {
        m mVar;
        o oVar2;
        try {
            ListIterator listIterator = this.f50782d.listIterator();
            do {
                if (!listIterator.hasNext()) {
                    return null;
                }
                mVar = (m) listIterator.next();
                oVar2 = mVar.a() != null ? (o) this.f50785g.get(mVar.a()) : null;
                if (oVar2 == null) {
                    break;
                }
            } while (oVar2 != oVar);
            listIterator.remove();
            return mVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final synchronized void h(o oVar) {
        try {
            HashSet hashSet = new HashSet(this.f50783e);
            this.f50784f.remove(oVar);
            this.f50783e.add(oVar);
            if (!oVar.b() && oVar.d() != null) {
                this.f50785g.remove(oVar.d());
            }
            j(oVar);
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                j((o) it.next());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j(o oVar) {
        try {
            m mVarG = g(oVar);
            if (mVarG != null) {
                this.f50784f.add(oVar);
                this.f50783e.remove(oVar);
                if (mVarG.a() != null) {
                    this.f50785g.put(mVarG.a(), oVar);
                }
                oVar.e(mVarG);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // h1.p
    public synchronized void start() {
        for (int i2 = 0; i2 < this.f50780b; i2++) {
            final o oVarF = f(this.f50779a + i2, this.f50781c);
            oVarF.g(new Runnable() { // from class: h1.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f50777b.h(oVarF);
                }
            });
            this.f50783e.add(oVarF);
        }
    }
}
