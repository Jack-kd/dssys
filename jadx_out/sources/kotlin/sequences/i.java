package kotlin.sequences;

import java.util.Iterator;

/* loaded from: classes5.dex */
public abstract class i {
    public abstract Object a(Object obj, kotlin.coroutines.e eVar);

    public abstract Object b(Iterator it, kotlin.coroutines.e eVar);

    public final Object e(g gVar, kotlin.coroutines.e eVar) {
        Object objB = b(gVar.iterator(), eVar);
        return objB == kotlin.coroutines.intrinsics.a.e() ? objB : kotlin.j.f51397a;
    }
}
