package com.smartdigimkt.sdk.basead.mraid;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import com.anythink.core.common.res.d;
import com.sigmob.sdk.base.n;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.f1.f;
import com.smartdigimkt.q1.b;
import com.smartdigimkt.q1.p;
import com.smartdigimkt.q1.w;
import com.smartdigimkt.sdk.basead.express.web.BaseWebView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public class MraidBaseWebView extends BaseWebView {

    /* renamed from: e, reason: collision with root package name */
    public w f43152e;

    /* renamed from: f, reason: collision with root package name */
    public b f43153f;

    /* renamed from: g, reason: collision with root package name */
    public p f43154g;

    /* renamed from: h, reason: collision with root package name */
    public Object f43155h;

    /* renamed from: i, reason: collision with root package name */
    public Object f43156i;

    /* renamed from: j, reason: collision with root package name */
    public String f43157j;

    /* renamed from: k, reason: collision with root package name */
    public f f43158k;

    /* renamed from: l, reason: collision with root package name */
    public String f43159l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f43160m;

    /* renamed from: n, reason: collision with root package name */
    public String f43161n;

    public MraidBaseWebView(Context context) {
        super(context);
        this.f43160m = false;
    }

    @Override // com.smartdigimkt.sdk.basead.express.web.BaseWebView
    public final void a() {
        super.a();
        getSettings().setSavePassword(false);
        try {
            getSettings().setUserAgentString(getSettings().getUserAgentString() + " WindVane/3.0.2");
        } catch (Throwable unused) {
            getSettings().setUserAgentString(h.p() + " WindVane/3.0.2");
        }
        if (this.f43152e == null) {
            this.f43152e = new w(this);
        }
        setWebViewChromeClient(this.f43152e);
        this.f43154g = new p();
        if (this.f43153f == null) {
            b bVar = new b();
            this.f43153f = bVar;
            setSignalCommunication(bVar);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.express.web.BaseWebView
    public String checkToGetUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (!str.contains("../")) {
            if (!str.startsWith(n.f36463z)) {
                return str;
            }
            String path = Uri.parse(str).getPath();
            if (!TextUtils.isEmpty(path) && path.contains(com.smartdigimkt.t3.n.a().f44327b.getAbsolutePath())) {
                return str;
            }
        }
        Log.e("sdm_express", "illegal URL: " + str);
        return d.f7446a;
    }

    public void clearWebView() {
        if (this.f43160m) {
            return;
        }
        loadUrl(d.f7446a);
    }

    public String getCampaignId() {
        return this.f43157j;
    }

    public Object getJsObject(String str) {
        p pVar = this.f43154g;
        if (pVar == null) {
            return null;
        }
        Object obj = this.f43148a;
        pVar.f42697a = this;
        try {
            if (obj instanceof com.smartdigimkt.d1.b) {
                pVar.f42698b = (com.smartdigimkt.d1.b) obj;
            } else {
                if (getObject() != null && (getObject() instanceof com.smartdigimkt.d1.b)) {
                    pVar.f42698b = (com.smartdigimkt.d1.b) getObject();
                }
                if (getMraidObject() != null && (getMraidObject() instanceof com.smartdigimkt.d1.b)) {
                    pVar.f42698b = (com.smartdigimkt.d1.b) getMraidObject();
                }
            }
        } catch (Exception unused) {
        }
        return this.f43154g;
    }

    public String getLocalRequestId() {
        return this.f43161n;
    }

    public Object getMraidObject() {
        return this.f43156i;
    }

    public Object getObject() {
        return this.f43155h;
    }

    public String getRid() {
        return this.f43159l;
    }

    public b getSignalCommunication() {
        return this.f43153f;
    }

    public f getWebViewListener() {
        return this.f43158k;
    }

    @Override // com.smartdigimkt.sdk.basead.express.web.BaseWebView
    public boolean isDestroyed() {
        return this.f43160m;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.smartdigimkt.sdk.basead.express.web.BaseWebView
    public void release() {
        try {
            removeAllViews();
            setDownloadListener(null);
            this.f43155h = null;
            Context context = getContext();
            if (context == null) {
                context = SDKContext.getInstance().d();
            }
            float fA = k.a(context);
            if (fA == 0.0f) {
                this.f43160m = true;
                destroy();
            } else {
                e.a().a((long) (fA * 1000.0f), new com.smartdigimkt.q1.e(this));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setCampaignId(String str) {
        this.f43157j = str;
    }

    public void setLocalRequestId(String str) {
        this.f43161n = str;
    }

    public void setMraidObject(Object obj) {
        this.f43156i = obj;
    }

    public void setObject(Object obj) {
        this.f43155h = obj;
    }

    public void setRid(String str) {
        this.f43159l = str;
    }

    public void setSignalCommunication(b bVar) {
        this.f43153f = bVar;
        bVar.f42676a = this;
    }

    public void setTempTypeForMetrics(int i2) {
    }

    public void setWebViewChromeClient(w wVar) {
        this.f43152e = wVar;
        setWebChromeClient(wVar);
    }

    public void setWebViewListener(f fVar) {
        this.f43158k = fVar;
        w wVar = this.f43152e;
        if (wVar != null) {
            wVar.f42713b = fVar;
        }
        com.smartdigimkt.f1.e eVar = this.mWebViewClient;
        if (eVar != null) {
            eVar.f40198a = fVar;
        }
    }

    public void setWebViewTransparent() {
        super.setTransparent();
    }

    public MraidBaseWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43160m = false;
    }

    public MraidBaseWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43160m = false;
    }
}
