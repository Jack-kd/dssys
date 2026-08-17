package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.y;

/* loaded from: classes5.dex */
public final class l extends y {

    /* renamed from: f, reason: collision with root package name */
    public final BufferedChannel f51597f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f51598g;

    public l(long j2, l lVar, BufferedChannel bufferedChannel, int i2) {
        super(j2, lVar, i2);
        this.f51597f = bufferedChannel;
        this.f51598g = new AtomicReferenceArray(BufferedChannelKt.f51564b * 2);
    }

    public final Object A(int i2) {
        return z().get(i2 * 2);
    }

    public final Object B(int i2) {
        return z().get((i2 * 2) + 1);
    }

    public final void C(int i2, boolean z2) {
        if (z2) {
            y().C1((this.f51813d * BufferedChannelKt.f51564b) + i2);
        }
        t();
    }

    public final Object D(int i2) {
        Object objA = A(i2);
        w(i2);
        return objA;
    }

    public final void E(int i2, Object obj) {
        z().set(i2 * 2, obj);
    }

    public final void F(int i2, Object obj) {
        z().set((i2 * 2) + 1, obj);
    }

    public final void G(int i2, Object obj) {
        E(i2, obj);
    }

    @Override // kotlinx.coroutines.internal.y
    public int r() {
        return BufferedChannelKt.f51564b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0062, code lost:
    
        w(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0065, code lost:
    
        if (r0 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0067, code lost:
    
        r4 = y().f51558c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006d, code lost:
    
        if (r4 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006f, code lost:
    
        kotlinx.coroutines.internal.u.a(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0072, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(int r4, java.lang.Throwable r5, kotlin.coroutines.i r6) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.f51564b
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.A(r4)
        Le:
            java.lang.Object r1 = r3.B(r4)
            boolean r2 = r1 instanceof kotlinx.coroutines.U0
            if (r2 != 0) goto L73
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.t
            if (r2 == 0) goto L1b
            goto L73
        L1b:
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.j()
            if (r1 == r2) goto L62
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.i()
            if (r1 != r2) goto L28
            goto L62
        L28:
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.p()
            if (r1 == r2) goto Le
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.q()
            if (r1 != r2) goto L35
            goto Le
        L35:
            kotlinx.coroutines.internal.B r4 = kotlinx.coroutines.channels.BufferedChannelKt.f()
            if (r1 == r4) goto L99
            kotlinx.coroutines.internal.B r4 = kotlinx.coroutines.channels.BufferedChannelKt.f51566d
            if (r1 != r4) goto L40
            goto L99
        L40:
            kotlinx.coroutines.internal.B r4 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            if (r1 != r4) goto L47
            goto L99
        L47:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "unexpected state: "
            r5.append(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L62:
            r3.w(r4)
            if (r0 == 0) goto L99
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.y()
            kotlin.jvm.functions.Function1 r4 = r4.f51558c
            if (r4 == 0) goto L99
            kotlinx.coroutines.internal.u.a(r4, r5, r6)
            return
        L73:
            if (r0 == 0) goto L7a
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.j()
            goto L7e
        L7a:
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.i()
        L7e:
            boolean r1 = r3.v(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.w(r4)
            r1 = r0 ^ 1
            r3.C(r4, r1)
            if (r0 == 0) goto L99
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.y()
            kotlin.jvm.functions.Function1 r4 = r4.f51558c
            if (r4 == 0) goto L99
            kotlinx.coroutines.internal.u.a(r4, r5, r6)
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.s(int, java.lang.Throwable, kotlin.coroutines.i):void");
    }

    public final boolean v(int i2, Object obj, Object obj2) {
        return k.a(z(), (i2 * 2) + 1, obj, obj2);
    }

    public final void w(int i2) {
        E(i2, null);
    }

    public final Object x(int i2, Object obj) {
        return z().getAndSet((i2 * 2) + 1, obj);
    }

    public final BufferedChannel y() {
        BufferedChannel bufferedChannel = this.f51597f;
        kotlin.jvm.internal.j.b(bufferedChannel);
        return bufferedChannel;
    }

    public final /* synthetic */ AtomicReferenceArray z() {
        return this.f51598g;
    }
}
