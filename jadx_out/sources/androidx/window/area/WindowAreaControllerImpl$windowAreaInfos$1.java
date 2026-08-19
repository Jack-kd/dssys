package androidx.window.area;

import androidx.window.extensions.area.ExtensionWindowAreaStatus;
import androidx.window.extensions.core.util.function.Consumer;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.channels.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/channels/q;", "", "Landroidx/window/area/WindowAreaInfo;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.window.area.WindowAreaControllerImpl$windowAreaInfos$1", f = "WindowAreaControllerImpl.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class WindowAreaControllerImpl$windowAreaInfos$1 extends SuspendLambda implements Function2<q, kotlin.coroutines.e, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WindowAreaControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowAreaControllerImpl$windowAreaInfos$1(WindowAreaControllerImpl windowAreaControllerImpl, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.this$0 = windowAreaControllerImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(WindowAreaControllerImpl windowAreaControllerImpl, q qVar, Integer status) {
        j.d(status, "status");
        windowAreaControllerImpl.updateRearDisplayAvailability(status.intValue());
        s channel = qVar.getChannel();
        Collection collectionValues = windowAreaControllerImpl.currentWindowAreaInfoMap.values();
        j.d(collectionValues, "currentWindowAreaInfoMap.values");
        channel.l(y.a0(collectionValues));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$1(WindowAreaControllerImpl windowAreaControllerImpl, q qVar, ExtensionWindowAreaStatus extensionWindowAreaStatus) {
        j.d(extensionWindowAreaStatus, "extensionWindowAreaStatus");
        windowAreaControllerImpl.updateRearDisplayPresentationAvailability(extensionWindowAreaStatus);
        s channel = qVar.getChannel();
        Collection collectionValues = windowAreaControllerImpl.currentWindowAreaInfoMap.values();
        j.d(collectionValues, "currentWindowAreaInfoMap.values");
        channel.l(y.a0(collectionValues));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
        WindowAreaControllerImpl$windowAreaInfos$1 windowAreaControllerImpl$windowAreaInfos$1 = new WindowAreaControllerImpl$windowAreaInfos$1(this.this$0, eVar);
        windowAreaControllerImpl$windowAreaInfos$1.L$0 = obj;
        return windowAreaControllerImpl$windowAreaInfos$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            final q qVar = (q) this.L$0;
            final WindowAreaControllerImpl windowAreaControllerImpl = this.this$0;
            final Consumer consumer = new Consumer() { // from class: androidx.window.area.g
                @Override // androidx.window.extensions.core.util.function.Consumer
                public final void accept(Object obj2) {
                    WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$0(windowAreaControllerImpl, qVar, (Integer) obj2);
                }
            };
            final WindowAreaControllerImpl windowAreaControllerImpl2 = this.this$0;
            final Consumer consumer2 = new Consumer() { // from class: androidx.window.area.h
                @Override // androidx.window.extensions.core.util.function.Consumer
                public final void accept(Object obj2) {
                    WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$1(windowAreaControllerImpl2, qVar, (ExtensionWindowAreaStatus) obj2);
                }
            };
            this.this$0.windowAreaComponent.addRearDisplayStatusListener(consumer);
            if (this.this$0.vendorApiLevel > 2) {
                this.this$0.windowAreaComponent.addRearDisplayPresentationStatusListener(consumer2);
            }
            final WindowAreaControllerImpl windowAreaControllerImpl3 = this.this$0;
            Function0<kotlin.j> function0 = new Function0<kotlin.j>() { // from class: androidx.window.area.WindowAreaControllerImpl$windowAreaInfos$1.1
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
                    windowAreaControllerImpl3.windowAreaComponent.removeRearDisplayStatusListener(consumer);
                    if (windowAreaControllerImpl3.vendorApiLevel > 2) {
                        windowAreaControllerImpl3.windowAreaComponent.removeRearDisplayPresentationStatusListener(consumer2);
                    }
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
        return ((WindowAreaControllerImpl$windowAreaInfos$1) create(qVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
