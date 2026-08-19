package com.ubix.ssp.ad.e.c0;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.baidu.mobads.sdk.internal.cb;
import com.ubix.ssp.ad.e.a0.p;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import com.ubix.ssp.ad.e.a0.x;
import com.ubix.ssp.ad.e.z.h;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class d extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private Context f46804a;

    /* renamed from: b, reason: collision with root package name */
    private b f46805b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f46806c = false;

    /* renamed from: d, reason: collision with root package name */
    private boolean f46807d = false;

    /* renamed from: e, reason: collision with root package name */
    private boolean f46808e = false;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebView f46809a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Bundle f46810b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f46811c;

        /* renamed from: com.ubix.ssp.ad.e.c0.d$a$a, reason: collision with other inner class name */
        public class C0818a implements h.c {
            public C0818a() {
            }

            @Override // com.ubix.ssp.ad.e.z.h.c
            public void a(h hVar) {
                d.this.f46807d = false;
            }

            @Override // com.ubix.ssp.ad.e.z.h.c
            public void b(h hVar) {
                d.this.f46807d = false;
            }

            @Override // com.ubix.ssp.ad.e.z.h.c
            public void c(h hVar) {
            }

            @Override // com.ubix.ssp.ad.e.z.h.c
            public void a(h hVar, HashMap<String, String> map) {
                if (TextUtils.isEmpty(a.this.f46811c)) {
                    return;
                }
                Uri uri = Uri.parse(a.this.f46811c);
                String lowerCase = uri.getScheme().toLowerCase();
                if (lowerCase.equals("http") || lowerCase.equals("https")) {
                    a aVar = a.this;
                    aVar.f46809a.loadUrl(aVar.f46811c);
                    d.this.f46808e = true;
                    d.this.b(uri);
                    return;
                }
                String host = uri.getHost();
                if ("ubixad".equals(lowerCase) && "mini_program".equals(host)) {
                    a aVar2 = a.this;
                    int iA = d.this.a(aVar2.f46811c);
                    if (d.this.f46805b != null) {
                        d.this.f46805b.onTwiceClicked(iA);
                    }
                }
                com.ubix.ssp.ad.e.a0.c.a(d.this.f46804a, a.this.f46811c, d.this.f46805b != null ? d.this.f46805b.replacePackageName() : null);
            }
        }

        public a(WebView webView, Bundle bundle, String str) {
            this.f46809a = webView;
            this.f46810b = bundle;
            this.f46811c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ubix.ssp.ad.e.a0.c.a(this.f46809a.getContext(), this.f46810b, new C0818a(), (h.b) null);
        }
    }

    public interface b {
        boolean needReplace();

        void onReceivedError(WebView webView, WebResourceRequest webResourceRequest);

        void onTwiceClicked(int i2);

        String replacePackageName();

        void setWebViewProgress(int i2, boolean z2, boolean z3);

        ArrayList<com.ubix.ssp.ad.d.d> shouldCheckRule();
    }

    public d(Context context, b bVar) {
        this.f46804a = context;
        this.f46805b = bVar;
    }

    private boolean c(Uri uri) {
        ArrayList<com.ubix.ssp.ad.d.d> arrayListA = a(uri);
        if (arrayListA != null && !arrayListA.isEmpty()) {
            int size = arrayListA.size();
            boolean z2 = false;
            int i2 = 0;
            while (i2 < size) {
                com.ubix.ssp.ad.d.d dVar = arrayListA.get(i2);
                i2++;
                if (!dVar.a(uri.getScheme(), uri.getHost())) {
                    z2 = true;
                }
            }
            if (z2) {
                return false;
            }
        }
        return true;
    }

    private boolean d(Uri uri) {
        ArrayList<com.ubix.ssp.ad.d.d> arrayListA = a(uri);
        if (arrayListA != null && !arrayListA.isEmpty()) {
            int size = arrayListA.size();
            int i2 = 0;
            while (i2 < size) {
                com.ubix.ssp.ad.d.d dVar = arrayListA.get(i2);
                i2++;
                if (dVar.b(uri.getScheme(), uri.getHost())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        u.b("onPageFinished:" + str);
        b bVar = this.f46805b;
        if (bVar != null) {
            bVar.setWebViewProgress(webView.getProgress(), false, true);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        b bVar = this.f46805b;
        if (bVar != null) {
            bVar.setWebViewProgress(webView.getProgress(), true, false);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        b bVar;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (!webResourceRequest.isForMainFrame() || (bVar = this.f46805b) == null) {
            return;
        }
        bVar.onReceivedError(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        b bVar;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (!webResourceRequest.isForMainFrame() || (bVar = this.f46805b) == null) {
            return;
        }
        bVar.onReceivedError(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        b bVar;
        try {
            u.a("shouldInterceptRequest:" + webResourceRequest.getUrl().toString() + " is " + webResourceRequest.isForMainFrame());
            try {
                if (!webResourceRequest.isForMainFrame()) {
                    if (!c(webResourceRequest.getUrl())) {
                        return new WebResourceResponse("text/html", "utf-8", null);
                    }
                    if (com.ubix.ssp.ad.d.b.f45805l && d(webResourceRequest.getUrl()) && !this.f46808e) {
                        a(webView, webResourceRequest.getUrl().toString());
                        return new WebResourceResponse("text/html", "utf-8", null);
                    }
                }
                this.f46808e = false;
                bVar = this.f46805b;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        } catch (Exception e3) {
            e = e3;
        }
        if (bVar != null && bVar.needReplace()) {
            Uri url = webResourceRequest.getUrl();
            String lowerCase = url.getScheme().toLowerCase();
            if (lowerCase.equals("http") || lowerCase.equals("https")) {
                HashMap map = (HashMap) webResourceRequest.getRequestHeaders();
                if (map != null) {
                    map.put("Access-Control-Allow-Origin", "*");
                    map.put("X-Requested-With", this.f46805b.replacePackageName());
                }
                HttpURLConnection httpURLConnectionA = com.ubix.ssp.ad.e.x.c.a(url.toString(), webResourceRequest.getMethod(), map);
                if (httpURLConnectionA.getResponseCode() >= 400) {
                    try {
                        String contentType = httpURLConnectionA.getContentType();
                        if (TextUtils.isEmpty(contentType)) {
                            return new WebResourceResponse("text/html", "utf-8", httpURLConnectionA.getInputStream());
                        }
                        String[] strArrSplit = contentType.split(";");
                        String str = strArrSplit[0];
                        String strReplace = strArrSplit.length == 2 ? strArrSplit[1].replace("charset=", "") : null;
                        if (TextUtils.isEmpty(str)) {
                            str = "text/html";
                        }
                        if (TextUtils.isEmpty(strReplace)) {
                            strReplace = "utf-8";
                        }
                        return new WebResourceResponse(str, strReplace, httpURLConnectionA.getInputStream());
                    } catch (Throwable unused) {
                        return new WebResourceResponse("text/html", "utf-8", httpURLConnectionA.getInputStream());
                    }
                }
                String contentType2 = httpURLConnectionA.getContentType();
                if (!TextUtils.isEmpty(contentType2)) {
                    String[] strArrSplit2 = contentType2.split(";");
                    String str2 = strArrSplit2[0];
                    String strReplace2 = strArrSplit2.length == 2 ? strArrSplit2[1].replace("charset=", "") : null;
                    Map<String, List<String>> headerFields = httpURLConnectionA.getHeaderFields();
                    HashMap map2 = new HashMap();
                    for (String str3 : headerFields.keySet()) {
                        List<String> list = headerFields.get(str3);
                        if (list != null && !list.isEmpty()) {
                            map2.put(str3, list.get(0));
                        }
                    }
                    return new WebResourceResponse(str2, strReplace2, httpURLConnectionA.getResponseCode(), cb.f11288k, map2, httpURLConnectionA.getInputStream());
                }
                u.b("Can Not invoke package replace");
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            u.a("shouldOverrideUrlLoading:" + webResourceRequest.getUrl().toString() + " is " + webResourceRequest.isForMainFrame());
            if (!c(webResourceRequest.getUrl())) {
                return true;
            }
            if (com.ubix.ssp.ad.d.b.f45805l && d(webResourceRequest.getUrl()) && !this.f46808e) {
                a(webView, webResourceRequest.getUrl().toString());
                return true;
            }
            this.f46808e = false;
            Uri url = webResourceRequest.getUrl();
            String string = url.toString();
            String lowerCase = url.getScheme().toLowerCase();
            if (!lowerCase.equals("http") && !lowerCase.equals("https")) {
                String host = url.getHost();
                if (!"ubixad".equals(lowerCase) || !"mini_program".equals(host)) {
                    b bVar = this.f46805b;
                    com.ubix.ssp.ad.e.a0.c.a(this.f46804a, string, bVar != null ? bVar.replacePackageName() : null);
                    return true;
                }
                int iA = a(string);
                b bVar2 = this.f46805b;
                if (bVar2 != null) {
                    bVar2.onTwiceClicked(iA);
                }
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        } catch (Exception e2) {
            e2.printStackTrace();
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(String str) {
        try {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                return 0;
            }
            Context context = this.f46804a;
            String strD = context != null ? v.d(context.getApplicationContext(), "ubix_sp_named_wx", "wxid") : null;
            String queryParameter = uri.getQueryParameter("userName");
            String queryParameter2 = uri.getQueryParameter("path");
            String queryParameter3 = uri.getQueryParameter("extData");
            if (TextUtils.isEmpty(strD) || TextUtils.isEmpty(queryParameter)) {
                return 1;
            }
            if (!p.b("com.tencent.mm")) {
                return 2;
            }
            if (!x.a()) {
                return 3;
            }
            x.a(this.f46804a, strD, queryParameter, queryParameter2, queryParameter3);
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Uri uri) {
        ArrayList<com.ubix.ssp.ad.d.d> arrayListA = a(uri);
        if (arrayListA == null || arrayListA.isEmpty()) {
            return;
        }
        int size = arrayListA.size();
        int i2 = 0;
        while (i2 < size) {
            com.ubix.ssp.ad.d.d dVar = arrayListA.get(i2);
            i2++;
            dVar.c(uri.getScheme(), uri.getHost());
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return super.shouldOverrideUrlLoading(webView, str);
    }

    private ArrayList<com.ubix.ssp.ad.d.d> a(Uri uri) {
        b bVar;
        if (uri == null || (bVar = this.f46805b) == null) {
            return null;
        }
        return bVar.shouldCheckRule();
    }

    private void a(WebView webView, String str) {
        if (this.f46807d) {
            return;
        }
        this.f46807d = true;
        Bundle bundle = new Bundle();
        bundle.putString("TITLE", "提示");
        bundle.putString("SUB_TITLE", "即将跳转至三方APP或其他网页，是否继续？");
        bundle.putString("BUTTON_TEXT", "继续前往");
        bundle.putInt("TYPE", 3);
        webView.post(new a(webView, bundle, str));
    }
}
