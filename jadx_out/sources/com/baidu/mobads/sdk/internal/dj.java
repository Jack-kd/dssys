package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.RewardVideoRewardInfo;
import com.baidu.mobads.sdk.api.ScreenVideoAdListener;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class dj extends bj {

    /* renamed from: A, reason: collision with root package name */
    private String f11491A;

    /* renamed from: B, reason: collision with root package name */
    private a f11492B;

    /* renamed from: C, reason: collision with root package name */
    private RequestParameters f11493C;

    /* renamed from: a, reason: collision with root package name */
    private boolean f11494a;

    /* renamed from: t, reason: collision with root package name */
    private int f11495t;

    /* renamed from: u, reason: collision with root package name */
    private String f11496u;

    /* renamed from: v, reason: collision with root package name */
    private ScreenVideoAdListener f11497v;

    /* renamed from: w, reason: collision with root package name */
    private final String f11498w;

    /* renamed from: x, reason: collision with root package name */
    private int f11499x;

    /* renamed from: y, reason: collision with root package name */
    private int f11500y;

    /* renamed from: z, reason: collision with root package name */
    private String f11501z;

    public dj(Context context, String str, boolean z2) {
        this(context, str, z2, IAdInterListener.AdProdType.PRODUCT_REWARDVIDEO);
    }

    public void a(Context context) throws JSONException {
        if (this.f11176m != null) {
            JSONObject jSONObject = new JSONObject();
            HashMap map = new HashMap();
            try {
                jSONObject.put("msg", "setContext");
                map.put(com.umeng.analytics.pro.g.f49337X, context);
            } catch (JSONException e2) {
                bv.a().a(e2);
            }
            a(jSONObject, map);
            this.f11176m.showAd();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b() {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onVideoDownloadSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c() {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onVideoDownloadFailed();
        }
    }

    public void e() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.showAd();
        }
    }

    public boolean f() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            return iAdInterListener.isAdReady();
        }
        return false;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void g(IOAdEvent iOAdEvent) {
        super.g(iOAdEvent);
        float fFloatValue = (iOAdEvent == null || iOAdEvent.getData() == null) ? 0.0f : ((Float) iOAdEvent.getData().get("play_scale")).floatValue();
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdClose(fFloatValue);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdClick();
        }
    }

    public void j(String str) {
        this.f11491A = str;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timeout", AVMDLDataLoader.KeyIsLiveSetLoaderType);
            jSONObject.put("useSurfaceView", this.f11494a);
            jSONObject.put("downloadConfirmPolicy", this.f11495t);
            jSONObject.put("userid", this.f11501z);
            jSONObject.put("extra", this.f11491A);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void q() {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdShow();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void s() {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.playCompletion();
        }
    }

    public String x() {
        a aVar = this.f11492B;
        return aVar != null ? aVar.B() : "";
    }

    public dj(Context context, String str, boolean z2, String str2) {
        super(context);
        this.f11495t = 3;
        this.f11496u = str;
        this.f11494a = z2;
        this.f11498w = str2;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() {
        this.f11182s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, this.f11498w);
            this.f11176m.createProdHandler(jSONObject2);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, this.f11498w);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f11496u);
            jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON");
            jSONObject.put("n", "1");
            jSONObject.put("at", "10");
            if (!TextUtils.isEmpty(this.f11180q)) {
                jSONObject.put("appid", this.f11180q);
            }
            Rect rectA = bb.a(this.f11172i);
            this.f11499x = rectA.width();
            this.f11500y = rectA.height();
            if (this.f11172i.getResources().getConfiguration().orientation == 2) {
                this.f11499x = rectA.height();
                this.f11500y = rectA.width();
            }
            jSONObject.put("w", "" + this.f11499x);
            jSONObject.put("h", "" + this.f11500y);
            jSONObject.put("opt", 1);
            if (IAdInterListener.AdProdType.PRODUCT_REWARDVIDEO.equals(this.f11498w)) {
                jSONObject.put("msa", 5293);
            }
            jSONObject = m.a(jSONObject, b(this.f11178o));
            b(jSONObject);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void g(String str) {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdSkip(Float.parseFloat(str));
        }
    }

    public String g() {
        a aVar = this.f11492B;
        if (aVar != null) {
            return aVar.A();
        }
        return "";
    }

    public Object k(String str) {
        if (this.f11492B == null) {
            return null;
        }
        if ("request_id".equals(str)) {
            return this.f11492B.Z();
        }
        return this.f11492B.a(str);
    }

    public void a(int i2) {
        this.f11495t = i2;
    }

    public void a(String str) {
        this.f11501z = str;
    }

    public void a(ScreenVideoAdListener screenVideoAdListener) {
        this.f11497v = screenVideoAdListener;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener == null) {
            this.f11177n = false;
        } else {
            this.f11177n = true;
            iAdInterListener.loadAd(j(), k());
        }
    }

    public void a(RewardVideoRewardInfo rewardVideoRewardInfo) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", "twoStageReward");
            jSONObject.put("msg", "setRewardInfo");
            jSONObject.put("info", rewardVideoRewardInfo.getTwoStageRewardInfo());
            a(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(IOAdEvent iOAdEvent) {
        List<a> listA;
        if (iOAdEvent != null && (listA = b.a(iOAdEvent.getMessage()).a()) != null && listA.size() > 0) {
            this.f11492B = listA.get(0);
        }
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdLoaded();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        super.a(str, i2, str2);
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdFailed(str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(int i2, String str, String str2) {
        super.a(i2, str, str2);
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdFailed(str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(boolean z2, Map<String, Object> map) {
        ScreenVideoAdListener screenVideoAdListener = this.f11497v;
        if (screenVideoAdListener == null || !(screenVideoAdListener instanceof RewardVideoAd.RewardVideoAdListener)) {
            return;
        }
        ((RewardVideoAd.RewardVideoAdListener) screenVideoAdListener).onRewardVerify(z2, map);
    }

    public void a(boolean z2, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        a aVar = this.f11492B;
        if (aVar != null) {
            a(aVar.M(), z2, linkedHashMap, biddingListener);
        } else {
            a(this.f11173j, z2, linkedHashMap, biddingListener);
        }
    }

    public void a(RequestParameters requestParameters) {
        this.f11493C = requestParameters;
        a(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(Map<String, String> map) {
        try {
            this.f11178o = m.a(map);
        } catch (Throwable unused) {
            this.f11178o = new HashMap<>();
        }
    }
}
