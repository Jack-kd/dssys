package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* renamed from: kotlinx.coroutines.u0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public interface InterfaceC1705u0 extends i.b {
    public static final b T2 = b.f51921b;

    /* renamed from: kotlinx.coroutines.u0$a */
    public static final class a {
        public static /* synthetic */ void a(InterfaceC1705u0 interfaceC1705u0, CancellationException cancellationException, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i2 & 1) != 0) {
                cancellationException = null;
            }
            interfaceC1705u0.a(cancellationException);
        }

        public static Object b(InterfaceC1705u0 interfaceC1705u0, Object obj, Function2 function2) {
            return i.b.a.a(interfaceC1705u0, obj, function2);
        }

        public static i.b c(InterfaceC1705u0 interfaceC1705u0, i.c cVar) {
            return i.b.a.b(interfaceC1705u0, cVar);
        }

        public static kotlin.coroutines.i d(InterfaceC1705u0 interfaceC1705u0, i.c cVar) {
            return i.b.a.c(interfaceC1705u0, cVar);
        }

        public static kotlin.coroutines.i e(InterfaceC1705u0 interfaceC1705u0, kotlin.coroutines.i iVar) {
            return i.b.a.d(interfaceC1705u0, iVar);
        }
    }

    /* renamed from: kotlinx.coroutines.u0$b */
    public static final class b implements i.c {

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ b f51921b = new b();
    }

    Object A(kotlin.coroutines.e eVar);

    void a(CancellationException cancellationException);

    Z e(Function1 function1);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    InterfaceC1700s s(InterfaceC1704u interfaceC1704u);

    boolean start();

    Z u(boolean z2, boolean z3, Function1 function1);

    CancellationException z();
}
