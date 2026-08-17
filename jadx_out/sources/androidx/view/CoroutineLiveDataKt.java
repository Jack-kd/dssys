package androidx.view;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.e;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AbstractC1662g;
import kotlinx.coroutines.M;
import kotlinx.coroutines.X;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a.\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0080@¢\u0006\u0004\b\u0005\u0010\u0006\u001a^\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\t2-\u0010\u0011\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u001a\\\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\b\u001a\u00020\u00072-\u0010\u0011\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0016\"\u0014\u0010\u0017\u001a\u00020\t8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018*`\b\u0000\u0010\u0019\u001a\u0004\b\u0000\u0010\u0000\")\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b¢\u0006\u0002\b\u00102)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b¢\u0006\u0002\b\u0010¨\u0006\u001a"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MediatorLiveData;", "Landroidx/lifecycle/LiveData;", n.f36449l, "Landroidx/lifecycle/EmittedSource;", "addDisposableSource", "(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Lkotlin/coroutines/i;", g.f49337X, "", "timeoutInMs", "Lkotlin/Function2;", "Landroidx/lifecycle/LiveDataScope;", "Lkotlin/coroutines/e;", "Lkotlin/j;", "", "Lkotlin/ExtensionFunctionType;", "block", "liveData", "(Lkotlin/coroutines/i;JLkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;", "Ljava/time/Duration;", "timeout", "(Ljava/time/Duration;Lkotlin/coroutines/i;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;", "DEFAULT_TIMEOUT", "J", "Block", "lifecycle-livedata_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoroutineLiveDataKt {
    public static final long DEFAULT_TIMEOUT = 5000;

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Landroidx/lifecycle/EmittedSource;", "<anonymous>", "(Lkotlinx/coroutines/M;)Landroidx/lifecycle/EmittedSource;"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2", f = "CoroutineLiveData.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, e, Object> {
        final /* synthetic */ LiveData<T> $source;
        final /* synthetic */ MediatorLiveData<T> $this_addDisposableSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MediatorLiveData<T> mediatorLiveData, LiveData<T> liveData, e eVar) {
            super(2, eVar);
            this.$this_addDisposableSource = mediatorLiveData;
            this.$source = liveData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return new AnonymousClass2(this.$this_addDisposableSource, this.$source, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            a.e();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            final MediatorLiveData<T> mediatorLiveData = this.$this_addDisposableSource;
            mediatorLiveData.addSource(this.$source, new CoroutineLiveDataKt$sam$androidx_lifecycle_Observer$0(new Function1<T, j>() { // from class: androidx.lifecycle.CoroutineLiveDataKt.addDisposableSource.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ j invoke(Object obj2) {
                    invoke2((AnonymousClass1<T>) obj2);
                    return j.f51397a;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(T t2) {
                    mediatorLiveData.setValue(t2);
                }
            }));
            return new EmittedSource(this.$source, this.$this_addDisposableSource);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable e eVar) {
            return ((AnonymousClass2) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Nullable
    public static final <T> Object addDisposableSource(@NotNull MediatorLiveData<T> mediatorLiveData, @NotNull LiveData<T> liveData, @NotNull e eVar) {
        return AbstractC1662g.e(X.c().C(), new AnonymousClass2(mediatorLiveData, liveData, null), eVar);
    }

    @JvmOverloads
    @RequiresApi(26)
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull Duration timeout, @NotNull Function2<? super LiveDataScope<T>, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(timeout, "timeout");
        kotlin.jvm.internal.j.e(block, "block");
        return liveData$default(timeout, (i) null, block, 2, (Object) null);
    }

    public static /* synthetic */ LiveData liveData$default(i iVar, long j2, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            j2 = 5000;
        }
        return liveData(iVar, j2, function2);
    }

    @JvmOverloads
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull i context, @NotNull Function2<? super LiveDataScope<T>, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(block, "block");
        return liveData$default(context, 0L, block, 2, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull Function2<? super LiveDataScope<T>, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(block, "block");
        return liveData$default((i) null, 0L, block, 3, (Object) null);
    }

    public static /* synthetic */ LiveData liveData$default(Duration duration, i iVar, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        return liveData(duration, iVar, function2);
    }

    @JvmOverloads
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull i context, long j2, @NotNull Function2<? super LiveDataScope<T>, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(block, "block");
        return new CoroutineLiveData(context, j2, block);
    }

    @JvmOverloads
    @RequiresApi(26)
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull Duration timeout, @NotNull i context, @NotNull Function2<? super LiveDataScope<T>, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(timeout, "timeout");
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(block, "block");
        return new CoroutineLiveData(context, C1044Api26Impl.INSTANCE.toMillis(timeout), block);
    }
}
