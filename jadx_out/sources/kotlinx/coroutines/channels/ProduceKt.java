package kotlinx.coroutines.channels;

import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.F;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.M;

/* loaded from: classes5.dex */
public abstract class ProduceKt {

    public static final class a implements Function1 {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1687l f51582b;

        public a(InterfaceC1687l interfaceC1687l) {
            this.f51582b = interfaceC1687l;
        }

        public final void a(Throwable th) {
            InterfaceC1687l interfaceC1687l = this.f51582b;
            Result.Companion companion = Result.INSTANCE;
            interfaceC1687l.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return kotlin.j.f51397a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.channels.q r4, kotlin.jvm.functions.Function0 r5, kotlin.coroutines.e r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = (kotlinx.coroutines.channels.ProduceKt$awaitClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.L$1
            r5 = r4
            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.channels.q r4 = (kotlinx.coroutines.channels.q) r4
            kotlin.e.b(r6)     // Catch: java.lang.Throwable -> L32
            goto L75
        L32:
            r4 = move-exception
            goto L7b
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            kotlin.e.b(r6)
            kotlin.coroutines.i r6 = r0.getContext()
            kotlinx.coroutines.u0$b r2 = kotlinx.coroutines.InterfaceC1705u0.T2
            kotlin.coroutines.i$b r6 = r6.get(r2)
            if (r6 != r4) goto L7f
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L32
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L32
            r0.label = r3     // Catch: java.lang.Throwable -> L32
            kotlinx.coroutines.n r6 = new kotlinx.coroutines.n     // Catch: java.lang.Throwable -> L32
            kotlin.coroutines.e r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.c(r0)     // Catch: java.lang.Throwable -> L32
            r6.<init>(r2, r3)     // Catch: java.lang.Throwable -> L32
            r6.F()     // Catch: java.lang.Throwable -> L32
            kotlinx.coroutines.channels.ProduceKt$a r2 = new kotlinx.coroutines.channels.ProduceKt$a     // Catch: java.lang.Throwable -> L32
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L32
            r4.k(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.Object r4 = r6.y()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r6 = kotlin.coroutines.intrinsics.a.e()     // Catch: java.lang.Throwable -> L32
            if (r4 != r6) goto L72
            w1.AbstractC1795e.c(r0)     // Catch: java.lang.Throwable -> L32
        L72:
            if (r4 != r1) goto L75
            return r1
        L75:
            r5.invoke()
            kotlin.j r4 = kotlin.j.f51397a
            return r4
        L7b:
            r5.invoke()
            throw r4
        L7f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ProduceKt.a(kotlinx.coroutines.channels.q, kotlin.jvm.functions.Function0, kotlin.coroutines.e):java.lang.Object");
    }

    public static final ReceiveChannel b(M m2, kotlin.coroutines.i iVar, int i2, Function2 function2) {
        return c(m2, iVar, i2, BufferOverflow.SUSPEND, CoroutineStart.DEFAULT, null, function2);
    }

    public static final ReceiveChannel c(M m2, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2) {
        p pVar = new p(F.k(m2, iVar), i.b(i2, bufferOverflow, null, 4, null));
        if (function1 != null) {
            pVar.e(function1);
        }
        pVar.V0(coroutineStart, pVar, function2);
        return pVar;
    }

    public static /* synthetic */ ReceiveChannel d(M m2, kotlin.coroutines.i iVar, int i2, Function2 function2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return b(m2, iVar, i2, function2);
    }

    public static /* synthetic */ ReceiveChannel e(M m2, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i3 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        if ((i3 & 16) != 0) {
            function1 = null;
        }
        Function1 function12 = function1;
        return c(m2, iVar, i2, bufferOverflow, coroutineStart, function12, function2);
    }
}
