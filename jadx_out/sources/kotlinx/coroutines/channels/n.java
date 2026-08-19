package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.j;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.u;

/* loaded from: classes5.dex */
public class n extends BufferedChannel {

    /* renamed from: n, reason: collision with root package name */
    public final int f51599n;

    /* renamed from: o, reason: collision with root package name */
    public final BufferOverflow f51600o;

    public n(int i2, BufferOverflow bufferOverflow, Function1 function1) {
        super(i2, function1);
        this.f51599n = i2;
        this.f51600o = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + kotlin.jvm.internal.m.b(BufferedChannel.class).d() + " instead").toString());
        }
        if (i2 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i2 + " was specified").toString());
    }

    public static /* synthetic */ Object D1(n nVar, Object obj, kotlin.coroutines.e eVar) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionC;
        Object objF1 = nVar.F1(obj, true);
        if (!(objF1 instanceof j.a)) {
            return kotlin.j.f51397a;
        }
        j.e(objF1);
        Function1 function1 = nVar.f51558c;
        if (function1 == null || (undeliveredElementExceptionC = u.c(function1, obj, null, 2, null)) == null) {
            throw nVar.q0();
        }
        kotlin.a.a(undeliveredElementExceptionC, nVar.q0());
        throw undeliveredElementExceptionC;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    public Object E(Object obj, kotlin.coroutines.e eVar) {
        return D1(this, obj, eVar);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean E0() {
        return this.f51600o == BufferOverflow.DROP_OLDEST;
    }

    public final Object E1(Object obj, boolean z2) {
        Function1 function1;
        UndeliveredElementException undeliveredElementExceptionC;
        Object objL = super.l(obj);
        if (j.i(objL) || j.h(objL)) {
            return objL;
        }
        if (!z2 || (function1 = this.f51558c) == null || (undeliveredElementExceptionC = u.c(function1, obj, null, 2, null)) == null) {
            return j.f51593b.c(kotlin.j.f51397a);
        }
        throw undeliveredElementExceptionC;
    }

    public final Object F1(Object obj, boolean z2) {
        return this.f51600o == BufferOverflow.DROP_LATEST ? E1(obj, z2) : t1(obj);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public void j1(kotlinx.coroutines.selects.i iVar, Object obj) {
        Object objL = l(obj);
        if (!(objL instanceof j.c)) {
            iVar.d(kotlin.j.f51397a);
        } else {
            if (!(objL instanceof j.a)) {
                throw new IllegalStateException("unreachable");
            }
            j.e(objL);
            iVar.d(BufferedChannelKt.z());
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    public Object l(Object obj) {
        return F1(obj, false);
    }
}
