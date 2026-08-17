package kotlinx.coroutines.channels;

import androidx.core.location.LocationRequestCompat;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.internal.B;
import kotlinx.coroutines.internal.E;

/* loaded from: classes5.dex */
public abstract class BufferedChannelKt {

    /* renamed from: a, reason: collision with root package name */
    public static final l f51563a = new l(-1, null, null, 0);

    /* renamed from: b, reason: collision with root package name */
    public static final int f51564b = E.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);

    /* renamed from: c, reason: collision with root package name */
    public static final int f51565c = E.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    /* renamed from: d, reason: collision with root package name */
    public static final B f51566d = new B("BUFFERED");

    /* renamed from: e, reason: collision with root package name */
    public static final B f51567e = new B("SHOULD_BUFFER");

    /* renamed from: f, reason: collision with root package name */
    public static final B f51568f = new B("S_RESUMING_BY_RCV");

    /* renamed from: g, reason: collision with root package name */
    public static final B f51569g = new B("RESUMING_BY_EB");

    /* renamed from: h, reason: collision with root package name */
    public static final B f51570h = new B("POISONED");

    /* renamed from: i, reason: collision with root package name */
    public static final B f51571i = new B("DONE_RCV");

    /* renamed from: j, reason: collision with root package name */
    public static final B f51572j = new B("INTERRUPTED_SEND");

    /* renamed from: k, reason: collision with root package name */
    public static final B f51573k = new B("INTERRUPTED_RCV");

    /* renamed from: l, reason: collision with root package name */
    public static final B f51574l = new B("CHANNEL_CLOSED");

    /* renamed from: m, reason: collision with root package name */
    public static final B f51575m = new B("SUSPEND");

    /* renamed from: n, reason: collision with root package name */
    public static final B f51576n = new B("SUSPEND_NO_WAITER");

    /* renamed from: o, reason: collision with root package name */
    public static final B f51577o = new B(org.eclipse.jetty.util.component.a.FAILED);

    /* renamed from: p, reason: collision with root package name */
    public static final B f51578p = new B("NO_RECEIVE_RESULT");

    /* renamed from: q, reason: collision with root package name */
    public static final B f51579q = new B("CLOSE_HANDLER_CLOSED");

    /* renamed from: r, reason: collision with root package name */
    public static final B f51580r = new B("CLOSE_HANDLER_INVOKED");

    /* renamed from: s, reason: collision with root package name */
    public static final B f51581s = new B("NO_CLOSE_CAUSE");

    public static final long A(int i2) {
        if (i2 != 0) {
            return i2 != Integer.MAX_VALUE ? i2 : LocationRequestCompat.PASSIVE_INTERVAL;
        }
        return 0L;
    }

    public static final boolean B(InterfaceC1687l interfaceC1687l, Object obj, Function3 function3) {
        Object objD = interfaceC1687l.D(obj, null, function3);
        if (objD == null) {
            return false;
        }
        interfaceC1687l.t(objD);
        return true;
    }

    public static /* synthetic */ boolean C(InterfaceC1687l interfaceC1687l, Object obj, Function3 function3, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            function3 = null;
        }
        return B(interfaceC1687l, obj, function3);
    }

    public static final long v(long j2, boolean z2) {
        return (z2 ? 4611686018427387904L : 0L) + j2;
    }

    public static final long w(long j2, int i2) {
        return (i2 << 60) + j2;
    }

    public static final l x(long j2, l lVar) {
        return new l(j2, lVar, lVar.y(), 0);
    }

    public static final kotlin.reflect.f y() {
        return BufferedChannelKt$createSegmentFunction$1.INSTANCE;
    }

    public static final B z() {
        return f51574l;
    }
}
