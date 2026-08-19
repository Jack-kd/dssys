package androidx.window.embedding;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.IBinder;
import androidx.window.RequiresWindowSdkExtension;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.BuildConfig;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.VerificationMode;
import androidx.window.embedding.EmbeddingCompat;
import androidx.window.embedding.EmbeddingInterfaceCompat;
import androidx.window.embedding.SplitController;
import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import com.byazt.pu.TTDownloadField;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 32\u00020\u0001:\u00013B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ#\u0010\u001f\u001a\u00020\u000f2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0017¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0017¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u000fH\u0017¢\u0006\u0004\b#\u0010\"J\u001f\u0010'\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001dH\u0017¢\u0006\u0004\b'\u0010(J\u001f\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0017¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010/R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00100R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00101R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00102¨\u00064"}, d2 = {"Landroidx/window/embedding/EmbeddingCompat;", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "embeddingExtension", "Landroidx/window/embedding/EmbeddingAdapter;", "adapter", "Landroidx/window/core/ConsumerAdapter;", "consumerAdapter", "Landroid/content/Context;", "applicationContext", "<init>", "(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;Landroid/content/Context;)V", "", "Landroidx/window/embedding/EmbeddingRule;", "rules", "Lkotlin/j;", "setRules", "(Ljava/util/Set;)V", "Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", "embeddingCallback", "setEmbeddingCallback", "(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "", "isActivityEmbedded", "(Landroid/app/Activity;)Z", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "setSplitAttributesCalculator", "(Lkotlin/jvm/functions/Function1;)V", "clearSplitAttributesCalculator", "()V", "invalidateTopVisibleSplitAttributes", "Landroidx/window/embedding/SplitInfo;", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "Landroid/app/ActivityOptions;", "options", "Landroid/os/IBinder;", "token", "setLaunchingActivityStack", "(Landroid/app/ActivityOptions;Landroid/os/IBinder;)Landroid/app/ActivityOptions;", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "Landroidx/window/embedding/EmbeddingAdapter;", "Landroidx/window/core/ConsumerAdapter;", "Landroid/content/Context;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmbeddingCompat implements EmbeddingInterfaceCompat {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final boolean DEBUG = true;

    @NotNull
    private static final String TAG = "EmbeddingCompat";

    @NotNull
    private final EmbeddingAdapter adapter;

    @NotNull
    private final Context applicationContext;

    @NotNull
    private final ConsumerAdapter consumerAdapter;

    @NotNull
    private final ActivityEmbeddingComponent embeddingExtension;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\bH\u0002J\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/window/embedding/EmbeddingCompat$Companion;", "", "()V", "DEBUG", "", "TAG", "", "embeddingComponent", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "emptyActivityEmbeddingProxy", "isEmbeddingAvailable", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        private final ActivityEmbeddingComponent emptyActivityEmbeddingProxy() throws IllegalArgumentException {
            Object objNewProxyInstance = Proxy.newProxyInstance(EmbeddingCompat.class.getClassLoader(), new Class[]{ActivityEmbeddingComponent.class}, new InvocationHandler() { // from class: androidx.window.embedding.m
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return EmbeddingCompat.Companion.emptyActivityEmbeddingProxy$lambda$2(obj, method, objArr);
                }
            });
            kotlin.jvm.internal.j.c(objNewProxyInstance, "null cannot be cast to non-null type androidx.window.extensions.embedding.ActivityEmbeddingComponent");
            return (ActivityEmbeddingComponent) objNewProxyInstance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final kotlin.j emptyActivityEmbeddingProxy$lambda$2(Object obj, Method method, Object[] objArr) {
            return kotlin.j.f51397a;
        }

        @NotNull
        public final ActivityEmbeddingComponent embeddingComponent() {
            if (!isEmbeddingAvailable()) {
                return emptyActivityEmbeddingProxy();
            }
            ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
            if (classLoader != null) {
                ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader);
                WindowExtensions windowExtensions = WindowExtensionsProvider.getWindowExtensions();
                kotlin.jvm.internal.j.d(windowExtensions, "getWindowExtensions()");
                ActivityEmbeddingComponent activityEmbeddingComponent = new SafeActivityEmbeddingComponentProvider(classLoader, consumerAdapter, windowExtensions).getActivityEmbeddingComponent();
                if (activityEmbeddingComponent != null) {
                    return activityEmbeddingComponent;
                }
            }
            return emptyActivityEmbeddingProxy();
        }

        public final boolean isEmbeddingAvailable() {
            try {
                ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
                if (classLoader == null) {
                    return false;
                }
                ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader);
                WindowExtensions windowExtensions = WindowExtensionsProvider.getWindowExtensions();
                kotlin.jvm.internal.j.d(windowExtensions, "getWindowExtensions()");
                return new SafeActivityEmbeddingComponentProvider(classLoader, consumerAdapter, windowExtensions).getActivityEmbeddingComponent() != null;
            } catch (NoClassDefFoundError | UnsupportedOperationException unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    public EmbeddingCompat(@NotNull ActivityEmbeddingComponent embeddingExtension, @NotNull EmbeddingAdapter adapter, @NotNull ConsumerAdapter consumerAdapter, @NotNull Context applicationContext) {
        kotlin.jvm.internal.j.e(embeddingExtension, "embeddingExtension");
        kotlin.jvm.internal.j.e(adapter, "adapter");
        kotlin.jvm.internal.j.e(consumerAdapter, "consumerAdapter");
        kotlin.jvm.internal.j.e(applicationContext, "applicationContext");
        this.embeddingExtension = embeddingExtension;
        this.adapter = adapter;
        this.consumerAdapter = consumerAdapter;
        this.applicationContext = applicationContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setEmbeddingCallback$lambda$0(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallback, EmbeddingCompat this$0, List splitInfoList) {
        kotlin.jvm.internal.j.e(embeddingCallback, "$embeddingCallback");
        kotlin.jvm.internal.j.e(this$0, "this$0");
        EmbeddingAdapter embeddingAdapter = this$0.adapter;
        kotlin.jvm.internal.j.d(splitInfoList, "splitInfoList");
        embeddingCallback.onSplitInfoChanged(embeddingAdapter.translate((List<? extends androidx.window.extensions.embedding.SplitInfo>) splitInfoList));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 2)
    public void clearSplitAttributesCalculator() {
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(2);
        this.embeddingExtension.clearSplitAttributesCalculator();
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 3)
    public void invalidateTopVisibleSplitAttributes() {
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(3);
        this.embeddingExtension.invalidateTopVisibleSplitAttributes();
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public boolean isActivityEmbedded(@NotNull Activity activity) {
        kotlin.jvm.internal.j.e(activity, "activity");
        return this.embeddingExtension.isActivityEmbedded(activity);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setEmbeddingCallback(@NotNull final EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallback) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(embeddingCallback, "embeddingCallback");
        if (ExtensionsUtil.INSTANCE.getSafeVendorApiLevel() < 2) {
            this.consumerAdapter.addConsumer(this.embeddingExtension, kotlin.jvm.internal.m.b(List.class), "setSplitInfoCallback", new Function1<List<?>, kotlin.j>() { // from class: androidx.window.embedding.EmbeddingCompat.setEmbeddingCallback.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.j invoke(List<?> list) {
                    invoke2(list);
                    return kotlin.j.f51397a;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull List<?> values) {
                    kotlin.jvm.internal.j.e(values, "values");
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : values) {
                        if (obj instanceof androidx.window.extensions.embedding.SplitInfo) {
                            arrayList.add(obj);
                        }
                    }
                    embeddingCallback.onSplitInfoChanged(this.adapter.translate(arrayList));
                }
            });
        } else {
            this.embeddingExtension.setSplitInfoCallback(new Consumer() { // from class: androidx.window.embedding.l
                @Override // androidx.window.extensions.core.util.function.Consumer
                public final void accept(Object obj) {
                    EmbeddingCompat.setEmbeddingCallback$lambda$0(embeddingCallback, this, (List) obj);
                }
            });
        }
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 3)
    @NotNull
    public ActivityOptions setLaunchingActivityStack(@NotNull ActivityOptions options, @NotNull IBinder token) {
        kotlin.jvm.internal.j.e(options, "options");
        kotlin.jvm.internal.j.e(token, "token");
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(3);
        ActivityOptions launchingActivityStack = this.embeddingExtension.setLaunchingActivityStack(options, token);
        kotlin.jvm.internal.j.d(launchingActivityStack, "embeddingExtension.setLa…vityStack(options, token)");
        return launchingActivityStack;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setRules(@NotNull Set<? extends EmbeddingRule> rules) {
        kotlin.jvm.internal.j.e(rules, "rules");
        Iterator<? extends EmbeddingRule> it = rules.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (it.next() instanceof SplitRule) {
                if (!kotlin.jvm.internal.j.a(SplitController.INSTANCE.getInstance(this.applicationContext).getSplitSupportStatus(), SplitController.SplitSupportStatus.SPLIT_AVAILABLE)) {
                    BuildConfig.INSTANCE.getVerificationMode();
                    VerificationMode verificationMode = VerificationMode.STRICT;
                    return;
                }
            }
        }
        this.embeddingExtension.setEmbeddingRules(this.adapter.translate(this.applicationContext, rules));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 2)
    public void setSplitAttributesCalculator(@NotNull Function1<? super SplitAttributesCalculatorParams, SplitAttributes> calculator) {
        kotlin.jvm.internal.j.e(calculator, "calculator");
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(2);
        this.embeddingExtension.setSplitAttributesCalculator(this.adapter.translateSplitAttributesCalculator(calculator));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    @RequiresWindowSdkExtension(version = 3)
    public void updateSplitAttributes(@NotNull SplitInfo splitInfo, @NotNull SplitAttributes splitAttributes) {
        kotlin.jvm.internal.j.e(splitInfo, "splitInfo");
        kotlin.jvm.internal.j.e(splitAttributes, "splitAttributes");
        WindowSdkExtensions.INSTANCE.getInstance().requireExtensionVersion$window_release(3);
        this.embeddingExtension.updateSplitAttributes(splitInfo.getToken(), this.adapter.translateSplitAttributes(splitAttributes));
    }
}
