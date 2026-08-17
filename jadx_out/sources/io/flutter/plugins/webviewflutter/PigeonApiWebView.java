package io.flutter.plugins.webviewflutter;

import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.sigmob.sdk.mraid.C1315g;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.PigeonApiWebView;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 ]2\u00020\u0001:\u0001]B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b\u000b\u0010\fJ3\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u0012\u0010\u0013JG\u0010\u0016\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u0016\u0010\u0017J3\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\r2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u0019H&¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001e\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001dH&¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010 \u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b%\u0010$J\u0017\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b(\u0010'J\u0017\u0010)\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b)\u0010'J\u001f\u0010+\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\"H&¢\u0006\u0004\b+\u0010,J;\u00101\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\r2\u001a\u00100\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\r0/\u0012\u0004\u0012\u00020\u00110.H&¢\u0006\u0004\b1\u00102J\u0019\u00103\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b3\u0010!J\u0017\u00105\u001a\u00020\u00112\u0006\u00104\u001a\u00020\"H&¢\u0006\u0004\b5\u00106J!\u00109\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\b\u00108\u001a\u0004\u0018\u000107H&¢\u0006\u0004\b9\u0010:J\u001f\u0010=\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010<\u001a\u00020;H&¢\u0006\u0004\b=\u0010>J\u001f\u0010@\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\rH&¢\u0006\u0004\b@\u0010AJ!\u0010D\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\b\u0010C\u001a\u0004\u0018\u00010BH&¢\u0006\u0004\bD\u0010EJ!\u0010G\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\b\u00108\u001a\u0004\u0018\u00010FH&¢\u0006\u0004\bG\u0010HJ\u001f\u0010K\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010J\u001a\u00020IH&¢\u0006\u0004\bK\u0010LJ\u0017\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\bM\u0010'J/\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u00062\u0018\u00100\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110/\u0012\u0004\u0012\u00020\u00110.¢\u0006\u0004\bO\u0010PJO\u0010U\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020I2\u0006\u0010R\u001a\u00020I2\u0006\u0010S\u001a\u00020I2\u0006\u0010T\u001a\u00020I2\u0018\u00100\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110/\u0012\u0004\u0012\u00020\u00110.¢\u0006\u0004\bU\u0010VJ\r\u0010X\u001a\u00020W¢\u0006\u0004\bX\u0010YR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010Z\u001a\u0004\b[\u0010\\¨\u0006^"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "pigeonRegistrar", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "Landroid/webkit/WebView;", "pigeon_defaultConstructor", "()Landroid/webkit/WebView;", "pigeon_instance", "Landroid/webkit/WebSettings;", "settings", "(Landroid/webkit/WebView;)Landroid/webkit/WebSettings;", "", "data", "mimeType", "encoding", "Lkotlin/j;", "loadData", "(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "baseUrl", "historyUrl", "loadDataWithBaseUrl", "(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "url", "", "headers", "loadUrl", "(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V", "", "postUrl", "(Landroid/webkit/WebView;Ljava/lang/String;[B)V", "getUrl", "(Landroid/webkit/WebView;)Ljava/lang/String;", "", "canGoBack", "(Landroid/webkit/WebView;)Z", "canGoForward", "goBack", "(Landroid/webkit/WebView;)V", "goForward", "reload", "includeDiskFiles", "clearCache", "(Landroid/webkit/WebView;Z)V", "javascriptString", "Lkotlin/Function1;", "Lkotlin/Result;", "callback", "evaluateJavascript", "(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "getTitle", "enabled", "setWebContentsDebuggingEnabled", "(Z)V", "Landroid/webkit/WebViewClient;", "client", "setWebViewClient", "(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V", "Lio/flutter/plugins/webviewflutter/JavaScriptChannel;", "channel", "addJavaScriptChannel", "(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/JavaScriptChannel;)V", "name", "removeJavaScriptChannel", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/webkit/DownloadListener;", "listener", "setDownloadListener", "(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)V", "Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;", "setWebChromeClient", "(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;)V", "", "color", "setBackgroundColor", "(Landroid/webkit/WebView;J)V", C1315g.f37905b, "pigeon_instanceArg", "pigeon_newInstance", "(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V", "leftArg", "topArg", "oldLeftArg", "oldTopArg", "onScrollChanged", "(Landroid/webkit/WebView;JJJJLkotlin/jvm/functions/Function1;)V", "Lio/flutter/plugins/webviewflutter/PigeonApiView;", "pigeon_getPigeonApiView", "()Lio/flutter/plugins/webviewflutter/PigeonApiView;", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public abstract class PigeonApiWebView {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebView$Companion;", "", "<init>", "()V", "Lio/flutter/plugin/common/BinaryMessenger;", "binaryMessenger", "Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "api", "Lkotlin/j;", "setUpMessageHandlers", "(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebView;)V", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$0$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type kotlin.Long");
            try {
                pigeonApiWebView.getPigeonRegistrar().getInstanceManager().addDartCreatedInstance(pigeonApiWebView.pigeon_defaultConstructor(), ((Long) obj2).longValue());
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$1$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.Long");
            try {
                pigeonApiWebView.getPigeonRegistrar().getInstanceManager().addDartCreatedInstance(pigeonApiWebView.settings(webView), ((Long) obj3).longValue());
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$10$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.goForward((WebView) obj2);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$11$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.reload((WebView) obj2);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$12$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.Boolean");
            try {
                pigeonApiWebView.clearCache(webView, ((Boolean) obj3).booleanValue());
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$13$0(PigeonApiWebView pigeonApiWebView, Object obj, final BasicMessageChannel.Reply reply) {
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            pigeonApiWebView.evaluateJavascript((WebView) obj2, (String) obj3, new Function1() { // from class: io.flutter.plugins.webviewflutter.l2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return PigeonApiWebView.Companion.setUpMessageHandlers$lambda$13$0$0(reply, (Result) obj4);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final kotlin.j setUpMessageHandlers$lambda$13$0$0(BasicMessageChannel.Reply reply, Result result) {
            Throwable thM69exceptionOrNullimpl = Result.m69exceptionOrNullimpl(result.getValue());
            if (thM69exceptionOrNullimpl != null) {
                reply.reply(AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(thM69exceptionOrNullimpl));
            } else {
                Object value = result.getValue();
                if (Result.m72isFailureimpl(value)) {
                    value = null;
                }
                reply.reply(AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapResult((String) value));
            }
            return kotlin.j.f51397a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$14$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                listWrapError = kotlin.collections.p.e(pigeonApiWebView.getTitle((WebView) obj2));
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$15$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            try {
                pigeonApiWebView.setWebContentsDebuggingEnabled(((Boolean) obj2).booleanValue());
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$16$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.setWebViewClient((WebView) obj2, (WebViewClient) list.get(1));
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$17$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type io.flutter.plugins.webviewflutter.JavaScriptChannel");
            try {
                pigeonApiWebView.addJavaScriptChannel(webView, (JavaScriptChannel) obj3);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$18$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            try {
                pigeonApiWebView.removeJavaScriptChannel(webView, (String) obj3);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$19$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.setDownloadListener((WebView) obj2, (DownloadListener) list.get(1));
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$2$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            try {
                pigeonApiWebView.loadData(webView, (String) obj3, (String) list.get(2), (String) list.get(3));
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$20$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.setWebChromeClient((WebView) obj2, (WebChromeClientProxyApi.WebChromeClientImpl) list.get(1));
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$21$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.Long");
            try {
                pigeonApiWebView.setBackgroundColor(webView, ((Long) obj3).longValue());
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$22$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.destroy((WebView) obj2);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$3$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            String str = (String) list.get(1);
            Object obj3 = list.get(2);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            try {
                pigeonApiWebView.loadDataWithBaseUrl(webView, str, (String) obj3, (String) list.get(3), (String) list.get(4), (String) list.get(5));
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$4$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj3;
            Object obj4 = list.get(2);
            kotlin.jvm.internal.j.c(obj4, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            try {
                pigeonApiWebView.loadUrl(webView, str, (Map) obj4);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$5$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            WebView webView = (WebView) obj2;
            Object obj3 = list.get(1);
            kotlin.jvm.internal.j.c(obj3, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj3;
            Object obj4 = list.get(2);
            kotlin.jvm.internal.j.c(obj4, "null cannot be cast to non-null type kotlin.ByteArray");
            try {
                pigeonApiWebView.postUrl(webView, str, (byte[]) obj4);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$6$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                listWrapError = kotlin.collections.p.e(pigeonApiWebView.getUrl((WebView) obj2));
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$7$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                listWrapError = kotlin.collections.p.e(Boolean.valueOf(pigeonApiWebView.canGoBack((WebView) obj2)));
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$8$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                listWrapError = kotlin.collections.p.e(Boolean.valueOf(pigeonApiWebView.canGoForward((WebView) obj2)));
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$9$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            kotlin.jvm.internal.j.e(reply, "reply");
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type android.webkit.WebView");
            try {
                pigeonApiWebView.goBack((WebView) obj2);
                listWrapError = kotlin.collections.p.e(null);
            } catch (Throwable th) {
                listWrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        public final void setUpMessageHandlers(@NotNull BinaryMessenger binaryMessenger, @Nullable final PigeonApiWebView api) {
            MessageCodec<Object> androidWebkitLibraryPigeonCodec;
            AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;
            kotlin.jvm.internal.j.e(binaryMessenger, "binaryMessenger");
            if (api == null || (pigeonRegistrar = api.getPigeonRegistrar()) == null || (androidWebkitLibraryPigeonCodec = pigeonRegistrar.getCodec()) == null) {
                androidWebkitLibraryPigeonCodec = new AndroidWebkitLibraryPigeonCodec();
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_defaultConstructor", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.W1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$0$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.settings", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Y1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$1$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.loadData", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.c2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$2$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.loadDataWithBaseUrl", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.d2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$3$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.loadUrl", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.e2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$4$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.postUrl", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.f2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$5$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.getUrl", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.g2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$6$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.canGoBack", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.i2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$7$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.canGoForward", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.j2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$8$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.goBack", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.k2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$9$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.goForward", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.h2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$10$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.reload", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.m2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$11$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel12.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.clearCache", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.n2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$12$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel13.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.evaluateJavascript", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.o2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$13$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel14.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.getTitle", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.p2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$14$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel15.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setWebContentsDebuggingEnabled", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.q2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$15$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel16.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel17 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setWebViewClient", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel17.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.r2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$16$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel17.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel18 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.addJavaScriptChannel", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel18.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.s2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$17$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel18.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel19 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.removeJavaScriptChannel", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel19.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.t2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$18$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel19.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel20 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setDownloadListener", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel20.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.X1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$19$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel20.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel21 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setWebChromeClient", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel21.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Z1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$20$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel21.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel22 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setBackgroundColor", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel22.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.a2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$21$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel22.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel23 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.destroy", androidWebkitLibraryPigeonCodec);
            if (api != null) {
                basicMessageChannel23.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.b2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$22$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel23.setMessageHandler(null);
            }
        }

        private Companion() {
        }
    }

    public PigeonApiWebView(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar) {
        kotlin.jvm.internal.j.e(pigeonRegistrar, "pigeonRegistrar");
        this.pigeonRegistrar = pigeonRegistrar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onScrollChanged$lambda$0(Function1 function1, String str, Object obj) {
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

    public abstract void addJavaScriptChannel(@NotNull WebView pigeon_instance, @NotNull JavaScriptChannel channel);

    public abstract boolean canGoBack(@NotNull WebView pigeon_instance);

    public abstract boolean canGoForward(@NotNull WebView pigeon_instance);

    public abstract void clearCache(@NotNull WebView pigeon_instance, boolean includeDiskFiles);

    public abstract void destroy(@NotNull WebView pigeon_instance);

    public abstract void evaluateJavascript(@NotNull WebView pigeon_instance, @NotNull String javascriptString, @NotNull Function1<? super Result<String>, kotlin.j> callback);

    @NotNull
    public AndroidWebkitLibraryPigeonProxyApiRegistrar getPigeonRegistrar() {
        return this.pigeonRegistrar;
    }

    @Nullable
    public abstract String getTitle(@NotNull WebView pigeon_instance);

    @Nullable
    public abstract String getUrl(@NotNull WebView pigeon_instance);

    public abstract void goBack(@NotNull WebView pigeon_instance);

    public abstract void goForward(@NotNull WebView pigeon_instance);

    public abstract void loadData(@NotNull WebView pigeon_instance, @NotNull String data, @Nullable String mimeType, @Nullable String encoding);

    public abstract void loadDataWithBaseUrl(@NotNull WebView pigeon_instance, @Nullable String baseUrl, @NotNull String data, @Nullable String mimeType, @Nullable String encoding, @Nullable String historyUrl);

    public abstract void loadUrl(@NotNull WebView pigeon_instance, @NotNull String url, @NotNull Map<String, String> headers);

    public final void onScrollChanged(@NotNull WebView pigeon_instanceArg, long leftArg, long topArg, long oldLeftArg, long oldTopArg, @NotNull final Function1<? super Result<kotlin.j>, kotlin.j> callback) {
        kotlin.jvm.internal.j.e(pigeon_instanceArg, "pigeon_instanceArg");
        kotlin.jvm.internal.j.e(callback, "callback");
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(pigeon_instanceArg)) {
            final String str = "dev.flutter.pigeon.webview_flutter_android.WebView.onScrollChanged";
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebView.onScrollChanged", getPigeonRegistrar().getCodec()).send(kotlin.collections.q.o(pigeon_instanceArg, Long.valueOf(leftArg), Long.valueOf(topArg), Long.valueOf(oldLeftArg), Long.valueOf(oldTopArg)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.U1
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiWebView.onScrollChanged$lambda$0(callback, str, obj);
                }
            });
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(new AndroidWebKitError("missing-instance-error", "Callback to `WebView.onScrollChanged` failed because native instance was not in the instance manager.", "")))));
        }
    }

    @NotNull
    public abstract WebView pigeon_defaultConstructor();

    @NotNull
    public final PigeonApiView pigeon_getPigeonApiView() {
        return getPigeonRegistrar().getPigeonApiView();
    }

    public final void pigeon_newInstance(@NotNull WebView pigeon_instanceArg, @NotNull final Function1<? super Result<kotlin.j>, kotlin.j> callback) {
        kotlin.jvm.internal.j.e(pigeon_instanceArg, "pigeon_instanceArg");
        kotlin.jvm.internal.j.e(callback, "callback");
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.e.a(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(pigeon_instanceArg)) {
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m65boximpl(Result.m66constructorimpl(kotlin.j.f51397a)));
        } else {
            final String str = "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_newInstance";
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_newInstance", getPigeonRegistrar().getCodec()).send(kotlin.collections.p.e(Long.valueOf(getPigeonRegistrar().getInstanceManager().addHostCreatedInstance(pigeon_instanceArg))), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.V1
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiWebView.pigeon_newInstance$lambda$0(callback, str, obj);
                }
            });
        }
    }

    public abstract void postUrl(@NotNull WebView pigeon_instance, @NotNull String url, @NotNull byte[] data);

    public abstract void reload(@NotNull WebView pigeon_instance);

    public abstract void removeJavaScriptChannel(@NotNull WebView pigeon_instance, @NotNull String name);

    public abstract void setBackgroundColor(@NotNull WebView pigeon_instance, long color);

    public abstract void setDownloadListener(@NotNull WebView pigeon_instance, @Nullable DownloadListener listener);

    public abstract void setWebChromeClient(@NotNull WebView pigeon_instance, @Nullable WebChromeClientProxyApi.WebChromeClientImpl client);

    public abstract void setWebContentsDebuggingEnabled(boolean enabled);

    public abstract void setWebViewClient(@NotNull WebView pigeon_instance, @Nullable WebViewClient client);

    @NotNull
    public abstract WebSettings settings(@NotNull WebView pigeon_instance);
}
