package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.RequiresWindowSdkExtension;
import androidx.window.core.ExperimentalWindowApi;
import com.byazt.pu.TTDownloadField;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000  2\u00020\u0001:\u0002 !B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0016\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001bR\u0011\u0010\u001f\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Landroidx/window/embedding/SplitController;", "", "Landroidx/window/embedding/EmbeddingBackend;", "embeddingBackend", "<init>", "(Landroidx/window/embedding/EmbeddingBackend;)V", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Lkotlinx/coroutines/flow/c;", "", "Landroidx/window/embedding/SplitInfo;", "splitInfoList", "(Landroid/app/Activity;)Lkotlinx/coroutines/flow/c;", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "Lkotlin/j;", "setSplitAttributesCalculator", "(Lkotlin/jvm/functions/Function1;)V", "clearSplitAttributesCalculator", "()V", "invalidateTopVisibleSplitAttributes", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "Landroidx/window/embedding/EmbeddingBackend;", "Landroidx/window/embedding/SplitController$SplitSupportStatus;", "getSplitSupportStatus", "()Landroidx/window/embedding/SplitController$SplitSupportStatus;", "splitSupportStatus", "Companion", "SplitSupportStatus", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SplitController {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final boolean sDebug = false;

    @NotNull
    private final EmbeddingBackend embeddingBackend;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/window/embedding/SplitController$Companion;", "", "()V", "sDebug", "", "getInstance", "Landroidx/window/embedding/SplitController;", com.umeng.analytics.pro.g.f49337X, "Landroid/content/Context;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final SplitController getInstance(@NotNull Context context) {
            kotlin.jvm.internal.j.e(context, "context");
            return new SplitController(EmbeddingBackend.INSTANCE.getInstance(context));
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/window/embedding/SplitController$SplitSupportStatus;", "", "rawValue", "", "(I)V", "toString", "", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SplitSupportStatus {
        private final int rawValue;

        @JvmField
        @NotNull
        public static final SplitSupportStatus SPLIT_AVAILABLE = new SplitSupportStatus(0);

        @JvmField
        @NotNull
        public static final SplitSupportStatus SPLIT_UNAVAILABLE = new SplitSupportStatus(1);

        @JvmField
        @NotNull
        public static final SplitSupportStatus SPLIT_ERROR_PROPERTY_NOT_DECLARED = new SplitSupportStatus(2);

        private SplitSupportStatus(int i2) {
            this.rawValue = i2;
        }

        @NotNull
        public String toString() {
            int i2 = this.rawValue;
            return i2 != 0 ? i2 != 1 ? i2 != 2 ? "UNKNOWN" : "SplitSupportStatus: ERROR_SPLIT_PROPERTY_NOT_DECLARED" : "SplitSupportStatus: UNAVAILABLE" : "SplitSupportStatus: AVAILABLE";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/channels/q;", "", "Landroidx/window/embedding/SplitInfo;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.window.embedding.SplitController$splitInfoList$1", f = "SplitController.kt", i = {}, l = {64}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.window.embedding.SplitController$splitInfoList$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<q, kotlin.coroutines.e, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$activity = activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
            AnonymousClass1 anonymousClass1 = SplitController.this.new AnonymousClass1(this.$activity, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final q qVar = (q) this.L$0;
                final Consumer<List<SplitInfo>> consumer = new Consumer() { // from class: androidx.window.embedding.o
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        qVar.l((List) obj2);
                    }
                };
                SplitController.this.embeddingBackend.addSplitListenerForActivity(this.$activity, new androidx.profileinstaller.b(), consumer);
                final SplitController splitController = SplitController.this;
                Function0<kotlin.j> function0 = new Function0<kotlin.j>() { // from class: androidx.window.embedding.SplitController.splitInfoList.1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.j invoke() {
                        invoke2();
                        return kotlin.j.f51397a;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        splitController.embeddingBackend.removeSplitListenerForActivity(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(qVar, function0, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull q qVar, @Nullable kotlin.coroutines.e eVar) {
            return ((AnonymousClass1) create(qVar, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    public SplitController(@NotNull EmbeddingBackend embeddingBackend) {
        kotlin.jvm.internal.j.e(embeddingBackend, "embeddingBackend");
        this.embeddingBackend = embeddingBackend;
    }

    @JvmStatic
    @NotNull
    public static final SplitController getInstance(@NotNull Context context) {
        return INSTANCE.getInstance(context);
    }

    @RequiresWindowSdkExtension(version = 2)
    public final void clearSplitAttributesCalculator() {
        this.embeddingBackend.clearSplitAttributesCalculator();
    }

    @NotNull
    public final SplitSupportStatus getSplitSupportStatus() {
        return this.embeddingBackend.getSplitSupportStatus();
    }

    @ExperimentalWindowApi
    @RequiresWindowSdkExtension(version = 3)
    public final void invalidateTopVisibleSplitAttributes() {
        this.embeddingBackend.invalidateTopVisibleSplitAttributes();
    }

    @RequiresWindowSdkExtension(version = 2)
    public final void setSplitAttributesCalculator(@NotNull Function1<? super SplitAttributesCalculatorParams, SplitAttributes> calculator) {
        kotlin.jvm.internal.j.e(calculator, "calculator");
        this.embeddingBackend.setSplitAttributesCalculator(calculator);
    }

    @NotNull
    public final InterfaceC1639c splitInfoList(@NotNull Activity activity) {
        kotlin.jvm.internal.j.e(activity, "activity");
        return AbstractC1641e.d(new AnonymousClass1(activity, null));
    }

    @ExperimentalWindowApi
    @RequiresWindowSdkExtension(version = 3)
    public final void updateSplitAttributes(@NotNull SplitInfo splitInfo, @NotNull SplitAttributes splitAttributes) {
        kotlin.jvm.internal.j.e(splitInfo, "splitInfo");
        kotlin.jvm.internal.j.e(splitAttributes, "splitAttributes");
        this.embeddingBackend.updateSplitAttributes(splitInfo, splitAttributes);
    }
}
