package F1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.i;
import kotlin.j;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractC1709w0;
import kotlinx.coroutines.D0;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.T;
import kotlinx.coroutines.X;
import kotlinx.coroutines.Z;

/* loaded from: classes5.dex */
public final class e extends f implements T {

    /* renamed from: b, reason: collision with root package name */
    public final Handler f82b;

    /* renamed from: c, reason: collision with root package name */
    public final String f83c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f84d;

    /* renamed from: e, reason: collision with root package name */
    public final e f85e;

    public static final class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1687l f86b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ e f87c;

        public a(InterfaceC1687l interfaceC1687l, e eVar) {
            this.f86b = interfaceC1687l;
            this.f87c = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f86b.x(this.f87c, j.f51397a);
        }
    }

    public e(Handler handler, String str, boolean z2) {
        super(null);
        this.f82b = handler;
        this.f83c = str;
        this.f84d = z2;
        this.f85e = z2 ? this : new e(handler, str, true);
    }

    public static final void J(e eVar, Runnable runnable) {
        eVar.f82b.removeCallbacks(runnable);
    }

    public static final j K(e eVar, Runnable runnable, Throwable th) {
        eVar.f82b.removeCallbacks(runnable);
        return j.f51397a;
    }

    public final void H(i iVar, Runnable runnable) {
        AbstractC1709w0.c(iVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        X.b().dispatch(iVar, runnable);
    }

    @Override // kotlinx.coroutines.B0
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public e C() {
        return this.f85e;
    }

    @Override // kotlinx.coroutines.T
    public void d(long j2, InterfaceC1687l interfaceC1687l) {
        final a aVar = new a(interfaceC1687l, this);
        if (this.f82b.postDelayed(aVar, E1.f.e(j2, 4611686018427387903L))) {
            interfaceC1687l.v(new Function1() { // from class: F1.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return e.K(this.f80b, aVar, (Throwable) obj);
                }
            });
        } else {
            H(interfaceC1687l.getContext(), aVar);
        }
    }

    @Override // kotlinx.coroutines.H
    public void dispatch(i iVar, Runnable runnable) {
        if (this.f82b.post(runnable)) {
            return;
        }
        H(iVar, runnable);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return eVar.f82b == this.f82b && eVar.f84d == this.f84d;
    }

    @Override // kotlinx.coroutines.T
    public Z f(long j2, final Runnable runnable, i iVar) {
        if (this.f82b.postDelayed(runnable, E1.f.e(j2, 4611686018427387903L))) {
            return new Z() { // from class: F1.c
                @Override // kotlinx.coroutines.Z
                public final void dispose() {
                    e.J(this.f78b, runnable);
                }
            };
        }
        H(iVar, runnable);
        return D0.f51515b;
    }

    public int hashCode() {
        return System.identityHashCode(this.f82b) ^ (this.f84d ? 1231 : 1237);
    }

    @Override // kotlinx.coroutines.H
    public boolean isDispatchNeeded(i iVar) {
        return (this.f84d && kotlin.jvm.internal.j.a(Looper.myLooper(), this.f82b.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        String strD = D();
        if (strD != null) {
            return strD;
        }
        String string = this.f83c;
        if (string == null) {
            string = this.f82b.toString();
        }
        if (!this.f84d) {
            return string;
        }
        return string + ".immediate";
    }

    public /* synthetic */ e(Handler handler, String str, int i2, kotlin.jvm.internal.f fVar) {
        this(handler, (i2 & 2) != 0 ? null : str);
    }

    public e(Handler handler, String str) {
        this(handler, str, false);
    }
}
