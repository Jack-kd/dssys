package io.flutter.plugins.urllauncher;

import com.anythink.core.common.d.i;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.urllauncher.UrlLauncherApi;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J3\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000bJ/\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H&¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0019À\u0006\u0003"}, d2 = {"Lio/flutter/plugins/urllauncher/UrlLauncherApi;", "", "", "url", "", "canLaunchUrl", "(Ljava/lang/String;)Z", "", "headers", "requireNonBrowser", "launchUrl", "(Ljava/lang/String;Ljava/util/Map;Z)Z", "allowCustomTab", "Lio/flutter/plugins/urllauncher/WebViewOptions;", "webViewOptions", "Lio/flutter/plugins/urllauncher/BrowserOptions;", "browserOptions", "openUrlInApp", "(Ljava/lang/String;ZLio/flutter/plugins/urllauncher/WebViewOptions;Lio/flutter/plugins/urllauncher/BrowserOptions;)Z", "supportsCustomTabs", "()Z", "Lkotlin/j;", "closeWebView", "()V", "Companion", "url_launcher_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public interface UrlLauncherApi {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fR#\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lio/flutter/plugins/urllauncher/UrlLauncherApi$Companion;", "", "<init>", "()V", "Lio/flutter/plugin/common/BinaryMessenger;", "binaryMessenger", "Lio/flutter/plugins/urllauncher/UrlLauncherApi;", "api", "", "messageChannelSuffix", "Lkotlin/j;", "setUp", "(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/urllauncher/UrlLauncherApi;Ljava/lang/String;)V", "Lio/flutter/plugin/common/MessageCodec;", "codec$delegate", "Lkotlin/c;", "getCodec", "()Lio/flutter/plugin/common/MessageCodec;", "codec", "url_launcher_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* renamed from: codec$delegate, reason: from kotlin metadata */
        @NotNull
        private static final kotlin.c codec = kotlin.d.b(new Function0() { // from class: io.flutter.plugins.urllauncher.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UrlLauncherApi.Companion.codec_delegate$lambda$0();
            }
        });

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MessagesPigeonCodec codec_delegate$lambda$0() {
            return new MessagesPigeonCodec();
        }

        public static /* synthetic */ void setUp$default(Companion companion, BinaryMessenger binaryMessenger, UrlLauncherApi urlLauncherApi, String str, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                str = "";
            }
            companion.setUp(binaryMessenger, urlLauncherApi, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$0$0(UrlLauncherApi urlLauncherApi, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            j.e(reply, "reply");
            j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            j.c(obj2, "null cannot be cast to non-null type kotlin.String");
            try {
                listWrapError = p.e(Boolean.valueOf(urlLauncherApi.canLaunchUrl((String) obj2)));
            } catch (Throwable th) {
                listWrapError = MessagesPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$1$0(UrlLauncherApi urlLauncherApi, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            j.e(reply, "reply");
            j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            j.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            j.c(obj3, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
            Map<String, String> map = (Map) obj3;
            Object obj4 = list.get(2);
            j.c(obj4, "null cannot be cast to non-null type kotlin.Boolean");
            try {
                listWrapError = p.e(Boolean.valueOf(urlLauncherApi.launchUrl(str, map, ((Boolean) obj4).booleanValue())));
            } catch (Throwable th) {
                listWrapError = MessagesPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$2$0(UrlLauncherApi urlLauncherApi, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            j.e(reply, "reply");
            j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            j.c(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = list.get(1);
            j.c(obj3, "null cannot be cast to non-null type kotlin.Boolean");
            boolean zBooleanValue = ((Boolean) obj3).booleanValue();
            Object obj4 = list.get(2);
            j.c(obj4, "null cannot be cast to non-null type io.flutter.plugins.urllauncher.WebViewOptions");
            WebViewOptions webViewOptions = (WebViewOptions) obj4;
            Object obj5 = list.get(3);
            j.c(obj5, "null cannot be cast to non-null type io.flutter.plugins.urllauncher.BrowserOptions");
            try {
                listWrapError = p.e(Boolean.valueOf(urlLauncherApi.openUrlInApp(str, zBooleanValue, webViewOptions, (BrowserOptions) obj5)));
            } catch (Throwable th) {
                listWrapError = MessagesPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$3$0(UrlLauncherApi urlLauncherApi, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            j.e(reply, "reply");
            try {
                listWrapError = p.e(Boolean.valueOf(urlLauncherApi.supportsCustomTabs()));
            } catch (Throwable th) {
                listWrapError = MessagesPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$4$0(UrlLauncherApi urlLauncherApi, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> listWrapError;
            j.e(reply, "reply");
            try {
                urlLauncherApi.closeWebView();
                listWrapError = p.e(null);
            } catch (Throwable th) {
                listWrapError = MessagesPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(listWrapError);
        }

        @NotNull
        public final MessageCodec<Object> getCodec() {
            return (MessageCodec) codec.getValue();
        }

        @JvmOverloads
        public final void setUp(@NotNull BinaryMessenger binaryMessenger, @Nullable UrlLauncherApi urlLauncherApi) {
            j.e(binaryMessenger, "binaryMessenger");
            setUp$default(this, binaryMessenger, urlLauncherApi, null, 4, null);
        }

        @JvmOverloads
        public final void setUp(@NotNull BinaryMessenger binaryMessenger, @Nullable final UrlLauncherApi api, @NotNull String messageChannelSuffix) {
            String str;
            j.e(binaryMessenger, "binaryMessenger");
            j.e(messageChannelSuffix, "messageChannelSuffix");
            if (messageChannelSuffix.length() > 0) {
                str = i.f2495E + messageChannelSuffix;
            } else {
                str = "";
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.canLaunchUrl" + str, getCodec());
            if (api != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.urllauncher.c
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        UrlLauncherApi.Companion.setUp$lambda$0$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.launchUrl" + str, getCodec());
            if (api != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.urllauncher.d
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        UrlLauncherApi.Companion.setUp$lambda$1$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.openUrlInApp" + str, getCodec());
            if (api != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.urllauncher.e
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        UrlLauncherApi.Companion.setUp$lambda$2$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.supportsCustomTabs" + str, getCodec());
            if (api != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.urllauncher.f
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        UrlLauncherApi.Companion.setUp$lambda$3$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.closeWebView" + str, getCodec());
            if (api != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.urllauncher.g
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        UrlLauncherApi.Companion.setUp$lambda$4$0(api, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
        }
    }

    boolean canLaunchUrl(@NotNull String url);

    void closeWebView();

    boolean launchUrl(@NotNull String url, @NotNull Map<String, String> headers, boolean requireNonBrowser);

    boolean openUrlInApp(@NotNull String url, boolean allowCustomTab, @NotNull WebViewOptions webViewOptions, @NotNull BrowserOptions browserOptions);

    boolean supportsCustomTabs();
}
