package com.sigmob.sdk.mraid2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.InterfaceC1264k;
import com.sigmob.sdk.base.common.MiMarketManager;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.an;
import com.sigmob.sdk.base.common.ap;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.views.ar;
import com.sigmob.sdk.mraid2.C1340s;
import com.sigmob.sdk.nativead.DialogC1346b;
import com.sigmob.sdk.videoAd.AbstractC1375b;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.natives.WindNativeAdData;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid2.s, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1340s extends AbstractC1375b {

    /* renamed from: f, reason: collision with root package name */
    public static final String f38224f = "s";

    /* renamed from: g, reason: collision with root package name */
    List<BaseAdUnit> f38225g;

    /* renamed from: h, reason: collision with root package name */
    private final Bundle f38226h;

    /* renamed from: i, reason: collision with root package name */
    private int f38227i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f38228j;

    /* renamed from: k, reason: collision with root package name */
    private C1327e f38229k;

    /* renamed from: l, reason: collision with root package name */
    private ar f38230l;

    /* renamed from: m, reason: collision with root package name */
    private DialogC1346b f38231m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f38232n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f38233o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f38234p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f38235q;

    /* renamed from: r, reason: collision with root package name */
    private com.sigmob.sdk.base.views.w f38236r;

    /* renamed from: s, reason: collision with root package name */
    private final Handler f38237s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f38238t;

    /* renamed from: u, reason: collision with root package name */
    private final View.OnClickListener f38239u;

    /* renamed from: com.sigmob.sdk.mraid2.s$2, reason: invalid class name */
    public class AnonymousClass2 implements InterfaceC1335m {
        public AnonymousClass2() {
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void a() {
            SigmobLog.d("MraidActivity failed to load. Finishing the activity");
            if (((AbstractC1262j) C1340s.this).f35957b != null) {
                C1340s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((AbstractC1262j) C1340s.this).f35959d.a();
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void c() {
            if (C1340s.this.f38228j) {
                return;
            }
            C1340s.this.f38228j = true;
            C1340s.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void d() {
            C1340s.this.f38234p = true;
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void a(View view) {
            SigmobLog.d("onLoaded() called");
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void b() {
            C1340s.this.a(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
            C1340s.this.f38233o = true;
            ((AbstractC1262j) C1340s.this).f35959d.a();
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void a(final C1325c c1325c, final BaseAdUnit baseAdUnit, JSONObject jSONObject) {
            String str;
            int interactionType = baseAdUnit == null ? -1 : baseAdUnit.getInteractionType();
            String deeplinkUrl = baseAdUnit == null ? null : baseAdUnit.getDeeplinkUrl();
            int i2 = 0;
            SigmobLogger.d(C1340s.f38224f, "open: deeplinkUrl = " + deeplinkUrl + ", interactionType = " + interactionType, new Object[0]);
            final String strOptString = jSONObject.optString("url");
            final String strOptString2 = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                return;
            }
            final JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("log_data");
            final String strOptString3 = jSONObjectOptJSONObject.optString("default_url");
            final boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("in_app");
            boolean zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("parse_302");
            int iOptInt = jSONObjectOptJSONObject.optInt("interaction_type");
            if (iOptInt == 1) {
                if (zOptBoolean2) {
                    ap.a(strOptString, new ap.a() { // from class: com.sigmob.sdk.mraid2.s.2.1
                        @Override // com.sigmob.sdk.base.common.ap.a
                        public void a(String str2) {
                            C1340s.this.a(c1325c, baseAdUnit, strOptString2, str2, jSONObjectOptJSONObject2, strOptString3, zOptBoolean);
                        }

                        @Override // com.sigmob.sdk.base.common.ap.a
                        public void a(String str2, Throwable th) {
                            C1340s.this.a(c1325c, baseAdUnit, strOptString2, strOptString, jSONObjectOptJSONObject2, strOptString3, zOptBoolean);
                        }
                    });
                    return;
                } else {
                    C1340s.this.a(c1325c, baseAdUnit, strOptString2, strOptString, jSONObjectOptJSONObject2, strOptString3, zOptBoolean);
                    return;
                }
            }
            String message = "";
            if (iOptInt == 2) {
                if (baseAdUnit != null) {
                    baseAdUnit.setRecord(true);
                    C1260i.a(baseAdUnit, strOptString, zOptBoolean2);
                    C1340s.this.a(c1325c, baseAdUnit, strOptString2, jSONObjectOptJSONObject2, "");
                    return;
                }
                List<BaseAdUnit> adUnitList = c1325c.getAdUnitList();
                if (adUnitList == null || adUnitList.isEmpty()) {
                    SigmobLog.d("adUnits is null or empty.");
                    return;
                }
                BaseAdUnit baseAdUnit2 = c1325c.getAdUnitList().get(0);
                baseAdUnit2.setRecord(false);
                C1260i.a(baseAdUnit2, strOptString, zOptBoolean2);
                C1340s.this.a(c1325c, baseAdUnit2, strOptString2, jSONObjectOptJSONObject2, "");
                return;
            }
            String str2 = "market_url is null";
            if (iOptInt != 3) {
                String str3 = C1244a.f35656H;
                if (iOptInt == 7) {
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("program");
                    if (jSONObjectOptJSONObject3 == null) {
                        return;
                    }
                    try {
                        com.sigmob.sdk.base.utils.h.a(com.sigmob.sdk.b.e(), jSONObjectOptJSONObject3.optString("wx_app_id"), jSONObjectOptJSONObject3.optString("wx_app_username"), jSONObjectOptJSONObject3.optString("wx_app_path"), jSONObjectOptJSONObject3.optInt("wx_business_type"), jSONObjectOptJSONObject3.optString("wx_ext_msg"));
                    } catch (Throwable th) {
                        message = th.getMessage();
                    }
                    str2 = message;
                    if (baseAdUnit != null) {
                        try {
                            boolean zA = com.sigmob.sdk.base.utils.s.a((CharSequence) str2);
                            if (zA) {
                                str3 = C1244a.f35655G;
                            }
                            baseAdUnit.getClickCommon().isDeeplink = zA ? "1" : "0";
                            com.sigmob.sdk.manager.b.b(baseAdUnit, str3, strOptString);
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            C1340s.this.a(c1325c, baseAdUnit, strOptString2, jSONObjectOptJSONObject2, str2);
                        }
                    }
                } else {
                    if (iOptInt != 8) {
                        return;
                    }
                    if (com.sigmob.sdk.base.utils.s.b(strOptString)) {
                        try {
                            com.sigmob.sdk.base.utils.h.b(C1340s.this.l(), new Intent("android.intent.action.VIEW", Uri.parse(strOptString)));
                        } catch (Throwable th2) {
                            message = th2.getMessage();
                        }
                        str2 = message;
                    }
                    if (baseAdUnit != null) {
                        try {
                            boolean zA2 = com.sigmob.sdk.base.utils.s.a((CharSequence) str2);
                            if (zA2) {
                                str3 = C1244a.f35655G;
                            }
                            baseAdUnit.getClickCommon().isDeeplink = zA2 ? "1" : "0";
                            com.sigmob.sdk.manager.b.b(baseAdUnit, str3, strOptString);
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            C1340s.this.a(c1325c, baseAdUnit, strOptString2, jSONObjectOptJSONObject2, str2);
                        }
                    }
                }
            } else {
                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("market");
                if (jSONObjectOptJSONObject4 == null) {
                    return;
                }
                final String strOptString4 = jSONObjectOptJSONObject4.optString("market_url");
                final String strOptString5 = jSONObjectOptJSONObject4.optString("app_package_name");
                final String strOptString6 = jSONObjectOptJSONObject4.optString("appstore_package_name");
                String strOptString7 = jSONObjectOptJSONObject4.optString("type");
                if (com.sigmob.sdk.base.utils.s.b(strOptString4)) {
                    if (com.sigmob.sdk.base.utils.s.b(strOptString7)) {
                        try {
                            i2 = Integer.parseInt(strOptString7);
                        } catch (Throwable unused) {
                        }
                    }
                    String strA = (!com.sigmob.sdk.base.utils.s.b(strOptString6) || AppPackageUtil.getPackageVersionCode(((AbstractC1262j) C1340s.this).f35956a, strOptString6) == -1) ? null : strOptString6;
                    Uri uri = Uri.parse(strOptString4);
                    if (com.sigmob.sdk.base.utils.s.a((CharSequence) strA) && baseAdUnit != null) {
                        strA = com.sigmob.sdk.base.utils.h.a(((AbstractC1262j) C1340s.this).f35956a, uri, baseAdUnit.getMarketPackageNameList());
                    }
                    if (i2 == 1) {
                        new MiMarketManager.DirectMailStatusReceiver().a(com.sigmob.sdk.b.e(), baseAdUnit);
                    }
                    try {
                        com.sigmob.sdk.base.utils.h.a(C1340s.this.l(), uri, strA);
                    } catch (Throwable th3) {
                        message = th3.getMessage();
                    }
                    str2 = message;
                }
                if (baseAdUnit != null) {
                    try {
                        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str2)) {
                            str = PointCategory.OPEN_MARKET;
                            if (com.sigmob.sdk.base.utils.s.b(strOptString5)) {
                                FileUtil.writeToCache(baseAdUnit, com.sigmob.sdk.base.utils.n.a((Object) strOptString5).getAbsolutePath());
                            }
                            ad.a(PointCategory.APK_CLICK, i2 == 1 ? "mimarket" : "market", baseAdUnit, (ad.a) null);
                        } else {
                            str = PointCategory.OPEN_MARKET_FAILED;
                        }
                        ad.a(str, (String) null, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.mraid2.V
                            @Override // com.sigmob.sdk.base.common.ad.a
                            public final void onAddExtra(Object obj) {
                                C1340s.AnonymousClass2.a(strOptString4, baseAdUnit, strOptString5, strOptString6, obj);
                            }
                        });
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        C1340s.this.a(c1325c, baseAdUnit, strOptString2, jSONObjectOptJSONObject2, str2);
                    }
                }
            }
            C1340s.this.a(c1325c, baseAdUnit, strOptString2, jSONObjectOptJSONObject2, str2);
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void a(WindAdError windAdError) {
            SigmobLog.d("Finishing the activity due to a problem: " + windAdError);
            if (((AbstractC1262j) C1340s.this).f35957b != null) {
                C1340s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((AbstractC1262j) C1340s.this).f35959d.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, BaseAdUnit baseAdUnit, String str2, String str3, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                if (baseAdUnit.getAndroidMarket() == null) {
                    return;
                }
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", str2);
                options.put("store_package_name", str3);
            }
        }

        @Override // com.sigmob.sdk.mraid2.InterfaceC1335m
        public void a(boolean z2) {
            if (z2) {
                C1340s.this.r();
            } else {
                C1340s.this.s();
            }
        }
    }

    /* renamed from: com.sigmob.sdk.mraid2.s$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38253a;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            f38253a = iArr;
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public C1340s(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) {
        super(activity, str, interfaceC1264k);
        this.f38233o = false;
        this.f38234p = false;
        this.f38235q = true;
        this.f38237s = new Handler();
        this.f38239u = new View.OnClickListener() { // from class: com.sigmob.sdk.mraid2.s.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseAdUnit baseAdUnit2;
                Activity activityN = C1340s.this.n();
                if (activityN == null || com.sigmob.sdk.base.utils.f.a(C1340s.this.f38225g) || (baseAdUnit2 = C1340s.this.f38225g.get(0)) == null) {
                    return;
                }
                C1340s c1340s = C1340s.this;
                if (c1340s.a(c1340s.f38231m)) {
                    return;
                }
                C1340s.this.f38231m = new DialogC1346b(activityN, baseAdUnit2);
                C1340s.this.f38231m.a();
                C1340s.this.f38231m.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid2.s.3.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        C1340s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int i2, String str2, boolean z2) {
                        C1340s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                    }
                });
            }
        };
        this.f38225g = C1258h.e(baseAdUnit.getUuid());
        this.f38226h = bundle;
        C1327e c1327eA = C1324b.a().a(baseAdUnit.getUuid());
        this.f38229k = c1327eA;
        if (c1327eA == null) {
            this.f38229k = new C1327e(com.sigmob.sdk.b.e(), this.f38225g);
        }
        a(new View.OnApplyWindowInsetsListener() { // from class: com.sigmob.sdk.mraid2.T
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.f38116a.a(view, windowInsets);
            }
        });
    }

    public View a() {
        if (this.f38229k == null) {
            this.f38229k = new C1327e(this.f35956a, this.f38225g);
        }
        this.f38229k.a(this.f35960e);
        this.f38229k.a(new InterfaceC1328f() { // from class: com.sigmob.sdk.mraid2.s.1
            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public void a() {
                C1340s.this.c();
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public void b() {
                C1340s.this.d();
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public void c() {
                C1340s.this.f38238t = true;
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public void d() {
                C1340s.this.a(IntentActions.ACTION_INTERSTITIAL_SHOW);
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public void a(int i2, int i3, int i4, int i5) {
                try {
                    ViewGroup viewGroupM = C1340s.this.m();
                    if (i5 == 0) {
                        viewGroupM.setBackgroundColor(0);
                    } else {
                        viewGroupM.setBackgroundColor(Color.argb((int) ((i5 / 100.0f) * 255.0f), i2, i3, i4));
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public void a(BaseAdUnit baseAdUnit) {
                if (baseAdUnit == null && com.sigmob.sdk.base.utils.f.b(C1340s.this.f38225g)) {
                    baseAdUnit = C1340s.this.f38225g.get(0);
                }
                Activity activityN = C1340s.this.n();
                if (activityN == null || baseAdUnit == null) {
                    return;
                }
                C1340s c1340s = C1340s.this;
                if (c1340s.a(c1340s.f38231m)) {
                    return;
                }
                C1340s.this.f38231m = new DialogC1346b(activityN, baseAdUnit);
                C1340s.this.f38231m.a();
                C1340s.this.f38231m.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid2.s.1.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() throws JSONException {
                        C1340s.this.a("feedbackDidDisappear", true);
                        C1340s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int i2, String str, boolean z2) throws JSONException {
                        C1340s.this.a("feedbackDidDisappear", true);
                        C1340s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() throws JSONException {
                        C1340s.this.a("feedbackDidAppear", false);
                    }
                });
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public boolean a(ConsoleMessage consoleMessage) {
                if (AnonymousClass4.f38253a[consoleMessage.messageLevel().ordinal()] == 1) {
                    SigmobLog.e("onConsoleMessage " + consoleMessage.message());
                    ad.a("h5_error", "mraid2", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, C1340s.this.f38225g.get(0), (ad.a) null);
                }
                return false;
            }

            @Override // com.sigmob.sdk.mraid2.InterfaceC1328f
            public boolean a(String str, JsResult jsResult) {
                return false;
            }
        });
        this.f38229k.a(new AnonymousClass2());
        return this.f38229k.e();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public boolean j() {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
        C1327e c1327e = this.f38229k;
        if (c1327e != null) {
            c1327e.a(this.f38225g.get(0));
        }
        this.f38237s.postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid2.Q
            @Override // java.lang.Runnable
            public final void run() {
                this.f38114b.p();
            }
        }, 5000L);
        a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void b(Context context, int i2) {
        if (this.f38230l != null) {
            return;
        }
        ar arVar = new ar(context);
        this.f38230l = arVar;
        arVar.setVisibility(i2);
        this.f38230l.setId(ClientMetadata.generateViewId());
        int iDipsToIntPixels = Dips.dipsToIntPixels(22.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        a(3, layoutParams);
        m().addView(this.f38230l, layoutParams);
        this.f38230l.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.mraid2.S
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f38115b.a(view, motionEvent);
            }
        });
        this.f38230l.a(this.f38225g.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f38234p) {
            return;
        }
        ad.a("h5_state", "0", com.sigmob.sdk.base.utils.f.a(this.f38225g) ? null : this.f38225g.get(0), (ad.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        ar arVar = this.f38230l;
        if (arVar != null) {
            arVar.setVisibility(4);
        }
        com.sigmob.sdk.base.views.w wVar = this.f38236r;
        if (wVar != null) {
            wVar.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.f38230l == null) {
            b(this.f35956a, 0);
        }
        this.f38230l.setVisibility(0);
        a(l(), 0);
    }

    @Override // com.sigmob.sdk.videoAd.AbstractC1375b, com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        super.e();
        n().getWindow().addFlags(16778240);
        b(n(), this.f38227i, this.f38226h);
        BaseAdUnit baseAdUnit = this.f38225g.get(0);
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit) && (baseAdUnit.getMaterial().theme_data.intValue() == 1 || baseAdUnit.getTemplateType() == 1)) {
            b();
            m().setBackgroundColor(Color.argb(127, 0, 0, 0));
        }
        m().addView(a(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
        if (!this.f38233o) {
            this.f38229k.a();
        } else {
            this.f38235q = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
        this.f38229k.b();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        C1327e c1327e = this.f38229k;
        if (c1327e != null) {
            c1327e.d();
        }
        q();
        if (com.sigmob.sdk.base.utils.f.b(this.f38225g)) {
            if (this.f38232n) {
                BaseAdUnit baseAdUnit = this.f38225g.get(0);
                if (com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
                    com.sigmob.sdk.base.network.h.a(baseAdUnit, C1244a.f35693u);
                    ad.a(C1244a.f35693u, (String) null, baseAdUnit, (ad.a) null);
                }
            }
            for (BaseAdUnit baseAdUnit2 : this.f38225g) {
                if (baseAdUnit2 != null) {
                    baseAdUnit2.destroy();
                }
            }
        }
        if (!this.f38233o || !this.f38235q) {
            this.f38235q = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        Sigmob.getInstance().getMacroCommon().clearMacro();
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets a(View view, WindowInsets windowInsets) {
        this.f38229k.a(windowInsets, this.f38238t);
        return windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        DialogC1346b dialogC1346b = this.f38231m;
        if (dialogC1346b == null) {
            return;
        }
        dialogC1346b.dismiss();
        this.f38231m.b();
        this.f38231m = null;
    }

    private void a(int i2, RelativeLayout.LayoutParams layoutParams) {
        int i3;
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, this.f35956a);
        if (i2 == 1 || i2 == 2) {
            layoutParams.addRule(10);
            i3 = 9;
        } else {
            if (i2 != 3 && i2 != 4) {
                return;
            }
            layoutParams.addRule(10);
            i3 = 11;
        }
        layoutParams.addRule(i3);
        layoutParams.setMargins(iDipsToIntPixels, iDipsToIntPixels * 2, iDipsToIntPixels, iDipsToIntPixels);
    }

    private void a(Context context, int i2) {
        if (this.f38236r == null) {
            com.sigmob.sdk.base.views.w wVar = new com.sigmob.sdk.base.views.w(context);
            this.f38236r = wVar;
            wVar.setText("反馈");
            this.f38236r.setOnClickListener(this.f38239u);
            this.f38236r.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, this.f35956a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f38230l.getId());
            layoutParams.addRule(6, this.f38230l.getId());
            layoutParams.setMargins(0, -iDipsToIntPixels, 0, 0);
            m().addView(this.f38236r, layoutParams);
        }
        com.sigmob.sdk.base.views.w wVar2 = this.f38236r;
        if (wVar2 != null) {
            wVar2.setVisibility(i2);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) throws JSONException {
        C1327e c1327e = this.f38229k;
        if (c1327e == null) {
            return;
        }
        c1327e.a(configuration.orientation);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BaseAdUnit baseAdUnit, ClickCommon clickCommon, JSONObject jSONObject, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setScene_id(baseAdUnit.getAd_scene_id());
            pointEntitySigmob.setScene_desc(baseAdUnit.getAd_scene_desc());
            pointEntitySigmob.setIs_deeplink(clickCommon.isDeeplink);
            pointEntitySigmob.setFinal_url(clickCommon.clickUrl);
            pointEntitySigmob.setCoordinate(clickCommon.clickCoordinate);
            pointEntitySigmob.setVtime(String.format(Locale.getDefault(), "%.2f", Float.valueOf(0.0f)));
            Map<String, String> options = pointEntitySigmob.getOptions();
            if (com.sigmob.sdk.base.utils.v.b(jSONObject)) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    options.put(next, jSONObject.optString(next));
                }
            }
            options.put("cwidth", String.valueOf(ClientMetadata.getInstance().getDeviceScreenRealWidthDip()));
            options.put("cheight", String.valueOf(ClientMetadata.getInstance().getDeviceScreenRealHeightDip()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C1325c c1325c, BaseAdUnit baseAdUnit, String str, String str2, JSONObject jSONObject, String str3, boolean z2) {
        BaseAdUnit baseAdUnit2;
        C1340s c1340s;
        C1325c c1325c2;
        BaseAdUnit baseAdUnit3;
        String str4;
        JSONObject jSONObject2;
        String str5;
        BaseAdUnit baseAdUnit4;
        Context contextL = l();
        String message = null;
        String message2 = "";
        if (an.OPEN_WITH_BROWSER.a(Uri.parse(str2), 0)) {
            try {
                if (z2) {
                    if (baseAdUnit == null) {
                        baseAdUnit2 = c1325c.getAdUnitList().get(0);
                        baseAdUnit2.setRecord(false);
                    } else {
                        baseAdUnit.setRecord(true);
                        baseAdUnit2 = baseAdUnit;
                    }
                    baseAdUnit2.setUrl(str2);
                    C1258h.a(baseAdUnit2);
                    BaseAdActivity.a(contextL, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnit2);
                } else {
                    com.sigmob.sdk.base.utils.h.b(contextL, new Intent("android.intent.action.VIEW", Uri.parse(str2)));
                }
                c1340s = this;
                c1325c2 = c1325c;
                baseAdUnit3 = baseAdUnit;
                str4 = str;
                jSONObject2 = jSONObject;
                str5 = message2;
            } catch (Exception e2) {
                String message3 = e2.getMessage();
                if (com.sigmob.sdk.base.utils.s.b(str3)) {
                    try {
                        com.sigmob.sdk.base.utils.h.b(contextL, new Intent("android.intent.action.VIEW", Uri.parse(str3)));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        message = e2.getMessage();
                    }
                } else {
                    message = message3;
                }
            }
        } else {
            try {
                C1258h.d(baseAdUnit);
                Uri uri = Uri.parse(str2);
                com.sigmob.sdk.base.utils.h.a(contextL, uri, baseAdUnit == null ? null : com.sigmob.sdk.base.utils.h.a(this.f35956a, uri, baseAdUnit.getMarketPackageNameList()), com.sigmob.sdk.base.utils.v.b(baseAdUnit) && baseAdUnit.enableSmallWindow(null));
            } catch (Exception e4) {
                C1258h.d((BaseAdUnit) null);
                message2 = e4.getMessage();
            }
            try {
                if (com.sigmob.sdk.base.utils.v.b(baseAdUnit) && com.sigmob.sdk.base.utils.s.b(message2)) {
                    baseAdUnit.getClickCommon().isDeeplink = "0";
                    com.sigmob.sdk.manager.b.b(baseAdUnit, C1244a.f35656H, str2);
                }
                if (!com.sigmob.sdk.base.utils.s.b(message2) || !com.sigmob.sdk.base.utils.s.b(str3)) {
                    message = message2;
                } else if (z2) {
                    if (baseAdUnit == null) {
                        baseAdUnit4 = c1325c.getAdUnitList().get(0);
                        baseAdUnit4.setRecord(false);
                    } else {
                        baseAdUnit.setRecord(true);
                        baseAdUnit4 = baseAdUnit;
                    }
                    baseAdUnit4.setUrl(str3);
                    C1258h.a(baseAdUnit4);
                    BaseAdActivity.a(contextL, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnit4);
                } else {
                    com.sigmob.sdk.base.utils.h.b(contextL, new Intent("android.intent.action.VIEW", Uri.parse(str3)));
                }
                c1340s = this;
                c1325c2 = c1325c;
                baseAdUnit3 = baseAdUnit;
                str4 = str;
                jSONObject2 = jSONObject;
                str5 = message;
            } catch (Exception e5) {
                message2 = e5.getMessage();
                e5.printStackTrace();
            }
        }
        c1340s.a(c1325c2, baseAdUnit3, str4, jSONObject2, str5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C1325c c1325c, final BaseAdUnit baseAdUnit, String str, final JSONObject jSONObject, String str2) {
        C1326d mraidBridge = c1325c.getMraidBridge();
        try {
            if (com.sigmob.sdk.base.utils.s.b(str2) && com.sigmob.sdk.base.utils.v.b(mraidBridge)) {
                mraidBridge.b(str + "_failed", str2);
                return;
            }
            if (baseAdUnit != null && jSONObject != null) {
                String requestId = baseAdUnit.getRequestId();
                int iOptInt = jSONObject.optInt(ClickCommon.CLICK_LOSE_RATE, 0);
                int iOptInt2 = jSONObject.optInt(ClickCommon.CLICK_CB_STATE, com.sigmob.sdk.base.utils.d.f36580b);
                com.sigmob.sdk.base.utils.d.a(requestId, Integer.valueOf(iOptInt), Integer.valueOf(iOptInt2));
                baseAdUnit.getMacroCommon().addMarcoKey(SigMacroCommon._ISNC_, String.valueOf(iOptInt2));
                baseAdUnit.getClickCommon().click_lose_rate = Integer.valueOf(iOptInt);
                baseAdUnit.getClickCommon().click_cb_state = Integer.valueOf(iOptInt2);
            }
            a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            if (com.sigmob.sdk.base.utils.v.b(mraidBridge)) {
                mraidBridge.b(str + "_success", "");
            }
            if (baseAdUnit != null && baseAdUnit.isRecord()) {
                final ClickCommon clickCommon = baseAdUnit.getClickCommon();
                String strOptString = jSONObject == null ? null : jSONObject.optString(PointParamKey.CATEGORY);
                if (!com.sigmob.sdk.base.utils.s.b(strOptString)) {
                    strOptString = com.sigmob.sdk.base.a.ENDCARD.name().toLowerCase();
                }
                ad.a(strOptString, "click", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.mraid2.U
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1340s.a(baseAdUnit, clickCommon, jSONObject, obj);
                    }
                });
                if (com.sigmob.sdk.base.utils.v.b(jSONObject) && com.sigmob.sdk.base.utils.s.a((CharSequence) jSONObject.optString(ClickCommon.CLICK_AREA), (CharSequence) ClickCommon.CLICK_AREA_COMPANION)) {
                    return;
                }
                com.sigmob.sdk.base.network.h.a(baseAdUnit, "click");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z2) throws JSONException {
        C1325c c1325cC;
        C1326d mraidBridge;
        C1327e c1327e = this.f38229k;
        if (c1327e == null || (c1325cC = c1327e.c()) == null || (mraidBridge = c1325cC.getMraidBridge()) == null) {
            return;
        }
        mraidBridge.a(str, (HashMap<String, Object>) null);
        mraidBridge.a(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f38233o = true;
            this.f38232n = true;
            k().a();
        }
        return true;
    }
}
