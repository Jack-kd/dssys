package org.eclipse.jetty.server.handler;

import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.n;

/* loaded from: classes5.dex */
public abstract class b extends a implements N1.i {
    @Override // N1.i
    public N1.h[] F(Class cls) {
        return (N1.h[]) LazyList.toArray(a0(null, cls), cls);
    }

    public abstract Object a0(Object obj, Class cls);

    public Object b0(N1.h hVar, Object obj, Class cls) {
        if (hVar == null) {
            return obj;
        }
        if (cls == null || cls.isAssignableFrom(hVar.getClass())) {
            obj = LazyList.add(obj, hVar);
        }
        if (hVar instanceof b) {
            return ((b) hVar).a0(obj, cls);
        }
        if (!(hVar instanceof N1.i)) {
            return obj;
        }
        N1.i iVar = (N1.i) hVar;
        return LazyList.addArray(obj, cls == null ? iVar.i() : iVar.F(cls));
    }

    public N1.h c0(Class cls) {
        Object objA0 = a0(null, cls);
        if (objA0 == null) {
            return null;
        }
        return (N1.h) LazyList.get(objA0, 0);
    }

    @Override // N1.i
    public N1.h[] i() {
        return (N1.h[]) LazyList.toArray(a0(null, null), N1.h.class);
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) {
        V(appendable);
        org.eclipse.jetty.util.component.b.S(appendable, str, X(), n.a(B()));
    }
}
