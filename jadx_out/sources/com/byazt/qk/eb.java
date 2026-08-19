package com.byazt.qk;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.jz.ud;
import com.byazt.sq.e;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 64, 94})
/* loaded from: classes3.dex */
public class eb extends com.byazt.cf.j {

    /* renamed from: e, reason: collision with root package name */
    public mp f24843e;
    public boolean gu;
    public ArrayList<Integer> hp;
    public com.byazt.fub.zy jl;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.es.s f24844q;

    public eb(Context context, ud udVar, mp mpVar, com.byazt.jdb.a aVar, boolean z2, com.byazt.es.s sVar, com.byazt.fub.zy zyVar) {
        super(context, udVar, mpVar.j(), aVar);
        this.hp = new ArrayList<>();
        this.f24843e = mpVar;
        this.gu = z2;
        this.f24844q = sVar;
        this.jl = zyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String j() {
        if (hd.a(this.f24843e) != null) {
            return hd.a(this.f24843e).gu();
        }
        if (hd.eb(this.f24843e) != null) {
            return "v3";
        }
        return null;
    }

    @Override // com.byazt.cf.j, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f18830a = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.byazt.cf.j, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.eb = false;
        super.onPageStarted(webView, str, bitmap);
        com.byazt.fub.zy zyVar = this.jl;
        if (zyVar == null || !zyVar.di()) {
            return;
        }
        com.byazt.ymw.k.hp(webView, "javascript:window.SDK_INJECT_DATA=" + this.jl.w());
    }

    @Override // com.byazt.cf.j, android.webkit.WebViewClient
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("ExpressClient", "shouldInterceptRequest error1", th);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    public int hp() {
        ArrayList<Integer> arrayList = this.hp;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Integer num = arrayList.get(i2);
            i2++;
            Integer num2 = num;
            if (num2.intValue() == 3 || num2.intValue() == 2 || num2.intValue() == -1) {
                return num2.intValue();
            }
        }
        return TextUtils.isEmpty(j()) ? -1 : 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    @Override // com.byazt.cf.j, android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView r9, java.lang.String r10) {
        /*
            r8 = this;
            com.byazt.es.s r0 = r8.f24844q     // Catch: java.lang.Throwable -> L8
            if (r0 == 0) goto Lc
            r0.s(r10)     // Catch: java.lang.Throwable -> L8
            goto Lc
        L8:
            r0 = move-exception
            r1 = r8
            r6 = r10
            goto L5e
        Lc:
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L8
            com.byazt.xci.mp r0 = r8.f24843e     // Catch: java.lang.Throwable -> L8
            com.byazt.qk.eb$1 r1 = new com.byazt.qk.eb$1     // Catch: java.lang.Throwable -> L8
            r1.<init>()     // Catch: java.lang.Throwable -> L8
            com.byazt.ir.hp r0 = com.byazt.yp.hp.hp(r9, r0, r10, r1)     // Catch: java.lang.Throwable -> L8
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L8
            if (r0 == 0) goto L2c
            android.webkit.WebResourceResponse r1 = r0.hp()     // Catch: java.lang.Throwable -> L8
            if (r1 == 0) goto L2c
            r1 = 1
        L28:
            r6 = r10
            r7 = r1
            r1 = r8
            goto L2e
        L2c:
            r1 = 2
            goto L28
        L2e:
            r1.hp(r2, r4, r6, r7)     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L4a
            int r10 = r0.getType()     // Catch: java.lang.Throwable -> L48
            r2 = 5
            if (r10 == r2) goto L4a
            java.util.ArrayList<java.lang.Integer> r10 = r1.hp     // Catch: java.lang.Throwable -> L48
            int r2 = r0.getType()     // Catch: java.lang.Throwable -> L48
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L48
            r10.add(r2)     // Catch: java.lang.Throwable -> L48
            goto L4a
        L48:
            r0 = move-exception
            goto L5e
        L4a:
            if (r0 == 0) goto L65
            android.webkit.WebResourceResponse r10 = r0.hp()     // Catch: java.lang.Throwable -> L48
            if (r10 == 0) goto L65
            com.byazt.es.s r10 = r1.f24844q     // Catch: java.lang.Throwable -> L48
            if (r10 == 0) goto L59
            r10.q(r6)     // Catch: java.lang.Throwable -> L48
        L59:
            android.webkit.WebResourceResponse r9 = r0.hp()     // Catch: java.lang.Throwable -> L48
            return r9
        L5e:
            java.lang.String r10 = "ExpressClient"
            java.lang.String r2 = "shouldInterceptRequest error2"
            com.byazt.ymw.u.hp(r10, r2, r0)
        L65:
            android.webkit.WebResourceResponse r9 = super.shouldInterceptRequest(r9, r6)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qk.eb.shouldInterceptRequest(android.webkit.WebView, java.lang.String):android.webkit.WebResourceResponse");
    }

    private void hp(long j2, long j3, String str, int i2) {
        com.byazt.jdb.a aVar = this.f18836w;
        if (aVar == null || aVar.jx() == null) {
            return;
        }
        e.hp hpVarHp = com.byazt.sq.e.hp(str);
        if (hpVarHp == e.hp.HTML) {
            this.f18836w.jx().hp(str, j2, j3, i2);
        } else if (hpVarHp == e.hp.JS) {
            this.f18836w.jx().l(str, j2, j3, i2);
        }
    }
}
