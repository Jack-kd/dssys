package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.B0;

/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public static final q f51805a;

    /* renamed from: b, reason: collision with root package name */
    public static final B0 f51806b;

    static {
        q qVar = new q();
        f51805a = qVar;
        C.f("kotlinx.coroutines.fast.service.loader", true);
        f51806b = qVar.a();
    }

    public final B0 a() {
        Object next;
        B0 b0E;
        try {
            List listC = kotlin.sequences.q.C(kotlin.sequences.n.e(ServiceLoader.load(p.class, p.class.getClassLoader()).iterator()));
            Iterator it = listC.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iA = ((p) next).a();
                    do {
                        Object next2 = it.next();
                        int iA2 = ((p) next2).a();
                        if (iA < iA2) {
                            next = next2;
                            iA = iA2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            p pVar = (p) next;
            if (pVar != null && (b0E = r.e(pVar, listC)) != null) {
                return b0E;
            }
            return r.b(null, null, 3, null);
        } catch (Throwable th) {
            return r.b(th, null, 2, null);
        }
    }
}
