package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.CPUNovelAd;
import com.baidu.mobads.sdk.api.CPUWebAdRequestParam;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class cz extends bj {

    /* renamed from: A, reason: collision with root package name */
    public static final String f11422A = "pre_chapter_adstart_countdown";

    /* renamed from: B, reason: collision with root package name */
    public static final String f11423B = "try_get_cuid";

    /* renamed from: J, reason: collision with root package name */
    private static final String f11424J = "cz";

    /* renamed from: a, reason: collision with root package name */
    public static final String f11425a = "enter_refresh_bookstore";

    /* renamed from: t, reason: collision with root package name */
    public static final String f11426t = "enter_reader";

    /* renamed from: u, reason: collision with root package name */
    public static final String f11427u = "notify_impression";

    /* renamed from: v, reason: collision with root package name */
    public static final String f11428v = "request_int_ad_view";

    /* renamed from: w, reason: collision with root package name */
    public static final String f11429w = "request_banner_ad_view";

    /* renamed from: x, reason: collision with root package name */
    public static final String f11430x = "request_bookstore_bottom_view";

    /* renamed from: y, reason: collision with root package name */
    public static final String f11431y = "request_shelf_ad_view";

    /* renamed from: z, reason: collision with root package name */
    public static final String f11432z = "reader_background_status_change";

    /* renamed from: C, reason: collision with root package name */
    public HashMap<String, Object> f11433C;

    /* renamed from: D, reason: collision with root package name */
    public String f11434D;

    /* renamed from: E, reason: collision with root package name */
    public int f11435E;

    /* renamed from: F, reason: collision with root package name */
    public int f11436F;

    /* renamed from: G, reason: collision with root package name */
    public int f11437G;

    /* renamed from: H, reason: collision with root package name */
    public int f11438H;

    /* renamed from: I, reason: collision with root package name */
    public String f11439I;

    /* renamed from: K, reason: collision with root package name */
    private CPUNovelAd.CpuNovelListener f11440K;

    /* renamed from: L, reason: collision with root package name */
    private SoftReference<RelativeLayout> f11441L;

    public cz(Context context, String str, CPUWebAdRequestParam cPUWebAdRequestParam) {
        super(context);
        this.f11435E = 5;
        this.f11436F = 60;
        this.f11437G = 0;
        this.f11438H = AVMDLDataLoader.KeyIsStoMaxIdleTimeSec;
        this.f11439I = "";
        this.f11434D = str;
        this.f11433C = (HashMap) cPUWebAdRequestParam.getParameters();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        ao.b();
    }

    public void e() {
        ao.a(this.f11435E);
        ao.b(this.f11436F);
        ao.a(new dc(this));
    }

    public Activity f() {
        return ao.c();
    }

    public boolean g() {
        return ao.d();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        CPUNovelAd.CpuNovelListener cpuNovelListener = this.f11440K;
        if (cpuNovelListener != null) {
            cpuNovelListener.onAdClick();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public View w() {
        View viewA = ao.a(this.f11172i);
        if (viewA instanceof FrameLayout) {
            RelativeLayout relativeLayout = new RelativeLayout(this.f11172i);
            this.f11441L = new SoftReference<>(relativeLayout);
            relativeLayout.setId(33);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, bb.a(this.f11172i, 53.0f));
            layoutParams.gravity = 80;
            ((FrameLayout) viewA).addView(relativeLayout, layoutParams);
            if (bn.a((Context) null).a() >= 18) {
                relativeLayout.getViewTreeObserver().addOnWindowFocusChangeListener(new dd(this, relativeLayout));
            }
        }
        return viewA;
    }

    public boolean x() {
        return ao.e();
    }

    public void y() {
        ao.g();
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
            Object obj8 = map.get("motivateDeeplinkAdSwitch");
            Object obj9 = map.get("motivateDeeplinkAdFrequency");
            Object obj10 = map.get("motivateDeeplinkAdExpTime");
            Object obj11 = map.get("motivateDeeplinkNoAdTime");
            Object obj12 = map.get("isStartRewardAdTimer");
            Object obj13 = map.get("temporaryAdDensitySwitch");
            Object obj14 = map.get("temporaryAdDensityTimes");
            Object obj15 = map.get("temporaryAdDensityScreen");
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
            if ((obj8 instanceof Boolean) && (obj9 instanceof Integer) && (obj10 instanceof Integer) && (obj11 instanceof Integer)) {
                ao.a(((Boolean) obj8).booleanValue(), ((Integer) obj9).intValue(), ((Integer) obj10).intValue(), ((Integer) obj11).intValue());
            }
            if ((obj12 instanceof Boolean) && ((Boolean) obj12).booleanValue()) {
                ao.h();
            }
            if ((obj13 instanceof Boolean) && ((Boolean) obj13).booleanValue() && (obj14 instanceof Integer) && (obj15 instanceof Integer)) {
                ao.b(((Integer) obj14).intValue(), ((Integer) obj15).intValue());
            } else {
                ao.b(0, 0);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        e();
        if (this.f11176m == null) {
            this.f11177n = false;
            return;
        }
        this.f11177n = true;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, "novel");
            this.f11176m.createProdHandler(jSONObject);
            m();
            this.f11176m.addEventListener("Update_fbReader_Setting", new da(this));
            this.f11176m.addEventListener("closeInterstitialAd", new db(this));
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(this.f11434D)) {
                jSONObject2.put("appid", this.f11434D);
            }
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, "novel");
            this.f11176m.loadAd(jSONObject2, m.a(this.f11433C));
        } catch (Throwable th) {
            this.f11174k.c(f11424J, th);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(IOAdEvent iOAdEvent) {
        CPUNovelAd.CpuNovelListener cpuNovelListener = this.f11440K;
        if (cpuNovelListener != null) {
            cpuNovelListener.onAdImpression();
        }
    }

    public void a(CPUNovelAd.CpuNovelListener cpuNovelListener) {
        this.f11440K = cpuNovelListener;
    }
}
