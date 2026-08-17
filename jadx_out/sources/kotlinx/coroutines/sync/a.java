package kotlinx.coroutines.sync;

/* loaded from: classes5.dex */
public interface a {

    /* renamed from: kotlinx.coroutines.sync.a$a, reason: collision with other inner class name */
    public static final class C0877a {
        public static /* synthetic */ boolean a(a aVar, Object obj, int i2, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryLock");
            }
            if ((i2 & 1) != 0) {
                obj = null;
            }
            return aVar.a(obj);
        }

        public static /* synthetic */ void b(a aVar, Object obj, int i2, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
            }
            if ((i2 & 1) != 0) {
                obj = null;
            }
            aVar.c(obj);
        }
    }

    boolean a(Object obj);

    Object b(Object obj, kotlin.coroutines.e eVar);

    void c(Object obj);
}
