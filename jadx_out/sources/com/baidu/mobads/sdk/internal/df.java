package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressInterstitialListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class df extends bj {

    /* renamed from: A, reason: collision with root package name */
    private ExpressInterstitialListener f11453A;

    /* renamed from: B, reason: collision with root package name */
    private ExpressInterstitialAd.InterAdDownloadWindowListener f11454B;

    /* renamed from: C, reason: collision with root package name */
    private ExpressInterstitialAd.InterstitialAdDislikeListener f11455C;

    /* renamed from: D, reason: collision with root package name */
    private a f11456D;

    /* renamed from: E, reason: collision with root package name */
    private boolean f11457E;

    /* renamed from: F, reason: collision with root package name */
    private boolean f11458F;

    /* renamed from: a, reason: collision with root package name */
    RelativeLayout f11459a;

    /* renamed from: t, reason: collision with root package name */
    public boolean f11460t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f11461u;

    /* renamed from: v, reason: collision with root package name */
    private int f11462v;

    /* renamed from: w, reason: collision with root package name */
    private String f11463w;

    /* renamed from: x, reason: collision with root package name */
    private String f11464x;

    /* renamed from: y, reason: collision with root package name */
    private int f11465y;

    /* renamed from: z, reason: collision with root package name */
    private int f11466z;

    public df(Context context, RelativeLayout relativeLayout, String str) {
        super(context);
        this.f11462v = AVMDLDataLoader.KeyIsLiveSetLoaderType;
        this.f11463w = IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL;
        this.f11465y = 600;
        this.f11466z = 500;
        this.f11457E = false;
        this.f11459a = relativeLayout;
        this.f11464x = str;
    }

    public void a(ExpressInterstitialAd.InterAdDownloadWindowListener interAdDownloadWindowListener) {
        this.f11454B = interAdDownloadWindowListener;
    }

    public void b(boolean z2) {
        this.f11457E = z2;
    }

    public void c(boolean z2) {
        this.f11458F = z2;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d(String str) {
    }

    public String e() {
        return this.f11463w;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void f(String str) {
    }

    public void g() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.showAd();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onAdClick();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() {
        this.f11182s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, this.f11463w);
            this.f11176m.createProdHandler(jSONObject2);
            this.f11176m.setAdContainer(this.f11459a);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, this.f11463w);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f11464x);
            jSONObject.put("n", "1");
            if (!TextUtils.isEmpty(this.f11180q)) {
                jSONObject.put("appid", this.f11180q);
            }
            if (cs.a().b()) {
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON,HTML");
            } else {
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON,HTML,CLICK2VIDEO");
            }
            jSONObject.put("at", "10");
            jSONObject.put("w", "" + bb.b(this.f11172i));
            jSONObject.put("h", "" + bb.c(this.f11172i));
            jSONObject.put("msa", 159);
            jSONObject.put("opt", 1);
            jSONObject = m.a(jSONObject, b(this.f11178o));
            b(jSONObject);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("onlyLoadAd", this.f11460t);
            jSONObject.put(SplashAd.KEY_POPDIALOG_DOWNLOAD, this.f11457E);
            jSONObject.put("use_dialog_container", this.f11458F);
            jSONObject.put("timeout", this.f11462v);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void u() {
        ExpressInterstitialAd.InterAdDownloadWindowListener interAdDownloadWindowListener = this.f11454B;
        if (interAdDownloadWindowListener != null) {
            interAdDownloadWindowListener.onADPrivacyClose();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void v() {
    }

    public a x() {
        return this.f11456D;
    }

    public void a(ExpressInterstitialAd.InterstitialAdDislikeListener interstitialAdDislikeListener) {
        this.f11455C = interstitialAdDislikeListener;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b() {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onAdCacheSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c() {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onAdCacheFailed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d() {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onLpClosed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(IOAdEvent iOAdEvent) {
        this.f11461u = false;
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onADExposed();
        }
    }

    public boolean f() {
        return this.f11461u;
    }

    public void a(int i2) {
        this.f11462v = i2;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void f(IOAdEvent iOAdEvent) {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onADExposureFailed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void g(IOAdEvent iOAdEvent) {
        super.g(iOAdEvent);
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onAdClose();
        }
    }

    public void a(ExpressInterstitialListener expressInterstitialListener) {
        this.f11453A = expressInterstitialListener;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b(String str, boolean z2) {
        ExpressInterstitialAd.InterAdDownloadWindowListener interAdDownloadWindowListener = this.f11454B;
        if (interAdDownloadWindowListener != null) {
            if (z2) {
                interAdDownloadWindowListener.adDownloadWindowShow();
            } else {
                interAdDownloadWindowListener.adDownloadWindowClose();
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c(IOAdEvent iOAdEvent) {
        ExpressInterstitialAd.InterstitialAdDislikeListener interstitialAdDislikeListener = this.f11455C;
        if (interstitialAdDislikeListener == null || iOAdEvent == null) {
            return;
        }
        interstitialAdDislikeListener.interstitialAdDislikeClick();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener == null) {
            this.f11177n = false;
            return;
        }
        this.f11461u = false;
        this.f11177n = true;
        iAdInterListener.loadAd(j(), k());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(String str) {
        ExpressInterstitialAd.InterAdDownloadWindowListener interAdDownloadWindowListener = this.f11454B;
        if (interAdDownloadWindowListener != null) {
            interAdDownloadWindowListener.onADPrivacyClick();
        }
    }

    public void a(RequestParameters requestParameters) {
        int width = requestParameters.getWidth();
        int height = requestParameters.getHeight();
        if (width > 0 && height > 0) {
            this.f11465y = width;
            this.f11466z = height;
        }
        a(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onAdFailed(i2, str);
        }
        super.a(str, i2, str2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(int i2, String str, String str2) {
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onNoAd(i2, str);
        }
        super.a(i2, str, str2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, boolean z2) {
        ExpressInterstitialAd.InterAdDownloadWindowListener interAdDownloadWindowListener = this.f11454B;
        if (interAdDownloadWindowListener != null) {
            if (z2) {
                interAdDownloadWindowListener.onADPermissionShow();
            } else {
                interAdDownloadWindowListener.onADPermissionClose();
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(IOAdEvent iOAdEvent) {
        List<a> listA;
        if (iOAdEvent != null && (listA = b.a(iOAdEvent.getMessage()).a()) != null && listA.size() > 0) {
            this.f11456D = listA.get(0);
        }
        this.f11461u = true;
        ExpressInterstitialListener expressInterstitialListener = this.f11453A;
        if (expressInterstitialListener != null) {
            expressInterstitialListener.onADLoaded();
        }
    }

    public void a(MotionEvent motionEvent) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_d_t", motionEvent.getDownTime());
            jSONObject.put("e_e_t", motionEvent.getEventTime());
            jSONObject.put("e_a", motionEvent.getAction());
            jSONObject.put("e_x", motionEvent.getX());
            jSONObject.put("e_y", motionEvent.getY());
            jSONObject.put("e_m_s", motionEvent.getMetaState());
            jSONObject.put("event_type", "x_event");
            a(jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z2, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        a aVar = this.f11456D;
        if (aVar != null) {
            a(aVar.M(), z2, linkedHashMap, biddingListener);
        } else {
            a(this.f11173j, z2, linkedHashMap, biddingListener);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(Map<String, String> map) {
        try {
            this.f11178o = m.a(map);
        } catch (Throwable unused) {
            this.f11178o = new HashMap<>();
        }
    }

    public Object a(String str) {
        if (this.f11456D == null) {
            return null;
        }
        if ("request_id".equals(str)) {
            return this.f11456D.Z();
        }
        return this.f11456D.a(str);
    }
}
