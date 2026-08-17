package androidx.webkit;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebStorage;
import androidx.annotation.UiThread;
import androidx.webkit.internal.WebStorageAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class WebStorageCompat {
    private WebStorageCompat() {
    }

    @UiThread
    public static void deleteBrowsingData(WebStorage webStorage, Executor executor, Runnable runnable) {
        if (!WebViewFeatureInternal.DELETE_BROWSING_DATA.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        getAdapter(webStorage).deleteBrowsingData(executor, runnable);
    }

    @UiThread
    public static String deleteBrowsingDataForSite(WebStorage webStorage, String str, Executor executor, Runnable runnable) {
        if (WebViewFeatureInternal.DELETE_BROWSING_DATA.isSupportedByWebView()) {
            return getAdapter(webStorage).deleteBrowsingDataForSite(str, executor, runnable);
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    private static WebStorageAdapter getAdapter(WebStorage webStorage) {
        return WebViewGlueCommunicator.getCompatConverter().convertWebStorage(webStorage);
    }

    @UiThread
    public static void deleteBrowsingData(WebStorage webStorage, Runnable runnable) {
        deleteBrowsingData(webStorage, new Executor() { // from class: androidx.webkit.d
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable2) {
                new Handler(Looper.getMainLooper()).post(runnable2);
            }
        }, runnable);
    }

    @UiThread
    public static String deleteBrowsingDataForSite(WebStorage webStorage, String str, Runnable runnable) {
        return deleteBrowsingDataForSite(webStorage, str, new Executor() { // from class: androidx.webkit.c
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable2) {
                new Handler(Looper.getMainLooper()).post(runnable2);
            }
        }, runnable);
    }
}
