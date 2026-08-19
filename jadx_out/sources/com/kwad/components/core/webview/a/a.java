package com.kwad.components.core.webview.a;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.WorkerThread;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.e.d.d;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import com.kwad.sdk.utils.ce;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a {
    private d QS;
    private WebView ade;
    private boolean aow;
    private KsAppDownloadListener aph;
    private int api = -100;
    private int apj = 0;
    private com.kwad.sdk.core.webview.b fi;
    private AdTemplate mAdTemplate;

    @KsJson
    /* renamed from: com.kwad.components.core.webview.a.a$a, reason: collision with other inner class name */
    public static final class C0560a extends com.kwad.sdk.core.response.a.a {
        public String packageName;
        public String url;
    }

    @KsJson
    public static final class b extends com.kwad.sdk.core.response.a.a {
        public int progress;
        public int status;
    }

    public a(WebView webView, com.kwad.sdk.core.webview.b bVar) {
        this.ade = webView;
        this.mAdTemplate = bVar.getAdTemplate();
        this.fi = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bA(String str) {
        try {
            C0560a c0560a = new C0560a();
            c0560a.parseJson(new JSONObject(str));
            if (s(c0560a.url, c0560a.packageName)) {
                return;
            }
            if (this.QS == null) {
                r(c0560a.url, c0560a.packageName);
            }
            a.C0529a c0529aAv = new a.C0529a(this.fi.ade.getContext()).as(true).at(false).aJ(this.mAdTemplate).av(false);
            if (this.QS.w(c0529aAv)) {
                return;
            }
            this.QS.d(this.aph);
            this.QS.v(c0529aAv);
        } catch (JSONException e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }

    private void q(String str, String str2) {
        WebView webView;
        if (this.aow || TextUtils.isEmpty(str) || (webView = this.ade) == null) {
            return;
        }
        ce.a(webView, str, str2);
    }

    private synchronized void r(String str, String str2) {
        this.QS = new d(this.mAdTemplate, null, str, str2);
        if (this.aph == null) {
            KsAppDownloadListener ksAppDownloadListenerYr = yr();
            this.aph = ksAppDownloadListenerYr;
            this.QS.b(ksAppDownloadListenerYr);
        }
    }

    private static boolean s(String str, String str2) {
        return TextUtils.isEmpty(str) || TextUtils.isEmpty(str2);
    }

    private KsAppDownloadListener yr() {
        return new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.core.webview.a.a.2
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                a.this.s(0, 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                a.this.s(8, 100);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                a.this.s(0, 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                a.this.s(12, 100);
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i2) {
                a.this.s(4, i2);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i2) {
                if (i2 == 0) {
                    a.this.s(1, 0);
                } else {
                    a.this.s(2, i2);
                }
            }
        };
    }

    public final void destroy() {
        this.aow = true;
        d dVar = this.QS;
        if (dVar != null) {
            dVar.c(this.aph);
        }
    }

    @JavascriptInterface
    public final int getDownLoadStatus(String str, String str2) {
        if (s(str, str2)) {
            return 0;
        }
        if (this.QS == null) {
            r(str, str2);
        }
        return this.QS.qn();
    }

    @JavascriptInterface
    public final int getProgress(String str, String str2) {
        if (s(str, str2)) {
            return 0;
        }
        if (this.QS == null) {
            r(str, str2);
        }
        return this.apj;
    }

    @JavascriptInterface
    @WorkerThread
    public final void handleAdClick(final String str) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.webview.a.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.bA(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(int i2, int i3) {
        this.apj = i3;
        if (this.api != i2) {
            this.api = i2;
            StringBuilder sb = new StringBuilder();
            sb.append(i2);
            q("onDownLoadStatusCallback", sb.toString());
        }
    }
}
