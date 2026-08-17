package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.CPUWebAdRequestParam;
import com.baidu.mobads.sdk.api.CpuAdView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class cu extends bj {

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, Object> f11411a;

    /* renamed from: t, reason: collision with root package name */
    private int f11412t;

    /* renamed from: u, reason: collision with root package name */
    private RelativeLayout f11413u;

    /* renamed from: v, reason: collision with root package name */
    private CpuAdView.CpuAdViewInternalStatusListener f11414v;

    public cu(Context context, RelativeLayout relativeLayout, String str, int i2, CPUWebAdRequestParam cPUWebAdRequestParam) {
        super(context);
        this.f11180q = str;
        this.f11413u = relativeLayout;
        this.f11412t = i2;
        if (cPUWebAdRequestParam == null) {
            az.c().e("内容联盟模板需要传入 CPUWebAdRequestParam配置信息");
        } else {
            this.f11411a = (HashMap) cPUWebAdRequestParam.getParameters();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Map<String, Object> map) {
        if (map != null) {
            Object obj = map.get("adInnerPageInterval");
            Object obj2 = map.get("adBottomRefreshInterval");
            Object obj3 = map.get("adFrontChapterInterval");
            Object obj4 = map.get("isShowFeeds");
            Object obj5 = map.get("isAdSwitch");
            Object obj6 = map.get("showCount");
            Object obj7 = map.get("clickCount");
            if (obj != null && obj2 != null) {
                ao.a(((Integer) obj).intValue());
                ao.b(((Integer) obj2).intValue());
            }
            if ((obj3 instanceof Integer) && (obj4 instanceof Boolean)) {
                ao.a(((Integer) obj3).intValue(), ((Boolean) obj4).booleanValue());
            }
            if (obj5 instanceof Integer) {
                ao.a(((Integer) obj5).intValue() != 0);
            }
            if ((obj6 instanceof Integer) && (obj7 instanceof Integer)) {
                ao.a(((Integer) obj6).intValue(), ((Integer) obj7).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ao.b();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d() {
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f11414v;
        if (cpuAdViewInternalStatusListener != null) {
            cpuAdViewInternalStatusListener.onExitLp();
        }
    }

    public Activity e() {
        return ao.c();
    }

    public boolean f() {
        return ao.d();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        Boolean bool = (Boolean) iOAdEvent.getData().get("isClickFeAd");
        if (this.f11414v != null && bool != null && bool.booleanValue()) {
            this.f11414v.onAdClick();
            return;
        }
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f11414v;
        if (cpuAdViewInternalStatusListener == null || bool == null) {
            return;
        }
        cpuAdViewInternalStatusListener.onContentClick();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(IOAdEvent iOAdEvent) {
        Map<String, Object> data = iOAdEvent.getData();
        Boolean bool = (Boolean) data.get("isImpressionFeAd");
        String str = (String) data.get("nums");
        if (this.f11414v != null && bool != null && bool.booleanValue()) {
            this.f11414v.onAdImpression(str);
            return;
        }
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f11414v;
        if (cpuAdViewInternalStatusListener == null || bool == null) {
            return;
        }
        cpuAdViewInternalStatusListener.onContentImpression(str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d(IOAdEvent iOAdEvent) {
        if (this.f11414v == null || iOAdEvent == null) {
            return;
        }
        this.f11414v.onLpContentStatus(iOAdEvent.getData());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f11176m == null) {
            this.f11177n = false;
            return;
        }
        this.f11177n = true;
        JSONObject jSONObject = new JSONObject();
        if (this.f11176m != null) {
            try {
                jSONObject.put("channel", this.f11412t);
                jSONObject.put(IAdInterListener.AdReqParam.PROD, "cpu_h5");
                jSONObject.put("timeout", 10000);
                if (!TextUtils.isEmpty(this.f11180q)) {
                    jSONObject.put("appid", this.f11180q);
                }
                if (this.f11413u != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(IAdInterListener.AdReqParam.PROD, "cpu_h5");
                    this.f11176m.createProdHandler(jSONObject2);
                    this.f11176m.setAdContainer(this.f11413u);
                    m();
                    this.f11176m.addEventListener("Update_fbReader_Setting", new cv(this));
                    this.f11176m.addEventListener("closeInterstitialAd", new cw(this));
                    this.f11176m.addEventListener("feOpenFbReader", new cx(this));
                    JSONObject jSONObjectA = m.a(this.f11411a);
                    jSONObjectA.put("isInitNovelSDK", ao.f());
                    this.f11176m.loadAd(jSONObject, jSONObjectA);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, String str, int i4, int i5, String str2) {
        ao.a(i2);
        ao.b(i3);
        ao.a(new cy(this, i4, i5, str2));
        ao.a(this.f11172i, str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f11414v;
        if (cpuAdViewInternalStatusListener != null) {
            cpuAdViewInternalStatusListener.loadDataError(str);
        }
    }

    public void a(CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener) {
        this.f11414v = cpuAdViewInternalStatusListener;
    }
}
