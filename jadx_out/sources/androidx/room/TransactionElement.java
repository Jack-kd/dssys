package androidx.room;

import androidx.annotation.RestrictTo;
import com.anythink.core.common.f.f;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.InterfaceC1705u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\fR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00000\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Landroidx/room/TransactionElement;", "Lkotlin/coroutines/i$b;", "Lkotlinx/coroutines/u0;", "transactionThreadControlJob", "Lkotlin/coroutines/f;", "transactionDispatcher", "<init>", "(Lkotlinx/coroutines/u0;Lkotlin/coroutines/f;)V", "Lkotlin/j;", "acquire", "()V", "release", "Lkotlinx/coroutines/u0;", "Lkotlin/coroutines/f;", "getTransactionDispatcher$room_ktx_release", "()Lkotlin/coroutines/f;", "Ljava/util/concurrent/atomic/AtomicInteger;", "referenceCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "Lkotlin/coroutines/i$c;", "getKey", "()Lkotlin/coroutines/i$c;", f.a.f3242b, "Key", "room-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class TransactionElement implements i.b {

    /* renamed from: Key, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final AtomicInteger referenceCount;

    @NotNull
    private final kotlin.coroutines.f transactionDispatcher;

    @NotNull
    private final InterfaceC1705u0 transactionThreadControlJob;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/TransactionElement$Key;", "Lkotlin/coroutines/i$c;", "Landroidx/room/TransactionElement;", "<init>", "()V", "room-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* renamed from: androidx.room.TransactionElement$Key, reason: from kotlin metadata */
    public static final class Companion implements i.c {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        private Companion() {
        }
    }

    public TransactionElement(@NotNull InterfaceC1705u0 transactionThreadControlJob, @NotNull kotlin.coroutines.f transactionDispatcher) {
        kotlin.jvm.internal.j.e(transactionThreadControlJob, "transactionThreadControlJob");
        kotlin.jvm.internal.j.e(transactionDispatcher, "transactionDispatcher");
        this.transactionThreadControlJob = transactionThreadControlJob;
        this.transactionDispatcher = transactionDispatcher;
        this.referenceCount = new AtomicInteger(0);
    }

    public final void acquire() {
        this.referenceCount.incrementAndGet();
    }

    @Override // kotlin.coroutines.i
    public <R> R fold(R r2, @NotNull Function2<? super R, ? super i.b, ? extends R> function2) {
        return (R) i.b.a.a(this, r2, function2);
    }

    @Override // kotlin.coroutines.i.b, kotlin.coroutines.i
    @Nullable
    public <E extends i.b> E get(@NotNull i.c cVar) {
        return (E) i.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.i.b
    @NotNull
    public i.c getKey() {
        return INSTANCE;
    }

    @NotNull
    /* renamed from: getTransactionDispatcher$room_ktx_release, reason: from getter */
    public final kotlin.coroutines.f getTransactionDispatcher() {
        return this.transactionDispatcher;
    }

    @Override // kotlin.coroutines.i
    @NotNull
    public kotlin.coroutines.i minusKey(@NotNull i.c cVar) {
        return i.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.i
    @NotNull
    public kotlin.coroutines.i plus(@NotNull kotlin.coroutines.i iVar) {
        return i.b.a.d(this, iVar);
    }

    public final void release() {
        int iDecrementAndGet = this.referenceCount.decrementAndGet();
        if (iDecrementAndGet < 0) {
            throw new IllegalStateException("Transaction was never started or was already released.");
        }
        if (iDecrementAndGet == 0) {
            InterfaceC1705u0.a.a(this.transactionThreadControlJob, null, 1, null);
        }
    }
}
