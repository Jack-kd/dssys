package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.ExpressAdData;
import com.baidu.mobads.sdk.api.ExpressResponse;
import java.util.LinkedHashMap;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class bs implements ExpressResponse {

    /* renamed from: a, reason: collision with root package name */
    private Context f11222a;

    /* renamed from: b, reason: collision with root package name */
    private int f11223b = 1;

    /* renamed from: c, reason: collision with root package name */
    private ExpressResponse.ExpressInteractionListener f11224c;

    /* renamed from: d, reason: collision with root package name */
    private ExpressResponse.ExpressAdDownloadWindowListener f11225d;

    /* renamed from: e, reason: collision with root package name */
    private ExpressResponse.ExpressDislikeListener f11226e;

    /* renamed from: f, reason: collision with root package name */
    private ExpressResponse.ExpressCloseListener f11227f;

    /* renamed from: g, reason: collision with root package name */
    private final dg f11228g;

    /* renamed from: h, reason: collision with root package name */
    private final a f11229h;

    /* renamed from: i, reason: collision with root package name */
    private ViewGroup f11230i;

    /* renamed from: j, reason: collision with root package name */
    private ExpressAdData f11231j;

    /* renamed from: k, reason: collision with root package name */
    private String f11232k;

    public bs(Context context, dg dgVar, a aVar) {
        this.f11222a = context;
        this.f11228g = dgVar;
        this.f11229h = aVar;
    }

    public void a(int i2) {
        this.f11223b = i2;
    }

    public void b() {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f11224c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdClick();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void biddingFail(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        if (this.f11228g != null) {
            String strM = this.f11232k;
            a aVar = this.f11229h;
            if (aVar != null) {
                strM = aVar.M();
            }
            this.f11228g.a(strM, false, linkedHashMap, biddingListener);
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void biddingSuccess(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        dg dgVar;
        a aVar = this.f11229h;
        if (aVar == null || (dgVar = this.f11228g) == null) {
            return;
        }
        dgVar.a(aVar.M(), true, linkedHashMap, biddingListener);
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void bindInteractionActivity(Activity activity) throws JSONException {
        dg dgVar = this.f11228g;
        if (dgVar != null) {
            dgVar.b(activity);
        }
    }

    public void c() {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f11224c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdExposed();
        }
    }

    public void d() {
        ExpressResponse.ExpressDislikeListener expressDislikeListener = this.f11226e;
        if (expressDislikeListener != null) {
            expressDislikeListener.onDislikeWindowShow();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void destroy() throws JSONException {
        a aVar;
        ViewGroup viewGroup;
        dg dgVar = this.f11228g;
        if (dgVar == null || (aVar = this.f11229h) == null || (viewGroup = this.f11230i) == null) {
            return;
        }
        dgVar.b(viewGroup, aVar);
    }

    public void e() {
        ExpressResponse.ExpressDislikeListener expressDislikeListener = this.f11226e;
        if (expressDislikeListener != null) {
            expressDislikeListener.onDislikeWindowClose();
        }
    }

    public void f() {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f11224c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdUnionClick();
        }
    }

    public void g() {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f11225d;
        if (expressAdDownloadWindowListener != null) {
            expressAdDownloadWindowListener.onADPrivacyClick();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public int getAdActionType() {
        return this.f11223b;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public ExpressAdData getAdData() {
        return this.f11231j;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public Object getAdDataForKey(String str) {
        if (this.f11229h != null) {
            return "request_id".equals(str) ? this.f11229h.Z() : this.f11229h.a(str);
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public String getECPMLevel() {
        a aVar = this.f11229h;
        return aVar != null ? aVar.A() : "";
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public View getExpressAdView() {
        a aVar;
        if (this.f11230i == null && (aVar = this.f11229h) != null) {
            this.f11230i = this.f11228g.a(aVar);
        }
        return this.f11230i;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public String getPECPM() {
        a aVar = this.f11229h;
        return aVar != null ? aVar.B() : "";
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public int getStyleType() {
        a aVar = this.f11229h;
        if (aVar != null) {
            return aVar.w();
        }
        return 0;
    }

    public void h() {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f11225d;
        if (expressAdDownloadWindowListener != null) {
            expressAdDownloadWindowListener.onADFunctionClick();
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public boolean isAdAvailable() {
        return this.f11229h != null && System.currentTimeMillis() - this.f11229h.z() <= this.f11229h.K();
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public boolean isReady(Context context) {
        return this.f11229h != null && System.currentTimeMillis() - this.f11229h.z() <= this.f11229h.K();
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void render() throws JSONException {
        a aVar;
        dg dgVar = this.f11228g;
        if (dgVar == null || (aVar = this.f11229h) == null) {
            return;
        }
        if (this.f11230i == null) {
            this.f11230i = dgVar.a(aVar);
        }
        this.f11228g.a(this.f11230i, this.f11229h);
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setAdCloseListener(ExpressResponse.ExpressCloseListener expressCloseListener) {
        this.f11227f = expressCloseListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setAdDislikeListener(ExpressResponse.ExpressDislikeListener expressDislikeListener) {
        this.f11226e = expressDislikeListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setAdPrivacyListener(ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener) {
        this.f11225d = expressAdDownloadWindowListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setExpectedSizePixel(int i2, int i3) {
        dg dgVar = this.f11228g;
        if (dgVar != null) {
            dgVar.a(i2, i3);
        }
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public void setInteractionListener(ExpressResponse.ExpressInteractionListener expressInteractionListener) {
        this.f11224c = expressInteractionListener;
    }

    @Override // com.baidu.mobads.sdk.api.ExpressResponse
    public boolean switchTheme(int i2) {
        dg dgVar = this.f11228g;
        if (dgVar != null) {
            return dgVar.a(this.f11230i, this.f11229h, i2);
        }
        return false;
    }

    public void a(String str) {
        this.f11232k = str;
    }

    public String a() {
        a aVar = this.f11229h;
        if (aVar != null) {
            return aVar.M();
        }
        return "";
    }

    public void b(String str) {
        dg dgVar;
        a aVar = this.f11229h;
        if (aVar != null && (dgVar = this.f11228g) != null) {
            this.f11231j = new ExpressAdData(aVar, dgVar.g());
        }
        ExpressResponse.ExpressDislikeListener expressDislikeListener = this.f11226e;
        if (expressDislikeListener != null) {
            expressDislikeListener.onDislikeItemClick(str);
        }
    }

    public void a(View view, int i2, int i3) {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f11224c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdRenderSuccess(view, i2, i3);
        }
    }

    public void b(boolean z2) {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f11225d;
        if (expressAdDownloadWindowListener != null) {
            if (z2) {
                expressAdDownloadWindowListener.adDownloadWindowShow();
            } else {
                expressAdDownloadWindowListener.adDownloadWindowClose();
            }
        }
    }

    public void a(View view, String str, int i2) {
        ExpressResponse.ExpressInteractionListener expressInteractionListener = this.f11224c;
        if (expressInteractionListener != null) {
            expressInteractionListener.onAdRenderFail(view, str, i2);
        }
    }

    public void a(ExpressResponse expressResponse) {
        ExpressResponse.ExpressCloseListener expressCloseListener = this.f11227f;
        if (expressCloseListener != null) {
            expressCloseListener.onAdClose(expressResponse);
        }
    }

    public void a(boolean z2) {
        ExpressResponse.ExpressAdDownloadWindowListener expressAdDownloadWindowListener = this.f11225d;
        if (expressAdDownloadWindowListener != null) {
            if (z2) {
                expressAdDownloadWindowListener.onADPermissionShow();
            } else {
                expressAdDownloadWindowListener.onADPermissionClose();
            }
        }
    }
}
