package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* renamed from: kotlinx.coroutines.k, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public interface InterfaceC1685k extends E0 {

    /* renamed from: kotlinx.coroutines.k$a */
    public static final class a implements InterfaceC1685k {

        /* renamed from: b, reason: collision with root package name */
        public final Function1 f51815b;

        public a(Function1 function1) {
            this.f51815b = function1;
        }

        @Override // kotlinx.coroutines.InterfaceC1685k
        public void c(Throwable th) {
            this.f51815b.invoke(th);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + O.a(this.f51815b) + '@' + O.b(this) + ']';
        }
    }

    void c(Throwable th);
}
