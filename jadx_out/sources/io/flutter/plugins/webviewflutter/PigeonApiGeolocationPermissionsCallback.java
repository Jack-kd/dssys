package io.flutter.plugins.webviewflutter;

import android.webkit.GeolocationPermissions;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.PigeonApiGeolocationPermissionsCallback;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J/\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH&¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00062\u0018\u0010\u0013\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0012\u0012\u0004\u0012\u00020\r0\u0011¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;", "", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "pigeonRegistrar", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "Landroid/webkit/GeolocationPermissions$Callback;", "pigeon_instance", "", LiveConfigKey.ORIGIN, "", "allow", "retain", "Lkotlin/j;", "invoke", "(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;ZZ)V", "pigeon_instanceArg", "Lkotlin/Function1;", "Lkotlin/Result;", "callback", "pigeon_newInstance", "(Landroid/webkit/GeolocationPermissions$Callback;Lkotlin/jvm/functions/Function1;)V", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public abstract class PigeonApiGeolocationPermissionsCallback {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback$Companion;", "", "<init>", "()V", "Lio/flutter/plugin/common/BinaryMessenger;", "binaryMessenger", "Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;", "api", "Lkotlin/j;", "setUpMessageHandlers", "(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;)V", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$0$0(PigeonApiGeolocationPermissionsCallback pigeonApiGeolocationPermissionsCallback, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.GeolocationPermissions.Callback");
            GeolocationPermissions.Callback callback = (GeolocationPermissions.Callback) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj3;
            Object obj4 = list.get(2);
            kotlin.jvm.internal.j.c(obj4, "null cannot be cast to non-null type kotlin.Boolean");
            boolean zBooleanValue = ((Boolean) obj4).booleanValue();
            Object obj5 = list.get(3);
            kotlin.jvm.internal.j.c(obj5, "null cannot be cast to non-null type kotlin.Boolean");
            try {
                pigeonApiGeolocationPermissionsCallback.invoke(callback, str, zBooleanValue, ((Boolean) obj5).booleanValue());
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        public final void setUpMessageHandlers(@NotNull BinaryMessenger binaryMessenger, @Nullable final PigeonApiGeolocationPermissionsCallback api) {
            MessageCodec<Object> androidWebkitLibraryPigeonCodec;
            AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;
            kotlin.jvm.internal.j.e(binaryMessenger, "binaryMessenger");
            if (api == null || (pigeonRegistrar = api.getPigeonRegistrar()) == null || (androidWebkitLibraryPigeonCodec = pigeonRegistrar.getCodec()) == null) {
                androidWebkitLibraryPigeonCodec = new AndroidWebkitLibraryPigeonCodec();
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.GeolocationPermissionsCallback.invoke", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.s0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiGeolocationPermissionsCallback.Companion.setUpMessageHandlers$lambda$0$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
        }

        private Companion() {
        }
    }

    public PigeonApiGeolocationPermissionsCallback(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar) {
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

    public abstract void invoke(@NotNull GeolocationPermissions.Callback pigeon_instance, @NotNull String origin, boolean allow, boolean retain);

    public final void pigeon_newInstance(@NotNull GeolocationPermissions.Callback pigeon_instanceArg, @NotNull final Function1<? super Result<kotlin.j>, kotlin.j> callback) {
        kotlin.jvm.internal.j.e(pigeon_instanceArg, "pigeon_instanceArg");
        kotlin.jvm.internal.j.e(callback, "callback");
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(pigeon_instanceArg)) {
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.j.f51397a)));
        } else {
            final String str = "dev.flutter.pigeon.webview_flutter_android.GeolocationPermissionsCallback.pigeon_newInstance";
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.GeolocationPermissionsCallback.pigeon_newInstance", getPigeonRegistrar().getCodec()).send(kotlin.collections.p.e(Long.valueOf(getPigeonRegistrar().getInstanceManager().addHostCreatedInstance(pigeon_instanceArg))), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.r0
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiGeolocationPermissionsCallback.pigeon_newInstance$lambda$0(callback, str, obj);
                }
            });
        }
    }
}
