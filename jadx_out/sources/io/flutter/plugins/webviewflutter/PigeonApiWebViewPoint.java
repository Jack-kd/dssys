package io.flutter.plugins.webviewflutter;

import io.flutter.plugin.common.BasicMessageChannel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\u000b\u0010\nJ/\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u00062\u0018\u0010\u0010\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;", "", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "pigeonRegistrar", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "Lio/flutter/plugins/webviewflutter/WebViewPoint;", "pigeon_instance", "", "x", "(Lio/flutter/plugins/webviewflutter/WebViewPoint;)J", "y", "pigeon_instanceArg", "Lkotlin/Function1;", "Lkotlin/Result;", "Lkotlin/j;", "callback", "pigeon_newInstance", "(Lio/flutter/plugins/webviewflutter/WebViewPoint;Lkotlin/jvm/functions/Function1;)V", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public abstract class PigeonApiWebViewPoint {

    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    public PigeonApiWebViewPoint(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar) {
        kotlin.jvm.internal.j.e(pigeonRegistrar, "pigeonRegistrar");
        this.pigeonRegistrar = pigeonRegistrar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pigeon_newInstance$lambda$0(Function1 function1, String str, Object obj) {
        if (!(obj instanceof List)) {
            Result.Companion companion = Result.INSTANCE;
            function1.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(AndroidWebkitLibraryPigeonUtils.INSTANCE.createConnectionError(str)))));
            return;
        }
        List list = (List) obj;
        if (list.size() <= 1) {
            Result.Companion companion2 = Result.INSTANCE;
            function1.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.j.f51397a)));
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        Object obj2 = list.get(0);
        kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type kotlin.String");
        Object obj3 = list.get(1);
        kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
        function1.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(new AndroidWebKitError((String) obj2, (String) obj3, (String) list.get(2))))));
    }

    @NotNull
    public AndroidWebkitLibraryPigeonProxyApiRegistrar getPigeonRegistrar() {
        return this.pigeonRegistrar;
    }

    public final void pigeon_newInstance(@NotNull WebViewPoint pigeon_instanceArg, @NotNull final Function1<? super Result<kotlin.j>, kotlin.j> callback) {
        kotlin.jvm.internal.j.e(pigeon_instanceArg, "pigeon_instanceArg");
        kotlin.jvm.internal.j.e(callback, "callback");
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else {
            if (getPigeonRegistrar().getInstanceManager().containsInstance(pigeon_instanceArg)) {
                Result.Companion companion2 = Result.INSTANCE;
                callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.j.f51397a)));
                return;
            }
            final String str = "dev.flutter.pigeon.webview_flutter_android.WebViewPoint.pigeon_newInstance";
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebViewPoint.pigeon_newInstance", getPigeonRegistrar().getCodec()).send(kotlin.collections.q.o(Long.valueOf(getPigeonRegistrar().getInstanceManager().addHostCreatedInstance(pigeon_instanceArg)), Long.valueOf(x(pigeon_instanceArg)), Long.valueOf(y(pigeon_instanceArg))), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.P2
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiWebViewPoint.pigeon_newInstance$lambda$0(callback, str, obj);
                }
            });
        }
    }

    public abstract long x(@NotNull WebViewPoint pigeon_instance);

    public abstract long y(@NotNull WebViewPoint pigeon_instance);
}
