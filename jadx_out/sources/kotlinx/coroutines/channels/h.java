package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractC1625a;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.y0;

/* loaded from: classes5.dex */
public abstract class h extends AbstractC1625a implements g {

    /* renamed from: e, reason: collision with root package name */
    public final g f51592e;

    public h(kotlin.coroutines.i iVar, g gVar, boolean z2, boolean z3) {
        super(iVar, z2, z3);
        this.f51592e = gVar;
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean C(Throwable th) {
        return this.f51592e.C(th);
    }

    @Override // kotlinx.coroutines.channels.s
    public Object E(Object obj, kotlin.coroutines.e eVar) {
        return this.f51592e.E(obj, eVar);
    }

    @Override // kotlinx.coroutines.y0
    public void R(Throwable th) {
        CancellationException cancellationExceptionL0 = y0.L0(this, th, null, 1, null);
        this.f51592e.a(cancellationExceptionL0);
        P(cancellationExceptionL0);
    }

    public final g W0() {
        return this;
    }

    public final g X0() {
        return this.f51592e;
    }

    @Override // kotlinx.coroutines.y0, kotlinx.coroutines.InterfaceC1705u0, kotlinx.coroutines.channels.ReceiveChannel
    public final void a(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(U(), null, this);
        }
        R(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public ChannelIterator iterator() {
        return this.f51592e.iterator();
    }

    @Override // kotlinx.coroutines.channels.s
    public void k(Function1 function1) {
        this.f51592e.k(function1);
    }

    @Override // kotlinx.coroutines.channels.s
    public Object l(Object obj) {
        return this.f51592e.l(obj);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public kotlinx.coroutines.selects.f n() {
        return this.f51592e.n();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object o() {
        return this.f51592e.o();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object p(kotlin.coroutines.e eVar) {
        Object objP = this.f51592e.p(eVar);
        kotlin.coroutines.intrinsics.a.e();
        return objP;
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean r() {
        return this.f51592e.r();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public kotlinx.coroutines.selects.f w() {
        return this.f51592e.w();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object y(kotlin.coroutines.e eVar) {
        return this.f51592e.y(eVar);
    }
}
