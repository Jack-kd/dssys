package com.sigmob.sdk.base.common;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.network.JsonRequest;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.TouchLocation;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ao;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.videoAd.C1377d;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.base.common.i, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1260i {

    /* renamed from: a, reason: collision with root package name */
    public static final String f35918a = "i";

    /* renamed from: b, reason: collision with root package name */
    protected Map<String, String> f35919b;

    /* renamed from: c, reason: collision with root package name */
    protected String f35920c;

    /* renamed from: d, reason: collision with root package name */
    protected String f35921d;

    /* renamed from: e, reason: collision with root package name */
    protected String f35922e;

    /* renamed from: f, reason: collision with root package name */
    protected String f35923f;

    /* renamed from: g, reason: collision with root package name */
    protected String f35924g;

    /* renamed from: h, reason: collision with root package name */
    protected String f35925h;

    /* renamed from: i, reason: collision with root package name */
    protected String f35926i;

    /* renamed from: k, reason: collision with root package name */
    public boolean f35928k;

    /* renamed from: m, reason: collision with root package name */
    private boolean f35930m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f35931n;

    /* renamed from: o, reason: collision with root package name */
    private String f35932o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f35933p;

    /* renamed from: q, reason: collision with root package name */
    private ac f35934q;

    /* renamed from: r, reason: collision with root package name */
    private DialogC1305q f35935r;

    /* renamed from: s, reason: collision with root package name */
    private WeakReference<Activity> f35936s;

    /* renamed from: t, reason: collision with root package name */
    private DialogC1305q.b f35937t;

    /* renamed from: u, reason: collision with root package name */
    private WeakReference<BaseAdUnit> f35938u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f35939v;

    /* renamed from: w, reason: collision with root package name */
    private int f35940w;

    /* renamed from: j, reason: collision with root package name */
    protected int f35927j = 1;

    /* renamed from: l, reason: collision with root package name */
    private final List<C1377d> f35929l = new ArrayList();

    /* renamed from: com.sigmob.sdk.base.common.i$2, reason: invalid class name */
    public class AnonymousClass2 implements JsonRequest.Listener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f35943a;

        public AnonymousClass2(BaseAdUnit baseAdUnit) {
            this.f35943a = baseAdUnit;
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            ad.a("download_start", "0", this.f35943a, new ad.a() { // from class: com.sigmob.sdk.base.common.Z
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f35648a.b(obj);
                }
            });
            ad.a("download_start", 0, volleyError.getMessage(), this.f35943a, new ad.a() { // from class: com.sigmob.sdk.base.common.a0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f35699a.a(obj);
                }
            });
            SigmobLog.e(C1260i.f35918a + "handleFourDownload#onErrorResponse: error = " + volleyError.getMessage());
        }

        @Override // com.czhj.sdk.common.network.JsonRequest.Listener
        public void onSuccess(JSONObject jSONObject) {
            try {
                SigmobLog.d(C1260i.f35918a + "handleFourDownload#onSuccess: response = " + jSONObject);
                if (jSONObject.getInt("ret") != 0) {
                    ad.a("download_start", "0", this.f35943a, new ad.a() { // from class: com.sigmob.sdk.base.common.b0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            this.f35836a.f(obj);
                        }
                    });
                    ad.a("download_start", 0, jSONObject.toString(), this.f35943a, new ad.a() { // from class: com.sigmob.sdk.base.common.c0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            this.f35857a.e(obj);
                        }
                    });
                    return;
                }
                String string = jSONObject.getJSONObject("data").getString("dstlink");
                this.f35943a.getMacroCommon().addMarcoKey(SigMacroCommon._CLICKID_, jSONObject.getJSONObject("data").getString("clickid"));
                C1260i.this.f35932o = string;
                C1276q.a(string, this.f35943a);
            } catch (Throwable th) {
                SigmobLog.e(C1260i.f35918a + "handleFourDownload#onSuccess: error = " + th.getMessage());
                ad.a("download_start", "0", this.f35943a, new ad.a() { // from class: com.sigmob.sdk.base.common.d0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f35865a.d(obj);
                    }
                });
                ad.a("download_start", 0, th.getMessage(), this.f35943a, new ad.a() { // from class: com.sigmob.sdk.base.common.e0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f35871a.c(obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(C1260i.this.f35932o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(C1260i.this.f35932o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(C1260i.this.f35932o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(C1260i.this.f35932o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(C1260i.this.f35932o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(C1260i.this.f35932o);
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.i$3, reason: invalid class name */
    public class AnonymousClass3 implements JsonRequest.Listener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f35945a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f35946b;

        public AnonymousClass3(BaseAdUnit baseAdUnit, String str) {
            this.f35945a = baseAdUnit;
            this.f35946b = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(String str, Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(String str, Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void f(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(str);
            }
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            BaseAdUnit baseAdUnit = this.f35945a;
            final String str = this.f35946b;
            ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.j0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1260i.AnonymousClass3.b(str, obj);
                }
            });
            String message = volleyError.getMessage();
            BaseAdUnit baseAdUnit2 = this.f35945a;
            final String str2 = this.f35946b;
            ad.a("download_start", 0, message, baseAdUnit2, new ad.a() { // from class: com.sigmob.sdk.base.common.k0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1260i.AnonymousClass3.a(str2, obj);
                }
            });
            SigmobLog.e(C1260i.f35918a + "handleMRAID2Download#onErrorResponse: error = " + volleyError.getMessage());
        }

        @Override // com.czhj.sdk.common.network.JsonRequest.Listener
        public void onSuccess(JSONObject jSONObject) {
            try {
                SigmobLog.d(C1260i.f35918a + "handleMRAID2Download#onSuccess: response = " + jSONObject);
                if (jSONObject.getInt("ret") == 0) {
                    String string = jSONObject.getJSONObject("data").getString("dstlink");
                    this.f35945a.getMacroCommon().addMarcoKey(SigMacroCommon._CLICKID_, jSONObject.getJSONObject("data").getString("clickid"));
                    C1276q.a(string, this.f35945a);
                    return;
                }
                BaseAdUnit baseAdUnit = this.f35945a;
                final String str = this.f35946b;
                ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.f0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1260i.AnonymousClass3.f(str, obj);
                    }
                });
                String string2 = jSONObject.toString();
                BaseAdUnit baseAdUnit2 = this.f35945a;
                final String str2 = this.f35946b;
                ad.a("download_start", 0, string2, baseAdUnit2, new ad.a() { // from class: com.sigmob.sdk.base.common.g0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1260i.AnonymousClass3.e(str2, obj);
                    }
                });
            } catch (Throwable th) {
                SigmobLog.e(C1260i.f35918a + "handleMRAID2Download#onSuccess: error = " + th.getMessage());
                BaseAdUnit baseAdUnit3 = this.f35945a;
                final String str3 = this.f35946b;
                ad.a("download_start", "0", baseAdUnit3, new ad.a() { // from class: com.sigmob.sdk.base.common.h0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1260i.AnonymousClass3.d(str3, obj);
                    }
                });
                String message = th.getMessage();
                BaseAdUnit baseAdUnit4 = this.f35945a;
                final String str4 = this.f35946b;
                ad.a("download_start", 0, message, baseAdUnit4, new ad.a() { // from class: com.sigmob.sdk.base.common.i0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1260i.AnonymousClass3.c(str4, obj);
                    }
                });
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.i$4, reason: invalid class name */
    public class AnonymousClass4 implements ao.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f35947a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f35948b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ AndroidMarket f35949c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f35950d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.sigmob.sdk.base.a f35951e;

        public AnonymousClass4(BaseAdUnit baseAdUnit, boolean z2, AndroidMarket androidMarket, boolean z3, com.sigmob.sdk.base.a aVar) {
            this.f35947a = baseAdUnit;
            this.f35948b = z2;
            this.f35949c = androidMarket;
            this.f35950d = z3;
            this.f35951e = aVar;
        }

        @Override // com.sigmob.sdk.base.common.ao.b
        public void a(final String str, an anVar) {
            SigmobLog.d(C1260i.f35918a + "urlHandlingSucceeded: action = " + anVar.name() + ", url = " + str);
            this.f35947a.getClickCommon().is_final_click = true;
            if (!this.f35947a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f35947a, anVar.name(), str);
            }
            this.f35947a.getClickCommon().isDeeplink = "0";
            int i2 = AnonymousClass5.f35954b[anVar.ordinal()];
            if (i2 == 3) {
                if (this.f35948b) {
                    com.sigmob.sdk.manager.b.b(this.f35947a, C1244a.f35655G, str);
                }
                this.f35947a.getClickCommon().isDeeplink = "1";
            } else if (i2 != 5) {
                if (i2 == 6) {
                    if (this.f35950d && C1260i.this.j()) {
                        this.f35947a.getClickCommon().is_final_click = false;
                    } else {
                        C1260i.this.f(str);
                    }
                }
            } else if (this.f35948b) {
                AndroidMarket androidMarket = this.f35949c;
                if (androidMarket != null) {
                    ad.a(PointCategory.APK_CLICK, ((Integer) Wire.get(androidMarket.type, 0)).intValue() == 0 ? "market" : "mimarket", this.f35947a, (ad.a) null);
                    if (com.sigmob.sdk.base.utils.s.b(this.f35949c.app_package_name)) {
                        try {
                            FileUtil.writeToCache(this.f35947a, com.sigmob.sdk.base.utils.n.a((Object) this.f35949c.app_package_name).getAbsolutePath());
                        } catch (Throwable th) {
                            SigmobLog.e(C1260i.f35918a + "urlHandlingSucceeded: error = " + th.getMessage());
                        }
                    }
                }
                BaseAdUnit baseAdUnit = this.f35947a;
                final AndroidMarket androidMarket2 = this.f35949c;
                ad.a(PointCategory.OPEN_MARKET, (String) null, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.l0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1260i.AnonymousClass4.b(str, androidMarket2, obj);
                    }
                });
            }
            this.f35947a.setCustomDeeplink(null);
            this.f35947a.setCustomAndroidMarket(null);
            this.f35947a.setCustomLandPageUrl(null);
            if (C1260i.this.f35934q != null) {
                C1260i.this.f35934q.onAdClick(this.f35948b, this.f35951e);
            }
        }

        @Override // com.sigmob.sdk.base.common.ao.b
        public void b(final String str, an anVar) {
            SigmobLog.d(C1260i.f35918a + "urlHandlingFailed: action = " + anVar.name() + ", url = " + str);
            this.f35947a.getClickCommon().isDeeplink = "0";
            int i2 = AnonymousClass5.f35954b[anVar.ordinal()];
            if (i2 == 3 || i2 == 4) {
                if (this.f35948b) {
                    com.sigmob.sdk.manager.b.b(this.f35947a, C1244a.f35656H, str);
                    return;
                }
                return;
            }
            if (i2 == 5) {
                if (this.f35948b) {
                    BaseAdUnit baseAdUnit = this.f35947a;
                    final AndroidMarket androidMarket = this.f35949c;
                    ad.a(PointCategory.OPEN_MARKET_FAILED, str, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.m0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            C1260i.AnonymousClass4.a(str, androidMarket, obj);
                        }
                    });
                    return;
                }
                return;
            }
            if (i2 != 8) {
                return;
            }
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) && !this.f35947a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f35947a, anVar.name(), str);
            }
            this.f35947a.setCustomDeeplink(null);
            this.f35947a.setCustomAndroidMarket(null);
            this.f35947a.setCustomLandPageUrl(null);
            if (C1260i.this.f35934q != null) {
                C1260i.this.f35934q.onAdClick(this.f35948b, this.f35951e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, AndroidMarket androidMarket, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", androidMarket.app_package_name);
                options.put("store_package_name", androidMarket.appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, AndroidMarket androidMarket, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                if (androidMarket == null) {
                    return;
                }
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", androidMarket.app_package_name);
                options.put("store_package_name", androidMarket.appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.i$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35953a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f35954b;

        static {
            int[] iArr = new int[an.values().length];
            f35954b = iArr;
            try {
                iArr[an.FOLLOW_PACKAGE_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35954b[an.IGNORE_ABOUT_SCHEME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35954b[an.MINI_PROGRAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35954b[an.FOLLOW_DEEP_LINK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35954b[an.MARKET_SCHEME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f35954b[an.DOWNLOAD_APK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f35954b[an.OPEN_WITH_BROWSER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f35954b[an.NOOP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[com.sigmob.sdk.base.a.values().length];
            f35953a = iArr2;
            try {
                iArr2[com.sigmob.sdk.base.a.COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f35953a[com.sigmob.sdk.base.a.VIDEO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private BaseAdUnit l() {
        WeakReference<BaseAdUnit> weakReference = this.f35938u;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        DialogC1305q dialogC1305q = this.f35935r;
        if (dialogC1305q == null) {
            return;
        }
        dialogC1305q.dismiss();
        this.f35935r.c();
        this.f35935r = null;
        this.f35930m = false;
    }

    public String f() {
        return this.f35925h;
    }

    public Map<String, String> g() {
        return this.f35919b;
    }

    public boolean h() {
        return this.f35931n;
    }

    public boolean i() {
        final BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null) {
            return false;
        }
        SigmobLog.i(f35918a + Constants.SHOW_DOWNLOAD_DIALOG);
        WeakReference<Activity> weakReference = this.f35936s;
        Activity activity = weakReference == null ? null : weakReference.get();
        if (activity != null && baseAdUnitL.getadPrivacy() != null && this.f35935r == null) {
            DialogC1305q dialogC1305q = new DialogC1305q(activity, baseAdUnitL);
            this.f35935r = dialogC1305q;
            dialogC1305q.a(new DialogC1305q.b() { // from class: com.sigmob.sdk.base.common.i.1
                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a() {
                    SigmobLog.i(C1260i.f35918a + "onCloseClick");
                    C1260i.this.m();
                    ah sessionManager = baseAdUnitL.getSessionManager();
                    if (sessionManager != null) {
                        sessionManager.a(C1244a.f35679g, 0);
                    }
                    if (C1260i.this.f35937t != null) {
                        C1260i.this.f35937t.a();
                    }
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void b() {
                    SigmobLog.i(C1260i.f35918a + "onShowSuccess");
                    ah sessionManager = baseAdUnitL.getSessionManager();
                    if (sessionManager != null) {
                        sessionManager.a(C1244a.f35678f, 0);
                    }
                    if (C1260i.this.f35937t == null || !C1260i.this.f35930m) {
                        return;
                    }
                    C1260i.this.f35937t.b();
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a(Error error) {
                    SigmobLog.e(C1260i.f35918a + "onShowFail: error = " + error);
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a(String str, String str2) throws UnsupportedEncodingException {
                    SigmobLog.i(C1260i.f35918a + "onButtonClick");
                    if (C1260i.this.f35937t != null) {
                        C1260i.this.f35937t.a(str, str2);
                    }
                    C1260i.this.a(baseAdUnitL.getClickCommon().clickUIType, str, str2, true);
                }
            });
        }
        DialogC1305q dialogC1305q2 = this.f35935r;
        if (dialogC1305q2 == null || !dialogC1305q2.a()) {
            return false;
        }
        if (activity != null && !this.f35930m) {
            boolean zIsFinishing = activity.isFinishing();
            boolean zIsDestroyed = activity.isDestroyed();
            if (!zIsFinishing && !zIsDestroyed) {
                this.f35935r.show();
                this.f35930m = true;
                return true;
            }
            this.f35930m = false;
            this.f35935r.dismiss();
            this.f35935r.c();
            this.f35935r = null;
        }
        return true;
    }

    public boolean j() {
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null || !baseAdUnitL.isDownloadDialog()) {
            return false;
        }
        boolean zI = i();
        com.sigmob.sdk.base.utils.k.c(f35918a, "showDownloadDialog: result = " + zI, new Object[0]);
        return zI;
    }

    public void k() {
        this.f35937t = null;
        this.f35934q = null;
        m();
    }

    public static C1260i a(BaseAdUnit baseAdUnit) {
        C1260i c1260i = new C1260i();
        c1260i.b(baseAdUnit);
        return c1260i;
    }

    public String c() {
        return this.f35920c;
    }

    public String d() {
        return this.f35923f;
    }

    public String e() {
        return this.f35924g;
    }

    public void f(String str) {
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null) {
            return;
        }
        if (C1276q.a(this.f35932o)) {
            try {
                ak.a(com.sigmob.sdk.b.e(), "正在下载", 1).show();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        String landing_page = baseAdUnitL.getLanding_page();
        if (com.sigmob.sdk.base.utils.s.b(str)) {
            landing_page = str;
        }
        String strMacroProcess = baseAdUnitL.getMacroCommon().macroProcess(landing_page);
        if (baseAdUnitL.getsubInteractionType() != 1) {
            this.f35932o = str;
            C1276q.a(str, baseAdUnitL);
            return;
        }
        JsonRequest jsonRequest = new JsonRequest(strMacroProcess, new AnonymousClass2(baseAdUnitL), 1);
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        if (sigRequestQueue == null) {
            ad.a("download_start", "0", baseAdUnitL, new ad.a() { // from class: com.sigmob.sdk.base.common.V
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f35644a.b(obj);
                }
            });
            ad.a("download_start", 0, "request queue is null.", baseAdUnitL, new ad.a() { // from class: com.sigmob.sdk.base.common.W
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f35645a.a(obj);
                }
            });
        } else {
            jsonRequest.setTag("GDTRequestConvert");
            sigRequestQueue.add(jsonRequest);
        }
    }

    public String b() {
        return this.f35926i;
    }

    public void c(Context context, int i2, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void e(String str) {
        if (str == null) {
            return;
        }
        this.f35925h = str;
    }

    public List<C1377d> a(long j2, long j3) {
        if (j3 <= 0 || j2 <= 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        C1377d c1377d = new C1377d(C1244a.f35683k, j2 / j3);
        int size = this.f35929l.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1377d c1377d2 = this.f35929l.get(i2);
            if (c1377d2.compareTo(c1377d) > 0) {
                break;
            }
            if (!c1377d2.isTracked()) {
                arrayList.add(c1377d2);
            }
        }
        return arrayList;
    }

    public void b(Context context, int i2, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void c(BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "click");
    }

    public void d(String str) {
        if (str == null) {
            return;
        }
        this.f35924g = str;
    }

    public void a(int i2) {
        this.f35940w = i2;
    }

    public void b(Context context, BaseAdUnit baseAdUnit) {
        ad.a(PointCategory.LANDING_PAGE_CLOSE, (String) null, baseAdUnit, (ad.a) null);
    }

    public void c(String str) {
        if (str == null) {
            return;
        }
        this.f35923f = str;
    }

    private void b(com.sigmob.sdk.base.a aVar, String str, String str2, boolean z2) {
        ah sessionManager;
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null || (sessionManager = baseAdUnitL.getSessionManager()) == null) {
            return;
        }
        int i2 = AnonymousClass5.f35953a[aVar.ordinal()];
        sessionManager.a(i2 != 1 ? i2 != 2 ? "click" : C1244a.f35692t : C1244a.f35691s, 0);
    }

    public void a(Activity activity, BaseAdUnit baseAdUnit, DialogC1305q.b bVar) {
        if (baseAdUnit == null) {
            return;
        }
        if (activity != null) {
            this.f35936s = new WeakReference<>(activity);
        }
        this.f35937t = bVar;
    }

    public void a(Context context, int i2, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null.");
        ad.a("start", (String) null, baseAdUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "start");
    }

    public void b(BaseAdUnit baseAdUnit) {
        this.f35938u = new WeakReference<>(baseAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(this.f35932o);
        }
    }

    public void a(Context context, TouchLocation touchLocation, TouchLocation touchLocation2, com.sigmob.sdk.base.a aVar, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void a(Context context, BaseAdUnit baseAdUnit) {
        ad.a(PointCategory.LANDING_PAGE_SHOW, (String) null, baseAdUnit, (ad.a) null);
    }

    public void b(String str) {
        this.f35920c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    public void a(Context context, String str, BaseAdUnit baseAdUnit, String str2, int i2) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
        ad.a(str2, i2, str, baseAdUnit, (ad.a) null);
    }

    public void a(com.sigmob.sdk.base.a aVar, String str, String str2, boolean z2) throws UnsupportedEncodingException {
        a(aVar, str, str2, z2, false);
    }

    public void a(com.sigmob.sdk.base.a aVar, String str, String str2, boolean z2, boolean z3) throws UnsupportedEncodingException {
        ClickCommon clickCommon;
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null || (clickCommon = baseAdUnitL.getClickCommon()) == null) {
            return;
        }
        AndroidMarket androidMarket = baseAdUnitL.getAndroidMarket();
        String str3 = com.sigmob.sdk.base.utils.s.a((CharSequence) str) ? this.f35920c : str;
        clickCommon.clickUIType = aVar;
        clickCommon.clickCoordinate = str2;
        clickCommon.clickUrl = str3;
        a(baseAdUnitL, z2);
        new ao.a().a(an.IGNORE_ABOUT_SCHEME, an.OPEN_WITH_BROWSER, an.MARKET_SCHEME, an.DOWNLOAD_APK, an.FOLLOW_PACKAGE_NAME, an.FOLLOW_DEEP_LINK, an.MINI_PROGRAM).a(new AnonymousClass4(baseAdUnitL, z2, androidMarket, z3, aVar)).a(l()).a(baseAdUnitL.isSkipSigmobBrowser()).b(baseAdUnitL.getAd().forbiden_parse_landingpage.booleanValue()).a().a(com.sigmob.sdk.b.e(), str);
    }

    public void a(com.sigmob.sdk.base.a aVar, String str, String str2, boolean z2, boolean z3, JSONObject jSONObject) throws UnsupportedEncodingException {
        SigmobLog.d(f35918a + "handleUrlAction: clickUIType = " + aVar + ", url = " + str + ", coordinate = " + str2 + ", isRecord = " + z2 + ", showAppElement = " + z3 + ", ext = " + jSONObject);
        int iOptInt = jSONObject == null ? 2 : jSONObject.optInt("interaction_type", 2);
        int apkDownloadType = 0;
        boolean zOptBoolean = jSONObject == null ? false : jSONObject.optBoolean("disable_landing", false);
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || !zOptBoolean) {
            a(aVar, str, str2, z2, z3);
            return;
        }
        String strOptString = jSONObject.optString("failback_url");
        String strOptString2 = jSONObject.optString(DeepLinkPresetEvent.UMEventParamProductName);
        String strOptString3 = jSONObject.optString("app_icon_url");
        Context contextE = com.sigmob.sdk.b.e();
        try {
            try {
                BaseAdUnit baseAdUnitL = l();
                boolean zB = com.sigmob.sdk.base.utils.v.b(baseAdUnitL);
                if (zB) {
                    baseAdUnitL.setMraidInteractionType(iOptInt);
                }
                boolean z4 = zB && baseAdUnitL.enableSmallWindow(Integer.valueOf(iOptInt));
                if (iOptInt == 1) {
                    com.sigmob.sdk.base.utils.h.a(contextE, Uri.parse(str), (String) null, z4);
                } else if (iOptInt == 2) {
                    this.f35932o = str;
                    if (baseAdUnitL != null) {
                        apkDownloadType = baseAdUnitL.getApkDownloadType();
                    }
                    C1276q.a(this.f35932o, strOptString3, strOptString2, apkDownloadType);
                } else if (iOptInt == 7) {
                    com.sigmob.sdk.base.utils.h.a(contextE, jSONObject.optString("wx_app_id"), jSONObject.optString("wx_app_username"), jSONObject.optString("wx_app_path"), jSONObject.optInt("wx_business_type"), jSONObject.optString("wx_ext_msg"));
                } else if (iOptInt == 9) {
                    com.sigmob.sdk.base.utils.h.a(contextE, (Uri) null, jSONObject.optString("package_name"), z4);
                }
            } catch (Throwable unused) {
                com.sigmob.sdk.base.utils.h.a(contextE, Uri.parse(strOptString));
            }
        } catch (Throwable unused2) {
        }
        ac acVar = this.f35934q;
        if (acVar != null) {
            acVar.onAdClick(z2, aVar);
        }
    }

    public void a(com.sigmob.sdk.base.a aVar, String str, boolean z2) throws UnsupportedEncodingException {
        a(aVar, (String) null, str, z2, true);
    }

    public void a(ac acVar) {
        this.f35934q = acVar;
    }

    public static void a(BaseAdUnit baseAdUnit, String str, boolean z2) {
        final String strMacroProcess = baseAdUnit.getMacroCommon().macroProcess(str);
        String productId = baseAdUnit.getProductId();
        String apkPackageName = baseAdUnit.getApkPackageName();
        int i2 = baseAdUnit.getsubInteractionType();
        if (i2 == 2 || com.sigmob.sdk.base.utils.s.b(apkPackageName)) {
            if (!com.sigmob.sdk.base.utils.s.a((CharSequence) apkPackageName)) {
                productId = apkPackageName;
            }
            if (com.sigmob.sdk.base.utils.s.b(productId)) {
                try {
                    C1258h.c(baseAdUnit);
                    com.sigmob.sdk.base.utils.h.c(com.sigmob.sdk.b.e(), productId);
                    return;
                } catch (Throwable th) {
                    C1258h.c((BaseAdUnit) null);
                    SigmobLog.e(f35918a + "handleMRAID2Download: error = " + th.getMessage());
                }
            }
        }
        if (i2 != 1 || z2) {
            C1276q.a(strMacroProcess, baseAdUnit);
            return;
        }
        JsonRequest jsonRequest = new JsonRequest(strMacroProcess, new AnonymousClass3(baseAdUnit, strMacroProcess), 1);
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        if (sigRequestQueue == null) {
            ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.X
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1260i.b(strMacroProcess, obj);
                }
            });
            ad.a("download_start", 0, "request queue is null", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.Y
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1260i.a(strMacroProcess, obj);
                }
            });
        } else {
            jsonRequest.setTag("GDTRequestConvert");
            sigRequestQueue.add(jsonRequest);
        }
    }

    private void a(BaseAdUnit baseAdUnit, boolean z2) throws UnsupportedEncodingException {
        ClickCommon clickCommon;
        if (baseAdUnit == null || !z2 || (clickCommon = baseAdUnit.getClickCommon()) == null) {
            return;
        }
        String str = clickCommon.is_final_click ? "1" : "0";
        SigMacroCommon macroCommon = baseAdUnit.getMacroCommon();
        macroCommon.addMarcoKey("_AX_", clickCommon.adarea_x);
        macroCommon.addMarcoKey("_AY_", clickCommon.adarea_y);
        macroCommon.addMarcoKey("_AW_", clickCommon.adarea_w);
        macroCommon.addMarcoKey("_AH_", clickCommon.adarea_h);
        if ("5".equals(clickCommon.sld)) {
            macroCommon.updateClickMarco(SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY);
            macroCommon.addMarcoKey(SigMacroCommon._SLD_, clickCommon.sld);
            macroCommon.addMarcoKey("_TURNX_", clickCommon.turn_x);
            macroCommon.addMarcoKey("_TURNY_", clickCommon.turn_y);
            macroCommon.addMarcoKey("_TURNZ_", clickCommon.turn_z);
            macroCommon.addMarcoKey("_TURNTIME_", clickCommon.turn_time);
            macroCommon.addMarcoKey("_CPTIDS_", String.valueOf(clickCommon.widget_id));
        } else if ("2".equals(clickCommon.sld)) {
            macroCommon.updateClickMarco(SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY);
            macroCommon.addMarcoKey(SigMacroCommon._SLD_, clickCommon.sld);
            macroCommon.addMarcoKey("_CPTIDS_", String.valueOf(clickCommon.widget_id));
            macroCommon.addMarcoKey("_XMAXACC_", clickCommon.x_max_acc);
            macroCommon.addMarcoKey("_YMAXACC_", clickCommon.y_max_acc);
            macroCommon.addMarcoKey("_ZMAXACC_", clickCommon.z_max_acc);
        } else if (baseAdUnit.getCreativeType() != 9) {
            clickCommon.sld = "0";
            macroCommon.updateClickMarco(clickCommon.down, clickCommon.up);
            macroCommon.addMarcoKey(SigMacroCommon._SLD_, "0");
        }
        if (baseAdUnit.getTemplateId() > 0) {
            macroCommon.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(baseAdUnit.getTemplateId()));
        }
        if (com.sigmob.sdk.base.utils.s.b(clickCommon.click_area)) {
            macroCommon.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(clickCommon.click_area));
        }
        if (com.sigmob.sdk.base.utils.s.b(clickCommon.click_scene)) {
            macroCommon.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(clickCommon.click_scene));
        }
        macroCommon.addMarcoKey(SigMacroCommon._FINALCLICK_, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(this.f35932o);
        }
    }

    public void a(String str) {
        this.f35926i = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(str);
        }
    }

    public void a(List<C1377d> list) {
        Preconditions.NoThrow.checkNotNull(list, "fractionalTrackers cannot be null");
        this.f35929l.addAll(list);
        Collections.sort(this.f35929l);
    }

    public boolean a() {
        return this.f35939v;
    }
}
