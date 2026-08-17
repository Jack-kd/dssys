package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1282v;
import com.sigmob.sdk.base.common.InterfaceC1264k;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.base.views.EnumC1306s;
import com.sigmob.sdk.mraid.C1310b;
import com.sigmob.sdk.mraid.C1316h;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.WindNativeAdData;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.nativead.z, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1369z extends AbstractC1262j {

    /* renamed from: g, reason: collision with root package name */
    private static r f38523g;

    /* renamed from: f, reason: collision with root package name */
    public final long f38524f;

    /* renamed from: h, reason: collision with root package name */
    private ae f38525h;

    /* renamed from: i, reason: collision with root package name */
    private ae f38526i;

    /* renamed from: j, reason: collision with root package name */
    private RelativeLayout f38527j;

    /* renamed from: k, reason: collision with root package name */
    private FrameLayout f38528k;

    /* renamed from: l, reason: collision with root package name */
    private BaseAdUnit f38529l;

    /* renamed from: m, reason: collision with root package name */
    private C1349e f38530m;

    /* renamed from: n, reason: collision with root package name */
    private C1316h f38531n;

    /* renamed from: o, reason: collision with root package name */
    private View f38532o;

    /* renamed from: p, reason: collision with root package name */
    private WindNativeAdData f38533p;

    /* renamed from: q, reason: collision with root package name */
    private APKStatusBroadcastReceiver f38534q;

    /* renamed from: r, reason: collision with root package name */
    private ImageView f38535r;

    /* renamed from: s, reason: collision with root package name */
    private DialogC1305q f38536s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f38537t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f38538u;

    public C1369z(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) {
        super(activity, str, interfaceC1264k);
        this.f38524f = 300L;
        this.f38537t = false;
        this.f38529l = baseAdUnit;
        C1349e c1349e = (C1349e) baseAdUnit.getAdConfig();
        this.f38530m = c1349e;
        c1349e.a(n(), this.f38529l, (DialogC1305q.b) null);
        this.f38525h = (ae) bundle.getParcelable("attr");
        k().a(1);
        int iA = com.sigmob.sdk.base.k.a();
        if (iA == 0) {
            return;
        }
        n().getTheme().applyStyle(iA, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        r rVar = f38523g;
        if (rVar != null) {
            rVar.setUIStyle(EnumC1354j.PREVIEW);
        }
        k().a();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        k().onBackPressed();
    }

    private int r() {
        DisplayMetrics displayMetrics = ClientMetadata.getInstance().getDisplayMetrics();
        return Math.min((int) (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / this.f38529l.getAdPercent()), Math.max(displayMetrics.heightPixels, displayMetrics.widthPixels) / 2);
    }

    private void s() {
        ImageView imageView = this.f38535r;
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(4);
    }

    private void t() {
        if (this.f38535r == null) {
            a(n());
        }
        this.f38535r.setVisibility(0);
    }

    private void u() {
        this.f38538u = true;
        if (f38523g == null) {
            k().a();
            return;
        }
        new af(this.f38528k, this.f38526i, this.f38525h, 300L).a();
        this.f38527j.setVisibility(8);
        this.f38528k.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.e0
            @Override // java.lang.Runnable
            public final void run() {
                this.f38403b.v();
            }
        }, 300L);
    }

    public ah a() {
        ah sessionManager = this.f38529l.getSessionManager();
        if (sessionManager != null) {
            return sessionManager;
        }
        C1353i c1353i = new C1353i();
        c1353i.a(this.f38529l);
        return c1353i;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        m().removeAllViews();
        k().onSetContentView(m());
        this.f38529l.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_TEMPLATE;
        RelativeLayout relativeLayout = new RelativeLayout(l());
        this.f38527j = relativeLayout;
        relativeLayout.setBackgroundColor(-1);
        this.f38532o = p();
        C1316h c1316h = this.f38531n;
        if (c1316h != null) {
            c1316h.a(n());
        }
        this.f38527j.addView(this.f38532o, new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        r rVar = f38523g;
        if (rVar != null) {
            WindNativeAdData nativeAdUnit = rVar.getNativeAdUnit();
            this.f38533p = nativeAdUnit;
            if (nativeAdUnit != null) {
                layoutParams.setMargins(0, r(), 0, 0);
            }
        }
        m().addView(this.f38527j, layoutParams);
        if (f38523g != null) {
            this.f38528k = new FrameLayout(n());
            f38523g.setBackClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f38310b.b(view);
                }
            });
            m().addView(this.f38528k, new RelativeLayout.LayoutParams(-1, r()));
            f38523g.getSigVideoAdController().c();
            this.f38528k.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.sigmob.sdk.nativead.z.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (C1369z.f38523g == null || C1369z.this.f38528k == null) {
                        return false;
                    }
                    C1369z.this.f38528k.getViewTreeObserver().removeOnPreDrawListener(this);
                    C1369z.f38523g.setUIStyle(EnumC1354j.DETAIL_PAGE);
                    ViewGroup videoContainer = C1369z.f38523g.getVideoContainer();
                    if (videoContainer != null) {
                        com.sigmob.sdk.base.utils.w.a(videoContainer);
                        C1369z.this.f38528k.addView(videoContainer, new FrameLayout.LayoutParams(-1, -1));
                    }
                    C1369z.this.f38526i = new ae();
                    int[] iArr = new int[2];
                    C1369z.this.f38528k.getLocationOnScreen(iArr);
                    C1369z.this.f38526i.a(iArr[0]);
                    C1369z.this.f38526i.b(0);
                    C1369z.this.f38526i.c(C1369z.this.f38528k.getMeasuredWidth());
                    C1369z.this.f38526i.d(C1369z.this.f38528k.getMeasuredHeight());
                    new af(C1369z.this.f38528k, C1369z.this.f38525h, C1369z.this.f38526i, 300L).a();
                    C1369z.this.f38525h.b(C1369z.this.f38525h.b() - iArr[1]);
                    if (C1369z.this.f38527j != null) {
                        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                        alphaAnimation.setDuration(300L);
                        C1369z.this.f38527j.setAnimation(alphaAnimation);
                        alphaAnimation.start();
                    }
                    return true;
                }
            });
        }
        a(IntentActions.ACTION_NATIVE_TEMPLIE_SHOW, 100);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
        InterfaceC1363t sigVideoAdController;
        r rVar = f38523g;
        if (rVar == null || this.f38538u || (sigVideoAdController = rVar.getSigVideoAdController()) == null) {
            return;
        }
        sigVideoAdController.a();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
        InterfaceC1363t sigVideoAdController;
        r rVar = f38523g;
        if (rVar != null && (sigVideoAdController = rVar.getSigVideoAdController()) != null) {
            sigVideoAdController.c();
        }
        C1316h c1316h = this.f38531n;
        if (c1316h != null) {
            c1316h.c();
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = this.f38534q;
        if (aPKStatusBroadcastReceiver != null) {
            aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
            this.f38534q = null;
        }
        DialogC1305q dialogC1305q = this.f38536s;
        if (dialogC1305q != null) {
            dialogC1305q.dismiss();
            this.f38536s.c();
            this.f38536s = null;
        }
        C1316h c1316h = this.f38531n;
        if (c1316h != null) {
            c1316h.m();
            this.f38531n = null;
        }
        r rVar = f38523g;
        if (rVar != null) {
            rVar.setBackClickListener(null);
            f38523g = null;
        }
        a(IntentActions.ACTION_NATIVE_TEMPLE_DISMISS);
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public boolean j() {
        r rVar = f38523g;
        if (rVar != null && rVar.b()) {
            return false;
        }
        u();
        return false;
    }

    public View p() {
        if (this.f38531n == null) {
            this.f38531n = new C1316h(this.f35956a, this.f38529l, PlacementType.INTERSTITIAL);
        }
        this.f38531n.a(new C1316h.a() { // from class: com.sigmob.sdk.nativead.z.2
            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a() {
                SigmobLog.d("SigNativeAdLandViewController onEndCardShow()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void b() {
                SigmobLog.d("SigNativeAdLandViewController onShowSkipTime()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void c() {
                SigmobLog.d("SigNativeAdLandViewController onFeedBack()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void d() {
                SigmobLog.d("SigNativeAdLandViewController onExpand()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void e() {
                SigmobLog.i("SigNativeAdLandViewController onFailedToLoad()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void f() {
                SigmobLog.i("SigNativeAdLandViewController onUnload()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void g() {
                SigmobLog.i("SigNativeAdLandViewController onOpenFourElements()");
                if (C1369z.this.f38536s == null) {
                    C1369z.this.f38536s = new DialogC1305q(C1369z.this.n(), C1369z.this.f38529l);
                    C1369z.this.f38536s.a(new DialogC1305q.b() { // from class: com.sigmob.sdk.nativead.z.2.1
                        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                        public void a() {
                            if (C1369z.this.f38536s != null) {
                                C1369z.this.f38536s.dismiss();
                                C1369z.this.f38536s.c();
                                C1369z.this.f38536s = null;
                                C1369z.this.f38537t = false;
                            }
                            C1369z.this.f38529l.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_TEMPLATE;
                            C1369z.this.a().a(C1244a.f35679g, 0);
                        }

                        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                        public void b() {
                            C1369z.this.a().a(C1244a.f35678f, 0);
                        }

                        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                        public void a(Error error) {
                        }

                        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                        public void a(String str, String str2) throws UnsupportedEncodingException {
                            C1369z.this.f38529l.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                            C1369z.this.f38529l.getClickCommon().click_scene = "appinfo";
                            C1369z.this.f38529l.getClickCommon().is_final_click = true;
                            if (C1369z.this.f38530m != null) {
                                C1369z.this.f38530m.a(com.sigmob.sdk.base.a.COMPANION, str, str2, true);
                                C1369z.this.a(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
                            }
                        }
                    });
                }
                if (C1369z.this.f38536s == null || !C1369z.this.f38536s.a() || C1369z.this.f38537t) {
                    return;
                }
                C1369z.this.f38529l.getClickCommon().click_area = "appinfo";
                C1369z.this.f38529l.getClickCommon().is_final_click = false;
                C1369z.this.a().a("click", 0);
                C1369z.this.f38536s.show();
                C1369z.this.f38537t = true;
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void h() {
                SigmobLog.i("SigNativeAdLandViewController onClose()");
                C1369z.this.k().onBackPressed();
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(float f2) {
                SigmobLog.d("SigNativeAdLandViewController onReward()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void b(float f2) {
                SigmobLog.d("SigNativeAdLandViewController onSkip()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2) {
                SigmobLog.i("SigNativeAdLandViewController onResize()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(View view) {
                SigmobLog.d("SigNativeAdLandViewController onLoaded()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(WindAdError windAdError) {
                SigmobLog.i("SigNativeAdLandViewController onRenderProcessGone:" + windAdError.toString());
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(String str) throws UnsupportedEncodingException {
                SigmobLog.i("SigNativeAdLandViewController onCompanionClick:" + str);
                boolean z2 = true;
                if (!TextUtils.isEmpty(str)) {
                    try {
                        C1369z.this.f38529l.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                        C1369z.this.f38529l.getClickCommon().is_final_click = true;
                        JSONObject jSONObject = new JSONObject(str);
                        int iOptInt = jSONObject.optInt("type");
                        C1369z.this.f38531n.a(String.valueOf(jSONObject.optInt("x")), String.valueOf(jSONObject.optInt("y")));
                        if (iOptInt != 1) {
                            C1369z.this.a().a("click", 0);
                        } else {
                            z2 = false;
                        }
                    } catch (Exception unused) {
                        C1369z.this.f38531n.a("0", "0");
                        C1369z.this.a().a("click", 0);
                    }
                }
                C1369z.this.f38530m.a(com.sigmob.sdk.base.a.COMPANION, C1369z.this.f38531n.a(), z2);
                C1369z.this.a(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
            }

            /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
            @Override // com.sigmob.sdk.mraid.C1316h.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void a(java.net.URI r9, int r10, java.lang.String r11) throws java.io.UnsupportedEncodingException {
                /*
                    r8 = this;
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r1 = "SigNativeAdLandViewController  onOpen:"
                    r0.append(r1)
                    r0.append(r9)
                    java.lang.String r1 = "======"
                    r0.append(r1)
                    r0.append(r10)
                    java.lang.String r10 = "====="
                    r0.append(r10)
                    r0.append(r11)
                    java.lang.String r10 = r0.toString()
                    com.czhj.sdk.logger.SigmobLog.i(r10)
                    boolean r10 = android.text.TextUtils.isEmpty(r11)
                    r0 = 1
                    r1 = 0
                    if (r10 != 0) goto L8a
                    com.sigmob.sdk.nativead.z r10 = com.sigmob.sdk.nativead.C1369z.this     // Catch: java.lang.Exception -> L86
                    com.sigmob.sdk.base.models.BaseAdUnit r10 = com.sigmob.sdk.nativead.C1369z.g(r10)     // Catch: java.lang.Exception -> L86
                    com.sigmob.sdk.base.models.ClickCommon r10 = r10.getClickCommon()     // Catch: java.lang.Exception -> L86
                    java.lang.String r2 = "btn"
                    r10.click_area = r2     // Catch: java.lang.Exception -> L86
                    com.sigmob.sdk.nativead.z r10 = com.sigmob.sdk.nativead.C1369z.this     // Catch: java.lang.Exception -> L86
                    com.sigmob.sdk.base.models.BaseAdUnit r10 = com.sigmob.sdk.nativead.C1369z.g(r10)     // Catch: java.lang.Exception -> L86
                    com.sigmob.sdk.base.models.ClickCommon r10 = r10.getClickCommon()     // Catch: java.lang.Exception -> L86
                    r10.is_final_click = r0     // Catch: java.lang.Exception -> L86
                    org.json.JSONObject r10 = new org.json.JSONObject     // Catch: java.lang.Exception -> L86
                    r10.<init>(r11)     // Catch: java.lang.Exception -> L86
                    java.lang.String r11 = "type"
                    int r11 = r10.optInt(r11)     // Catch: java.lang.Exception -> L86
                    java.lang.String r2 = "x"
                    int r2 = r10.optInt(r2)     // Catch: java.lang.Exception -> L86
                    java.lang.String r3 = "y"
                    int r3 = r10.optInt(r3)     // Catch: java.lang.Exception -> L86
                    java.lang.String r4 = "disable_landing"
                    boolean r4 = r10.optBoolean(r4)     // Catch: java.lang.Exception -> L86
                    java.lang.String r5 = "feDisable"
                    boolean r10 = r10.optBoolean(r5)     // Catch: java.lang.Exception -> L84
                    r10 = r10 ^ r0
                    com.sigmob.sdk.nativead.z r5 = com.sigmob.sdk.nativead.C1369z.this     // Catch: java.lang.Exception -> L82
                    com.sigmob.sdk.mraid.h r5 = com.sigmob.sdk.nativead.C1369z.k(r5)     // Catch: java.lang.Exception -> L82
                    java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Exception -> L82
                    java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Exception -> L82
                    r5.a(r2, r3)     // Catch: java.lang.Exception -> L82
                    if (r11 != r0) goto L7e
                    r0 = r1
                L7e:
                    r7 = r10
                    r6 = r0
                    r1 = r4
                    goto L8c
                L82:
                    r1 = r4
                    goto L87
                L84:
                    r10 = r0
                    goto L82
                L86:
                    r10 = r0
                L87:
                    r7 = r10
                    r6 = r0
                    goto L8c
                L8a:
                    r6 = r0
                    r7 = r6
                L8c:
                    if (r1 != 0) goto Lb6
                    com.sigmob.sdk.nativead.z r10 = com.sigmob.sdk.nativead.C1369z.this
                    com.sigmob.sdk.base.models.BaseAdUnit r10 = com.sigmob.sdk.nativead.C1369z.g(r10)
                    java.lang.String r10 = r10.getLanding_page()
                    boolean r10 = android.text.TextUtils.isEmpty(r10)
                    if (r10 == 0) goto L9f
                    goto Lb6
                L9f:
                    com.sigmob.sdk.nativead.z r9 = com.sigmob.sdk.nativead.C1369z.this
                    com.sigmob.sdk.nativead.e r2 = com.sigmob.sdk.nativead.C1369z.h(r9)
                    com.sigmob.sdk.base.a r3 = com.sigmob.sdk.base.a.ENDCARD
                    com.sigmob.sdk.nativead.z r9 = com.sigmob.sdk.nativead.C1369z.this
                    com.sigmob.sdk.mraid.h r9 = com.sigmob.sdk.nativead.C1369z.k(r9)
                    java.lang.String r5 = r9.a()
                    r4 = 0
                Lb2:
                    r2.a(r3, r4, r5, r6, r7)
                    goto Lcd
                Lb6:
                    com.sigmob.sdk.nativead.z r10 = com.sigmob.sdk.nativead.C1369z.this
                    com.sigmob.sdk.nativead.e r2 = com.sigmob.sdk.nativead.C1369z.h(r10)
                    com.sigmob.sdk.base.a r3 = com.sigmob.sdk.base.a.ENDCARD
                    java.lang.String r4 = r9.toString()
                    com.sigmob.sdk.nativead.z r9 = com.sigmob.sdk.nativead.C1369z.this
                    com.sigmob.sdk.mraid.h r9 = com.sigmob.sdk.nativead.C1369z.k(r9)
                    java.lang.String r5 = r9.a()
                    goto Lb2
                Lcd:
                    com.sigmob.sdk.nativead.z r9 = com.sigmob.sdk.nativead.C1369z.this
                    java.lang.String r10 = "action.native.temple.click"
                    com.sigmob.sdk.nativead.C1369z.c(r9, r10)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.nativead.C1369z.AnonymousClass2.a(java.net.URI, int, java.lang.String):void");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(boolean z2) {
                SigmobLog.d("SigNativeAdLandViewController onMute()");
            }
        });
        if (!TextUtils.isEmpty(this.f38529l.getHtmlUrl())) {
            this.f38531n.b(this.f38529l.getHtmlUrl(), new C1316h.b() { // from class: com.sigmob.sdk.nativead.b0
                @Override // com.sigmob.sdk.mraid.C1316h.b
                public final void onReady(com.sigmob.sdk.mraid.v vVar, C1282v c1282v) {
                    C1369z.b(vVar, c1282v);
                }
            });
        } else if (!TextUtils.isEmpty(this.f38529l.getHtmlData())) {
            this.f38531n.a(this.f38529l.getHtmlData(), new C1316h.b() { // from class: com.sigmob.sdk.nativead.c0
                @Override // com.sigmob.sdk.mraid.C1316h.b
                public final void onReady(com.sigmob.sdk.mraid.v vVar, C1282v c1282v) {
                    C1369z.a(vVar, c1282v);
                }
            });
        }
        this.f38531n.a(new C1316h.e() { // from class: com.sigmob.sdk.nativead.d0
            @Override // com.sigmob.sdk.mraid.C1316h.e
            public final void useCustomCloseChanged(boolean z2) {
                this.f38394a.a(z2);
            }
        });
        return this.f38531n.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(com.sigmob.sdk.mraid.v vVar, C1282v c1282v) {
    }

    private void a(Context context) {
        if (this.f38535r != null) {
            return;
        }
        ImageView imageView = new ImageView(context);
        this.f38535r = imageView;
        imageView.setImageBitmap(EnumC1306s.CLOSE.a());
        this.f38535r.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f38535r.setImageAlpha(127);
        this.f38535r.setClickable(true);
        this.f38535r.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38406b.a(view);
            }
        });
        int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, this.f35956a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        int i2 = iDipsToIntPixels / 2;
        layoutParams.setMargins(i2, i2, 0, 0);
        RelativeLayout relativeLayout = this.f38527j;
        if (relativeLayout != null) {
            relativeLayout.addView(this.f38535r, layoutParams);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        k().onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.sigmob.sdk.mraid.v vVar, C1282v c1282v) {
    }

    public static void a(C1357m c1357m) {
        if (c1357m instanceof r) {
            f38523g = (r) c1357m;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2) {
        if (z2) {
            s();
        } else if (f38523g == null) {
            t();
        }
    }
}
