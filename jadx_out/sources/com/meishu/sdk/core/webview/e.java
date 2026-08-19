package com.meishu.sdk.core.webview;

import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.meishu.sdk.core.utils.LogUtil;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class e extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final g f32112a;

    public e(String str, @NotNull g gVar) {
        this.f32112a = gVar;
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        LogUtil.dev("FreedomWebViewClient", "onReceivedTitle:" + str);
        try {
            String url = webView.getUrl();
            if (q.a(url)) {
                return;
            }
            int iA = this.f32112a.a(url);
            if (iA == 404 || iA >= 500) {
                webView.stopLoading();
                try {
                    String str2 = q.f32141h;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    webView.loadDataWithBaseURL("file:///android_asset/", str2, "text/html", "UTF-8", null);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
