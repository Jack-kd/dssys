package com.meishu.sdk.core.webview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.m0;
import com.meishu.sdk.core.utils.p0;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class f extends m {

    /* renamed from: e, reason: collision with root package name */
    public final g f32113e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f32114f;

    /* renamed from: g, reason: collision with root package name */
    public com.meishu.sdk.core.webview.listener.f f32115g;

    public f(Context context, String str, @NotNull g gVar) {
        super(context);
        this.f32114f = true;
        this.f32113e = gVar;
    }

    @Override // com.meishu.sdk.core.webview.m
    public boolean a(Intent intent) {
        if (!this.f32114f) {
            return false;
        }
        try {
            com.meishu.sdk.core.webview.listener.f fVar = this.f32115g;
            if (fVar != null) {
                fVar.onDPStart();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        final boolean[] zArr = {false};
        final m0 m0Var = new m0(1500L, true);
        p0.b.f31950a.f31949a = new p0.a() { // from class: O0.b
            @Override // com.meishu.sdk.core.utils.p0.a
            public final void a(boolean z2) {
                this.f396a.a(zArr, m0Var, z2);
            }
        };
        com.meishu.sdk.core.service.d.a(m0Var);
        zArr[0] = super.a(intent);
        StringBuilder sbA = com.meishu.sdk.activity.a.a("super.jump res:");
        sbA.append(zArr[0]);
        LogUtil.dev("FreedomWebViewClient", sbA.toString());
        if (!zArr[0]) {
            boolean z2 = m0Var.f31935e;
            try {
                com.meishu.sdk.core.webview.listener.f fVar2 = this.f32115g;
                if (fVar2 != null) {
                    fVar2.onJumpDPRes(false, z2);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            p0.b.f31950a.f31949a = null;
            com.meishu.sdk.core.service.d.b(m0Var);
        }
        return zArr[0];
    }

    @Override // com.meishu.sdk.core.webview.m, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        boolean zOnPageFinished;
        LogUtil.dev("FreedomWebViewClient", "onPageFinished:" + str);
        super.onPageFinished(webView, str);
        g gVar = this.f32113e;
        gVar.getClass();
        try {
            LogUtil.dev("H5LoadSate", "notifyOnPageFinished:" + str);
            if (TextUtils.isEmpty(str)) {
                LogUtil.dev("H5LoadSate", "notifyOnPageFinished url null");
                return;
            }
            if (!gVar.f32118c.contains(str)) {
                gVar.f32118c.add(str);
            }
            if (gVar.f32116a.isEmpty()) {
                LogUtil.dev("H5LoadSate", "notifyOnPageFinished listener null");
                return;
            }
            try {
                ArrayList arrayList = new ArrayList(gVar.f32116a);
                int size = arrayList.size();
                ArrayList arrayList2 = null;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    com.meishu.sdk.core.webview.listener.g gVar2 = (com.meishu.sdk.core.webview.listener.g) obj;
                    try {
                        boolean z2 = gVar.f32118c.size() == 1 && str.equals(gVar.f32120e);
                        boolean z3 = (TextUtils.isEmpty(str) || !gVar.f32118c.contains(str) || gVar.f32117b.containsKey(str) || q.a(str)) ? false : true;
                        zOnPageFinished = gVar2.onPageFinished(str, z2, z3, gVar.a(str));
                    } catch (Throwable th) {
                        th.printStackTrace();
                        zOnPageFinished = false;
                    }
                    if (!zOnPageFinished) {
                        LogUtil.dev("H5LoadSate", "notifyOnPageFinished nokeep");
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(gVar2);
                    }
                }
                if (arrayList2 != null) {
                    gVar.f32116a.removeAll(arrayList2);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        LogUtil.dev("FreedomWebViewClient", "onPageStarted:" + str);
        g gVar = this.f32113e;
        gVar.getClass();
        try {
            gVar.f32119d = str;
            LogUtil.dev("H5LoadSate", "notifyOnPageStarted:" + str);
            if (!TextUtils.isEmpty(str) && !gVar.f32116a.isEmpty()) {
                try {
                    ArrayList arrayList = new ArrayList(gVar.f32116a);
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        try {
                            ((com.meishu.sdk.core.webview.listener.g) obj).onPageStarted(str);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        try {
            LogUtil.dev("FreedomWebViewClient", "onReceivedError1:" + webView.getUrl() + " " + webResourceRequest.getUrl());
            this.f32113e.a(webResourceRequest.getUrl().toString(), -1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        try {
            int statusCode = webResourceResponse.getStatusCode();
            LogUtil.dev("FreedomWebViewClient", "onReceivedHttpError " + webResourceRequest.isForMainFrame() + " statusCode:" + statusCode + ":" + webView.getUrl() + " " + webResourceRequest.getUrl());
            if (statusCode != 404 && statusCode < 500) {
                return;
            }
            this.f32113e.a(webResourceRequest.getUrl().toString(), statusCode);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        StringBuilder sbA = com.meishu.sdk.activity.a.a("onReceivedSslError:");
        sbA.append(webView.getUrl());
        sbA.append(" ");
        sbA.append(sslError.toString());
        LogUtil.dev("FreedomWebViewClient", sbA.toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
        StringBuilder sbA = com.meishu.sdk.activity.a.a("onReceivedError2:");
        sbA.append(webView.getUrl());
        sbA.append("  ");
        sbA.append(i2);
        sbA.append("  ");
        sbA.append(str);
        sbA.append(" ");
        sbA.append(str2);
        LogUtil.dev("FreedomWebViewClient", sbA.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean[] zArr, m0 m0Var, boolean z2) {
        LogUtil.dev("FreedomWebViewClient", "h5 openDeepLink res :" + z2);
        if (zArr[0]) {
            boolean z3 = m0Var.f31935e;
            try {
                com.meishu.sdk.core.webview.listener.f fVar = this.f32115g;
                if (fVar != null) {
                    fVar.onJumpDPRes(z2, z3);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
