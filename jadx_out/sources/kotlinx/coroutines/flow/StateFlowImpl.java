package kotlinx.coroutines.flow;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes5.dex */
public final class StateFlowImpl extends kotlinx.coroutines.flow.internal.a implements j0, InterfaceC1639c, kotlinx.coroutines.flow.internal.k {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51688g = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: f, reason: collision with root package name */
    public int f51689f;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSIONS, 401, 406}, m = "collect", n = {"this", "collector", "slot", "this", "collector", "slot", "collectorJob", "newState", "this", "collector", "slot", "collectorJob", "oldState"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    /* renamed from: kotlinx.coroutines.flow.StateFlowImpl$collect$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(kotlin.coroutines.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StateFlowImpl.this.collect(null, this);
        }
    }

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    @Override // kotlinx.coroutines.flow.j0
    public boolean a(Object obj, Object obj2) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.n.f51725a;
        }
        if (obj2 == null) {
            obj2 = kotlinx.coroutines.flow.internal.n.f51725a;
        }
        return q(obj, obj2);
    }

    @Override // kotlinx.coroutines.flow.i0
    public void b() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.i0
    public boolean c(Object obj) {
        setValue(obj);
        return true;
    }

    /* JADX WARN: Path cross not found for [B:29:0x008f, B:45:0x00c5], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:33:0x009e, B:35:0x00a4], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:35:0x00a4, B:33:0x009e], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:35:0x00a4, B:43:0x00bf], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:45:0x00c5, B:29:0x008f], limit reached: 48 */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00c3 -> B:29:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d5 -> B:29:0x008f). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.m0, kotlinx.coroutines.flow.InterfaceC1639c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.InterfaceC1640d r11, kotlin.coroutines.e r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(kotlinx.coroutines.flow.d, kotlin.coroutines.e):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.internal.k
    public InterfaceC1639c d(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return t0.d(this, iVar, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.InterfaceC1640d
    public Object emit(Object obj, kotlin.coroutines.e eVar) {
        setValue(obj);
        return kotlin.j.f51397a;
    }

    @Override // kotlinx.coroutines.flow.j0, kotlinx.coroutines.flow.s0
    public Object getValue() {
        kotlinx.coroutines.internal.B b3 = kotlinx.coroutines.flow.internal.n.f51725a;
        Object obj = f51688g.get(this);
        if (obj == b3) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.internal.a
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public u0 i() {
        return new u0();
    }

    @Override // kotlinx.coroutines.flow.internal.a
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public u0[] j(int i2) {
        return new u0[i2];
    }

    public final boolean q(Object obj, Object obj2) {
        int i2;
        kotlinx.coroutines.flow.internal.c[] cVarArrM;
        synchronized (this) {
            Object obj3 = f51688g.get(this);
            if (obj != null && !kotlin.jvm.internal.j.a(obj3, obj)) {
                return false;
            }
            if (kotlin.jvm.internal.j.a(obj3, obj2)) {
                return true;
            }
            f51688g.set(this, obj2);
            int i3 = this.f51689f;
            if ((i3 & 1) != 0) {
                this.f51689f = i3 + 2;
                return true;
            }
            int i4 = i3 + 1;
            this.f51689f = i4;
            kotlinx.coroutines.flow.internal.c[] cVarArrM2 = m();
            kotlin.j jVar = kotlin.j.f51397a;
            while (true) {
                u0[] u0VarArr = (u0[]) cVarArrM2;
                if (u0VarArr != null) {
                    for (u0 u0Var : u0VarArr) {
                        if (u0Var != null) {
                            u0Var.g();
                        }
                    }
                }
                synchronized (this) {
                    i2 = this.f51689f;
                    if (i2 == i4) {
                        this.f51689f = i4 + 1;
                        return true;
                    }
                    cVarArrM = m();
                    kotlin.j jVar2 = kotlin.j.f51397a;
                }
                cVarArrM2 = cVarArrM;
                i4 = i2;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.j0
    public void setValue(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.n.f51725a;
        }
        q(null, obj);
    }
}
