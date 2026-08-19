package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public interface s {

    public static final class a {
        public static /* synthetic */ boolean a(s sVar, Throwable th, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i2 & 1) != 0) {
                th = null;
            }
            return sVar.C(th);
        }
    }

    boolean C(Throwable th);

    Object E(Object obj, kotlin.coroutines.e eVar);

    void k(Function1 function1);

    Object l(Object obj);

    boolean r();
}
