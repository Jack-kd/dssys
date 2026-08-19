package androidx.view;

import androidx.annotation.MainThread;
import com.sigmob.sdk.base.n;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AbstractC1662g;
import kotlinx.coroutines.AbstractC1666i;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;
import kotlinx.coroutines.X;
import kotlinx.coroutines.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bH\u0086@¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\nR\u0018\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000eR\u0018\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/EmittedSource;", "Lkotlinx/coroutines/Z;", "Landroidx/lifecycle/LiveData;", n.f36449l, "Landroidx/lifecycle/MediatorLiveData;", "mediator", "<init>", "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/MediatorLiveData;)V", "Lkotlin/j;", "removeSource", "()V", "disposeNow", "(Lkotlin/coroutines/e;)Ljava/lang/Object;", "dispose", "Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/MediatorLiveData;", "", "disposed", "Z", "lifecycle-livedata_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmittedSource implements Z {
    private boolean disposed;

    @NotNull
    private final MediatorLiveData<?> mediator;

    @NotNull
    private final LiveData<?> source;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.EmittedSource$dispose$1", f = "CoroutineLiveData.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.EmittedSource$dispose$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<M, e, Object> {
        int label;

        public AnonymousClass1(e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return EmittedSource.this.new AnonymousClass1(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            a.e();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            EmittedSource.this.removeSource();
            return j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable e eVar) {
            return ((AnonymousClass1) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.EmittedSource$disposeNow$2", f = "CoroutineLiveData.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.EmittedSource$disposeNow$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, e, Object> {
        int label;

        public AnonymousClass2(e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return EmittedSource.this.new AnonymousClass2(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            a.e();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            EmittedSource.this.removeSource();
            return j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable e eVar) {
            return ((AnonymousClass2) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    public EmittedSource(@NotNull LiveData<?> source, @NotNull MediatorLiveData<?> mediator) {
        kotlin.jvm.internal.j.e(source, "source");
        kotlin.jvm.internal.j.e(mediator, "mediator");
        this.source = source;
        this.mediator = mediator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void removeSource() {
        if (this.disposed) {
            return;
        }
        this.mediator.removeSource(this.source);
        this.disposed = true;
    }

    @Override // kotlinx.coroutines.Z
    public void dispose() {
        AbstractC1666i.b(N.a(X.c().C()), null, null, new AnonymousClass1(null), 3, null);
    }

    @Nullable
    public final Object disposeNow(@NotNull e eVar) {
        Object objE = AbstractC1662g.e(X.c().C(), new AnonymousClass2(null), eVar);
        return objE == a.e() ? objE : j.f51397a;
    }
}
