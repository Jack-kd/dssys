package kotlinx.coroutines;

import kotlin.jvm.functions.Function3;

/* renamed from: kotlinx.coroutines.z, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1712z {

    /* renamed from: a, reason: collision with root package name */
    public final Object f51939a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1685k f51940b;

    /* renamed from: c, reason: collision with root package name */
    public final Function3 f51941c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f51942d;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f51943e;

    public C1712z(Object obj, InterfaceC1685k interfaceC1685k, Function3 function3, Object obj2, Throwable th) {
        this.f51939a = obj;
        this.f51940b = interfaceC1685k;
        this.f51941c = function3;
        this.f51942d = obj2;
        this.f51943e = th;
    }

    public static /* synthetic */ C1712z b(C1712z c1712z, Object obj, InterfaceC1685k interfaceC1685k, Function3 function3, Object obj2, Throwable th, int i2, Object obj3) {
        if ((i2 & 1) != 0) {
            obj = c1712z.f51939a;
        }
        if ((i2 & 2) != 0) {
            interfaceC1685k = c1712z.f51940b;
        }
        if ((i2 & 4) != 0) {
            function3 = c1712z.f51941c;
        }
        if ((i2 & 8) != 0) {
            obj2 = c1712z.f51942d;
        }
        if ((i2 & 16) != 0) {
            th = c1712z.f51943e;
        }
        Throwable th2 = th;
        Function3 function32 = function3;
        return c1712z.a(obj, interfaceC1685k, function32, obj2, th2);
    }

    public final C1712z a(Object obj, InterfaceC1685k interfaceC1685k, Function3 function3, Object obj2, Throwable th) {
        return new C1712z(obj, interfaceC1685k, function3, obj2, th);
    }

    public final boolean c() {
        return this.f51943e != null;
    }

    public final void d(C1691n c1691n, Throwable th) {
        InterfaceC1685k interfaceC1685k = this.f51940b;
        if (interfaceC1685k != null) {
            c1691n.l(interfaceC1685k, th);
        }
        Function3 function3 = this.f51941c;
        if (function3 != null) {
            c1691n.m(function3, th, this.f51939a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1712z)) {
            return false;
        }
        C1712z c1712z = (C1712z) obj;
        return kotlin.jvm.internal.j.a(this.f51939a, c1712z.f51939a) && kotlin.jvm.internal.j.a(this.f51940b, c1712z.f51940b) && kotlin.jvm.internal.j.a(this.f51941c, c1712z.f51941c) && kotlin.jvm.internal.j.a(this.f51942d, c1712z.f51942d) && kotlin.jvm.internal.j.a(this.f51943e, c1712z.f51943e);
    }

    public int hashCode() {
        Object obj = this.f51939a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        InterfaceC1685k interfaceC1685k = this.f51940b;
        int iHashCode2 = (iHashCode + (interfaceC1685k == null ? 0 : interfaceC1685k.hashCode())) * 31;
        Function3 function3 = this.f51941c;
        int iHashCode3 = (iHashCode2 + (function3 == null ? 0 : function3.hashCode())) * 31;
        Object obj2 = this.f51942d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f51943e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f51939a + ", cancelHandler=" + this.f51940b + ", onCancellation=" + this.f51941c + ", idempotentResume=" + this.f51942d + ", cancelCause=" + this.f51943e + ')';
    }

    public /* synthetic */ C1712z(Object obj, InterfaceC1685k interfaceC1685k, Function3 function3, Object obj2, Throwable th, int i2, kotlin.jvm.internal.f fVar) {
        this(obj, (i2 & 2) != 0 ? null : interfaceC1685k, (i2 & 4) != 0 ? null : function3, (i2 & 8) != 0 ? null : obj2, (i2 & 16) != 0 ? null : th);
    }
}
