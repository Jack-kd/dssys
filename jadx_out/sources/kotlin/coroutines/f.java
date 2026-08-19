package kotlin.coroutines;

import kotlin.coroutines.i;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public interface f extends i.b {
    public static final b R2 = b.f51373b;

    public static final class a {
        public static i.b a(f fVar, i.c key) {
            i.b bVarB;
            j.e(key, "key");
            if (!(key instanceof kotlin.coroutines.b)) {
                if (f.R2 != key) {
                    return null;
                }
                j.c(fVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return fVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            if (!bVar.a(fVar.getKey()) || (bVarB = bVar.b(fVar)) == null) {
                return null;
            }
            return bVarB;
        }

        public static i b(f fVar, i.c key) {
            j.e(key, "key");
            if (!(key instanceof kotlin.coroutines.b)) {
                return f.R2 == key ? EmptyCoroutineContext.INSTANCE : fVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            return (!bVar.a(fVar.getKey()) || bVar.b(fVar) == null) ? fVar : EmptyCoroutineContext.INSTANCE;
        }
    }

    public static final class b implements i.c {

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ b f51373b = new b();
    }

    e interceptContinuation(e eVar);

    void releaseInterceptedContinuation(e eVar);
}
