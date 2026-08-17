package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import com.baidu.mobads.sdk.api.SplashAdListener;
import com.baidu.mobads.sdk.api.SplashInteractionListener;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class dk extends bj {

    /* renamed from: J, reason: collision with root package name */
    private static int f11502J;

    /* renamed from: P, reason: collision with root package name */
    private static dk f11503P;

    /* renamed from: A, reason: collision with root package name */
    private int f11504A;

    /* renamed from: B, reason: collision with root package name */
    private int f11505B;

    /* renamed from: C, reason: collision with root package name */
    private int f11506C;

    /* renamed from: D, reason: collision with root package name */
    private int f11507D;

    /* renamed from: E, reason: collision with root package name */
    private boolean f11508E;

    /* renamed from: F, reason: collision with root package name */
    private boolean f11509F;

    /* renamed from: G, reason: collision with root package name */
    private boolean f11510G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f11511H;

    /* renamed from: I, reason: collision with root package name */
    private int f11512I;

    /* renamed from: K, reason: collision with root package name */
    private SplashAdListener f11513K;

    /* renamed from: L, reason: collision with root package name */
    private SplashAd.OnFinishListener f11514L;

    /* renamed from: M, reason: collision with root package name */
    private SplashAd.SplashFocusAdListener f11515M;

    /* renamed from: N, reason: collision with root package name */
    private SplashAd.SplashCardAdListener f11516N;

    /* renamed from: O, reason: collision with root package name */
    private RequestParameters f11517O;

    /* renamed from: Q, reason: collision with root package name */
    private a f11518Q;

    /* renamed from: R, reason: collision with root package name */
    private SplashAd.SplashAdDownloadDialogListener f11519R;

    /* renamed from: S, reason: collision with root package name */
    private HashMap<String, String> f11520S;

    /* renamed from: a, reason: collision with root package name */
    protected int f11521a;

    /* renamed from: t, reason: collision with root package name */
    protected int f11522t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f11523u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f11524v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f11525w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f11526x;

    /* renamed from: y, reason: collision with root package name */
    private RelativeLayout f11527y;

    /* renamed from: z, reason: collision with root package name */
    private String f11528z;

    public dk(Context context, String str, int i2, int i3, int i4, int i5, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(context);
        this.f11512I = 60;
        this.f11521a = 67;
        this.f11522t = -16777216;
        this.f11524v = false;
        this.f11525w = false;
        this.f11526x = false;
        this.f11528z = str;
        this.f11504A = i2;
        this.f11505B = i3;
        this.f11506C = i4;
        this.f11507D = i5;
        this.f11508E = z2;
        this.f11509F = z3;
        this.f11510G = z5;
        this.f11511H = z4;
    }

    private void b(Intent intent, SplashAd.OnFinishListener onFinishListener) {
        Context context = this.f11172i;
        if (context == null || intent == null) {
            return;
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        this.f11172i.startActivity(intent);
        if (onFinishListener != null) {
            onFinishListener.onFinishActivity();
            return;
        }
        Context context2 = this.f11172i;
        if (context2 instanceof Activity) {
            ((Activity) context2).finish();
        }
    }

    public static void e(int i2) {
        f11502J = i2;
    }

    private String k(String str) {
        if (this.f11517O == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Map<String, String> extras = this.f11517O.getExtras();
            if (extras != null) {
                return extras.get(str);
            }
            return null;
        } catch (Throwable th) {
            this.f11174k.d(bj.f11165b, th);
            return null;
        }
    }

    public void c(int i2) {
        this.f11522t = i2;
    }

    public void d(int i2) {
        this.f11512I = i2;
    }

    public boolean f() {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("event_type", "splash_focus_card_enable");
            a(jSONObject, map);
            Object obj = map.get("splash_focus_card_enable");
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (JSONException e2) {
            bv.a().c(e2);
            return false;
        } catch (Throwable th) {
            bv.a().c(th);
            return false;
        }
    }

    public a g() {
        return this.f11518Q;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void h(IOAdEvent iOAdEvent) {
        this.f11524v = true;
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdClick();
        }
        SplashAd.SplashFocusAdListener splashFocusAdListener = this.f11515M;
        if (splashFocusAdListener != null) {
            splashFocusAdListener.onAdClick();
        }
        SplashAd.SplashCardAdListener splashCardAdListener = this.f11516N;
        if (splashCardAdListener != null) {
            splashCardAdListener.onCardClick();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() throws JSONException {
        String str = "1";
        this.f11182s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_SPLASH);
            this.f11176m.createProdHandler(jSONObject2);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_SPLASH);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f11528z);
            jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,HTML,MSSP,VIDEO,RSPLASHHTML");
            jSONObject.put("n", "1");
            jSONObject.put("at", "26");
            jSONObject.put(IAdInterListener.AdReqParam.MIME_TYPE, "video/mp4,image/jpg,image/gif,image/png");
            jSONObject.put("w", "" + this.f11504A);
            jSONObject.put("h", "" + this.f11505B);
            jSONObject.put("msa", 399);
            if (!TextUtils.isEmpty(this.f11180q)) {
                jSONObject.put("appid", this.f11180q);
            }
            String strK = k(SplashAd.KEY_USE_ADAPTIVE_AD);
            if (!TextUtils.isEmpty(strK)) {
                if (!Boolean.parseBoolean(strK)) {
                    str = "0";
                }
                jSONObject.put("adtv", str);
            }
            jSONObject = m.a(jSONObject, b(this.f11520S));
            b(jSONObject);
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void q() {
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdPresent();
        }
        SplashAd.SplashFocusAdListener splashFocusAdListener = this.f11515M;
        if (splashFocusAdListener != null) {
            splashFocusAdListener.onAdIconShow();
        }
        SplashAd.SplashCardAdListener splashCardAdListener = this.f11516N;
        if (splashCardAdListener != null) {
            splashCardAdListener.onCardShow();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void t() {
        SplashAd.OnFinishListener onFinishListener = this.f11514L;
        if (onFinishListener != null) {
            onFinishListener.onFinishActivity();
            this.f11514L = null;
        } else {
            Context context = this.f11172i;
            if (context instanceof Activity) {
                ((Activity) context).finish();
            }
        }
        this.f11172i = null;
        this.f11527y = null;
        super.t();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void u() {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.f11519R;
        if (splashAdDownloadDialogListener == null || splashAdDownloadDialogListener == null) {
            return;
        }
        this.f11519R.onADPrivacyLpClose();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void v() {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.f11519R;
        if (splashAdDownloadDialogListener == null || splashAdDownloadDialogListener == null) {
            return;
        }
        this.f11519R.onADFunctionLpClose();
    }

    public void a(RelativeLayout relativeLayout) {
        this.f11527y = relativeLayout;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void c() {
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdCacheFailed();
        }
        super.c();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void d() {
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onLpClosed();
        }
        SplashAd.SplashFocusAdListener splashFocusAdListener = this.f11515M;
        if (splashFocusAdListener != null) {
            splashFocusAdListener.onLpClosed();
        }
        super.d();
    }

    public void e() {
        IAdInterListener iAdInterListener;
        if (this.f11523u || (iAdInterListener = this.f11176m) == null) {
            return;
        }
        iAdInterListener.setAdContainer(this.f11527y);
        this.f11176m.showAd();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void g(IOAdEvent iOAdEvent) {
        if (this.f11525w) {
            return;
        }
        this.f11525w = true;
        Map<String, Object> data = iOAdEvent.getData();
        if (this.f11515M != null && data != null && data.containsKey("splash_close_reason")) {
            this.f11515M.onAdClose();
            return;
        }
        SplashAd.SplashCardAdListener splashCardAdListener = this.f11516N;
        if (splashCardAdListener != null) {
            splashCardAdListener.onCardClose();
            return;
        }
        super.g(iOAdEvent);
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener == null || !(splashAdListener instanceof SplashInteractionListener)) {
            return;
        }
        ((SplashInteractionListener) splashAdListener).onAdDismissed();
    }

    public void a(int i2) {
        this.f11521a = i2;
    }

    public void a(SplashAdListener splashAdListener) {
        this.f11513K = splashAdListener;
    }

    public void a(SplashAd.SplashFocusAdListener splashFocusAdListener) {
        this.f11515M = splashFocusAdListener;
        this.f11525w = false;
    }

    public void c(Map<String, String> map) {
        try {
            this.f11520S = m.a(map);
        } catch (Throwable unused) {
            this.f11520S = new HashMap<>();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(IOAdEvent iOAdEvent) {
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener == null || !(splashAdListener instanceof SplashInteractionListener)) {
            return;
        }
        ((SplashInteractionListener) splashAdListener).onAdExposed();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timeout", this.f11507D);
            jSONObject.put("splashTipStyle", this.f11506C);
            jSONObject.put("bitmapDisplayMode", f11502J);
            jSONObject.put("countDownNew", "true");
            jSONObject.put("Display_Down_Info", "" + this.f11508E);
            jSONObject.put("popDialogIfDl", "" + this.f11509F);
            jSONObject.put("limitRegionClick", "" + this.f11510G);
            jSONObject.put("displayClickButton", "" + this.f11511H);
            jSONObject.put("needCache", true);
            jSONObject.put("onlyLoadAd", this.f11523u);
            jSONObject.put("cacheVideoOnlyWifi", true);
            jSONObject.put("shakeLogoSize", this.f11512I);
            jSONObject.put("twistLogoHeightDp", this.f11521a);
            jSONObject.put("twistBgColor", this.f11522t);
            RequestParameters requestParameters = this.f11517O;
            if (requestParameters != null) {
                a(requestParameters.getExtras());
            }
            return m.a(jSONObject, b(this.f11178o));
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public void a(SplashAd.SplashCardAdListener splashCardAdListener) {
        this.f11516N = splashCardAdListener;
        this.f11525w = false;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void e(String str) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.f11519R;
        if (splashAdDownloadDialogListener == null || splashAdDownloadDialogListener == null) {
            return;
        }
        this.f11519R.onADPrivacyLpShow();
    }

    public boolean b(Activity activity) {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            this.f11176m.removeAllListeners();
            this.f11176m.addEventListener(z.f11723M, this.f11175l);
            this.f11176m.addEventListener(z.f11718H, this.f11175l);
            this.f11176m.addEventListener(z.f11733W, this.f11175l);
            this.f11513K = null;
            jSONObject.putOpt("event_type", "splash_focus_card");
            map.put("splash_focus_activity", activity);
            a(jSONObject, map);
            Object obj = map.get("splash_focus_card_show");
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (JSONException e2) {
            bv.a().c(e2);
            return false;
        } catch (Throwable th) {
            bv.a().c(th);
            return false;
        }
    }

    public void a(RequestParameters requestParameters) {
        this.f11517O = requestParameters;
        c(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void f(String str) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.f11519R;
        if (splashAdDownloadDialogListener == null || splashAdDownloadDialogListener == null) {
            return;
        }
        this.f11519R.onADFunctionLpShow();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener == null) {
            this.f11177n = false;
            return;
        }
        this.f11177n = true;
        if (!this.f11523u) {
            iAdInterListener.setAdContainer(this.f11527y);
        }
        this.f11176m.loadAd(j(), k());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void g(String str) {
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener == null || !(splashAdListener instanceof SplashInteractionListener)) {
            return;
        }
        ((SplashInteractionListener) splashAdListener).onAdSkip();
    }

    public void a(@NonNull Intent intent, @Nullable SplashAd.OnFinishListener onFinishListener) {
        try {
            if (!this.f11524v && intent != null && this.f11176m != null && !this.f11526x && (this.f11172i instanceof Activity)) {
                this.f11514L = onFinishListener;
                JSONObject jSONObject = new JSONObject();
                HashMap map = new HashMap();
                try {
                    jSONObject.putOpt("event_type", "splash_focus_start_activity");
                    map.put("splash_focus_user_intent", intent);
                } catch (JSONException e2) {
                    bv.a().a(e2);
                }
                this.f11176m.removeAllListeners();
                this.f11176m.addEventListener(z.f11736Z, this.f11175l);
                this.f11176m.addEventListener(z.f11723M, this.f11175l);
                this.f11176m.addEventListener(z.f11718H, this.f11175l);
                this.f11176m.addEventListener(z.f11733W, this.f11175l);
                this.f11176m.addEventListener(z.f11734X, this.f11175l);
                a(jSONObject, map);
                this.f11513K = null;
                f11503P = this;
                be.a().a(new dl(this), 3L, TimeUnit.SECONDS);
                return;
            }
            b(intent, onFinishListener);
        } catch (Throwable th) {
            th.printStackTrace();
            b(intent, onFinishListener);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b() {
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdCacheSuccess();
        }
        super.b();
    }

    public Object j(String str) {
        if (this.f11518Q == null) {
            return null;
        }
        if ("request_id".equals(str)) {
            return this.f11518Q.Z();
        }
        return this.f11518Q.a(str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void b(String str, boolean z2) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.f11519R;
        if (splashAdDownloadDialogListener == null || splashAdDownloadDialogListener == null) {
            return;
        }
        if (z2) {
            this.f11519R.adDownloadWindowShow();
        } else {
            this.f11519R.adDownloadWindowClose();
        }
    }

    public static void a(Activity activity, JSONObject jSONObject, SplashAd.SplashFocusAdListener splashFocusAdListener) {
        dk dkVar = f11503P;
        if (dkVar != null) {
            dkVar.a(splashFocusAdListener);
            HashMap map = new HashMap();
            JSONObject jSONObject2 = new JSONObject();
            try {
                try {
                    try {
                        jSONObject2.putOpt("event_type", "splash_focus_register_transition");
                        jSONObject2.putOpt("splash_focus_params", jSONObject);
                        map.put("splash_focus_activity", activity);
                        f11503P.a(jSONObject2, map);
                        f11503P = null;
                    } catch (Throwable th) {
                        bv.a().c(th);
                        f11503P = null;
                    }
                } catch (JSONException e2) {
                    bv.a().c(e2);
                    f11503P = null;
                }
            } catch (Throwable th2) {
                f11503P = null;
                throw th2;
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(IOAdEvent iOAdEvent) {
        List<a> listA;
        if (iOAdEvent != null && (listA = b.a(iOAdEvent.getMessage()).a()) != null && listA.size() > 0) {
            this.f11518Q = listA.get(0);
        }
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null) {
            splashAdListener.onADLoaded();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(int i2, String str, String str2) {
        this.f11526x = true;
        SplashAdListener splashAdListener = this.f11513K;
        if (splashAdListener != null) {
            splashAdListener.onAdFailed("广告无填充");
        }
        super.a(i2, str, str2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, int i2, String str2) {
        this.f11526x = true;
        if (this.f11513K != null) {
            a(i2 + "==" + str);
            this.f11513K.onAdFailed(str);
        }
        super.a(str, i2, str2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(String str, boolean z2) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.f11519R;
        if (splashAdDownloadDialogListener == null || splashAdDownloadDialogListener == null) {
            return;
        }
        if (z2) {
            this.f11519R.onADPermissionShow();
        } else {
            this.f11519R.onADPermissionClose();
        }
    }

    public void a(SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener) {
        this.f11519R = splashAdDownloadDialogListener;
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
        a aVar = this.f11518Q;
        if (aVar != null) {
            a(aVar.M(), z2, linkedHashMap, biddingListener);
        } else {
            a(this.f11173j, z2, linkedHashMap, biddingListener);
        }
    }

    public void a(String str) {
        try {
            HashMap map = new HashMap();
            map.put("msg", str);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("msg", "sendSplashFailedLog");
            } catch (JSONException e2) {
                bv.a().a(e2);
            }
            a(jSONObject, map);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
