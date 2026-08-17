package androidx.view;

import com.umeng.analytics.pro.g;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.coroutines.i;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.M;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/lifecycle/CloseableCoroutineScope;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/M;", "Lkotlin/coroutines/i;", g.f49337X, "<init>", "(Lkotlin/coroutines/i;)V", "Lkotlin/j;", "close", "()V", "coroutineContext", "Lkotlin/coroutines/i;", "getCoroutineContext", "()Lkotlin/coroutines/i;", "lifecycle-viewmodel-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CloseableCoroutineScope implements Closeable, M {

    @NotNull
    private final i coroutineContext;

    public CloseableCoroutineScope(@NotNull i iVar) {
        this.coroutineContext = iVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JobKt__JobKt.d(getCoroutineContext(), null, 1, null);
    }

    @Override // kotlinx.coroutines.M
    @NotNull
    public i getCoroutineContext() {
        return this.coroutineContext;
    }
}
