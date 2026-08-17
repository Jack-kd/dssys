package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function2;

/* renamed from: kotlinx.coroutines.internal.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1668a {

    /* renamed from: a, reason: collision with root package name */
    public static final B f51773a = new B("CLOSED");

    public static final AbstractC1669b b(AbstractC1669b abstractC1669b) {
        while (true) {
            Object objG = abstractC1669b.g();
            if (objG == f51773a) {
                return abstractC1669b;
            }
            AbstractC1669b abstractC1669b2 = (AbstractC1669b) objG;
            if (abstractC1669b2 != null) {
                abstractC1669b = abstractC1669b2;
            } else if (abstractC1669b.m()) {
                return abstractC1669b;
            }
        }
    }

    public static final Object c(y yVar, long j2, Function2 function2) {
        while (true) {
            if (yVar.f51813d >= j2 && !yVar.k()) {
                return z.a(yVar);
            }
            Object objG = yVar.g();
            if (objG == f51773a) {
                return z.a(f51773a);
            }
            y yVar2 = (y) ((AbstractC1669b) objG);
            if (yVar2 == null) {
                yVar2 = (y) function2.invoke(Long.valueOf(yVar.f51813d + 1), yVar);
                if (yVar.o(yVar2)) {
                    if (yVar.k()) {
                        yVar.n();
                    }
                }
            }
            yVar = yVar2;
        }
    }
}
