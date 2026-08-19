package io.flutter.plugins.webviewflutter;

import android.webkit.DownloadListener;
import androidx.annotation.NonNull;
import io.flutter.plugins.webviewflutter.DownloadListenerProxyApi;
import kotlin.Result;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public class DownloadListenerProxyApi extends PigeonApiDownloadListener {

    public static class DownloadListenerImpl implements DownloadListener {
        private final DownloadListenerProxyApi api;

        public DownloadListenerImpl(@NonNull DownloadListenerProxyApi downloadListenerProxyApi) {
            this.api = downloadListenerProxyApi;
        }

        public static /* synthetic */ kotlin.j a(Result result) {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDownloadStart$1(String str, String str2, String str3, String str4, long j2) {
            this.api.onDownloadStart(this, str, str2, str3, str4, j2, new Function1() { // from class: io.flutter.plugins.webviewflutter.N
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadListenerProxyApi.DownloadListenerImpl.a((Result) obj);
                }
            });
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(@NonNull final String str, @NonNull final String str2, @NonNull final String str3, @NonNull final String str4, final long j2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.O
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51005b.lambda$onDownloadStart$1(str, str2, str3, str4, j2);
                }
            });
        }
    }

    public DownloadListenerProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiDownloadListener
    @NonNull
    public DownloadListener pigeon_defaultConstructor() {
        return new DownloadListenerImpl(this);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiDownloadListener
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
