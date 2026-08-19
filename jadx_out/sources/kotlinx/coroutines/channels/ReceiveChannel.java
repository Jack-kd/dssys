package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;

/* loaded from: classes5.dex */
public interface ReceiveChannel {

    public static final class DefaultImpls {
        public static /* synthetic */ void a(ReceiveChannel receiveChannel, CancellationException cancellationException, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i2 & 1) != 0) {
                cancellationException = null;
            }
            receiveChannel.a(cancellationException);
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object b(kotlinx.coroutines.channels.ReceiveChannel r4, kotlin.coroutines.e r5) throws java.lang.Throwable {
            /*
                boolean r0 = r5 instanceof kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1
                if (r0 == 0) goto L13
                r0 = r5
                kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1 r0 = (kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1 r0 = new kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1
                r0.<init>(r5)
            L18:
                java.lang.Object r5 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                kotlin.e.b(r5)
                kotlinx.coroutines.channels.j r5 = (kotlinx.coroutines.channels.j) r5
                java.lang.Object r4 = r5.k()
                goto L43
            L2f:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r5)
                throw r4
            L37:
                kotlin.e.b(r5)
                r0.label = r3
                java.lang.Object r4 = r4.p(r0)
                if (r4 != r1) goto L43
                return r1
            L43:
                java.lang.Object r4 = kotlinx.coroutines.channels.j.f(r4)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ReceiveChannel.DefaultImpls.b(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.e):java.lang.Object");
        }
    }

    void a(CancellationException cancellationException);

    ChannelIterator iterator();

    kotlinx.coroutines.selects.f n();

    Object o();

    Object p(kotlin.coroutines.e eVar);

    kotlinx.coroutines.selects.f w();

    Object y(kotlin.coroutines.e eVar);
}
