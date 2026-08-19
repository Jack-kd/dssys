package com.sigmob.sdk.newInterstitial;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.common.utils.ViewUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.InterfaceC1264k;
import com.sigmob.sdk.base.common.ac;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.InterstitialSetting;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.utils.o;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.nativead.DialogC1346b;
import com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView;
import com.sigmob.sdk.videoAd.AbstractC1375b;
import com.sigmob.sdk.videoAd.C1377d;
import com.sigmob.sdk.videoplayer.C1381a;
import com.sigmob.windad.natives.WindNativeAdData;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class i extends AbstractC1375b {

    /* renamed from: f, reason: collision with root package name */
    public static final String f38574f = "i";

    /* renamed from: A, reason: collision with root package name */
    private boolean f38575A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f38576B;

    /* renamed from: C, reason: collision with root package name */
    private com.sigmob.sdk.base.utils.o f38577C;

    /* renamed from: D, reason: collision with root package name */
    private DialogC1346b f38578D;

    /* renamed from: E, reason: collision with root package name */
    private final View.OnClickListener f38579E;

    /* renamed from: g, reason: collision with root package name */
    private final BaseAdUnit f38580g;

    /* renamed from: h, reason: collision with root package name */
    private final Bundle f38581h;

    /* renamed from: i, reason: collision with root package name */
    private final C1260i f38582i;

    /* renamed from: j, reason: collision with root package name */
    private g f38583j;

    /* renamed from: k, reason: collision with root package name */
    private RelativeLayout f38584k;

    /* renamed from: l, reason: collision with root package name */
    private final List<String> f38585l;

    /* renamed from: m, reason: collision with root package name */
    private final List<String> f38586m;

    /* renamed from: n, reason: collision with root package name */
    private C1381a f38587n;

    /* renamed from: o, reason: collision with root package name */
    private h f38588o;

    /* renamed from: p, reason: collision with root package name */
    private InterstitialSetting f38589p;

    /* renamed from: q, reason: collision with root package name */
    private final boolean f38590q;

    /* renamed from: r, reason: collision with root package name */
    private NewInterstitialHeaderView f38591r;

    /* renamed from: s, reason: collision with root package name */
    private int f38592s;

    /* renamed from: t, reason: collision with root package name */
    private String f38593t;

    /* renamed from: u, reason: collision with root package name */
    private long f38594u;

    /* renamed from: v, reason: collision with root package name */
    private int f38595v;

    /* renamed from: w, reason: collision with root package name */
    private final Handler f38596w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f38597x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f38598y;

    /* renamed from: z, reason: collision with root package name */
    private DialogC1305q f38599z;

    /* renamed from: com.sigmob.sdk.newInterstitial.i$6, reason: invalid class name */
    public class AnonymousClass6 implements com.sigmob.sdk.videoplayer.k {

        /* renamed from: b, reason: collision with root package name */
        private boolean f38611b;

        public AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(com.sigmob.sdk.videoplayer.d dVar) {
            SigmobLog.i("video player state change " + dVar);
            switch (AnonymousClass8.f38614a[dVar.ordinal()]) {
                case 1:
                    if (i.this.f38587n != null) {
                        i iVar = i.this;
                        iVar.f38592s = (int) iVar.f38587n.getDuration();
                        if (i.this.f38592s == 0) {
                            i iVar2 = i.this;
                            iVar2.f38592s = iVar2.f38580g.getDuration();
                        }
                        i.this.f38580g.getVideoCommon().video_time = (int) (i.this.f38592s / 1000.0f);
                    }
                    i.this.f38580g.getVideoCommon().is_first = 1;
                    i.this.f38580g.getVideoCommon().type = 1;
                    i.this.f38580g.getVideoCommon().scene = 1;
                    i.this.f38580g.getVideoCommon().is_auto_play = 1;
                    i.this.f38580g.getVideoCommon().is_last = 0;
                    i.this.f38580g.getVideoCommon().end_time = 0;
                    i iVar3 = i.this;
                    iVar3.f38597x = iVar3.f38580g.getIsMute() != 0;
                    if (i.this.f38587n != null) {
                        i.this.f38587n.setMute(i.this.f38597x);
                        i.this.f38591r.setSoundStatus(i.this.f38597x);
                        i.this.f38591r.showSoundIcon();
                        return;
                    }
                    return;
                case 2:
                    if (this.f38611b) {
                        i.this.f38580g.getVideoCommon().type = 2;
                    }
                    this.f38611b = false;
                    if (i.this.a() != null) {
                        i.this.a().a("video_start", 0);
                    }
                    if (i.this.f38587n != null) {
                        i.this.f38580g.getVideoCommon().begin_time = (int) (i.this.f38587n.getCurrentPositionWhenPlaying() / 1000.0f);
                        return;
                    }
                    return;
                case 3:
                    if (i.this.f38587n != null) {
                        ad.a("video", i.this.f38587n.getErrorCode(), i.this.f38587n.getErrorMessage(), i.this.f38580g, (ad.a) null);
                    }
                    i.this.p();
                    return;
                case 4:
                    if (i.this.a() != null) {
                        i.this.a().a("complete", 0);
                    }
                    if (!i.this.f38580g.hasEndCard()) {
                        i.this.f38580g.getVideoCommon().type = 3;
                        i.this.z();
                        return;
                    }
                    break;
                case 5:
                    break;
                case 6:
                    i.this.C();
                    i.this.A();
                    return;
                case 7:
                    i.this.D();
                    i.this.z();
                    return;
                case 8:
                    if (i.this.a() != null) {
                        i.this.a().a("video_pause", 0);
                    }
                    this.f38611b = true;
                    return;
                default:
                    return;
            }
            i.this.p();
        }

        @Override // com.sigmob.sdk.videoplayer.k
        public void a(long j2, long j3) {
            SigmobLog.d("position " + j2 + " duration " + j3);
            for (C1377d c1377d : i.this.f38582i.a(j2, (long) i.this.f38592s)) {
                i.this.b(c1377d.getEvent());
                c1377d.setTracked();
            }
            if (j2 > i.this.f38592s) {
                i.this.p();
            }
        }

        @Override // com.sigmob.sdk.videoplayer.k
        public void a(final com.sigmob.sdk.videoplayer.d dVar) {
            if (i.this.f38587n == null) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.sigmob.sdk.newInterstitial.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38623b.b(dVar);
                }
            });
        }
    }

    /* renamed from: com.sigmob.sdk.newInterstitial.i$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38614a;

        static {
            int[] iArr = new int[com.sigmob.sdk.videoplayer.d.values().length];
            f38614a = iArr;
            try {
                iArr[com.sigmob.sdk.videoplayer.d.STATE_PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_AUTO_COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_END.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38614a[com.sigmob.sdk.videoplayer.d.STATE_PAUSE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public i(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) throws IllegalStateException {
        super(activity, str, interfaceC1264k);
        this.f38585l = new ArrayList();
        this.f38586m = new ArrayList();
        this.f38596w = new Handler(Looper.getMainLooper());
        this.f38579E = new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.i.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activityN = i.this.n();
                if (activityN == null || i.this.f38580g == null) {
                    return;
                }
                i iVar = i.this;
                if (iVar.a(iVar.f38578D)) {
                    return;
                }
                i.this.f38578D = new DialogC1346b(activityN, i.this.f38580g);
                i.this.f38578D.a();
                i.this.f38578D.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.newInterstitial.i.7.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        i.this.g();
                        i.this.E();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int i2, String str2, boolean z2) {
                        i.this.g();
                        i.this.E();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                        i.this.f();
                    }
                });
            }
        };
        this.f38580g = baseAdUnit;
        this.f38581h = bundle;
        C1260i adConfig = baseAdUnit.getAdConfig();
        this.f38582i = adConfig;
        adConfig.a(n(), baseAdUnit, new DialogC1305q.b() { // from class: com.sigmob.sdk.newInterstitial.i.1
            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a() {
                i.this.f38575A = false;
                i.this.z();
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void b() {
                i.this.f38575A = true;
                i.this.A();
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a(Error error) {
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a(String str2, String str3) {
                i.this.f38580g.getClickCommon().click_area = "appinfo";
                i.this.f38580g.getClickCommon().is_final_click = true;
                i.this.r();
                ah ahVarA = i.this.a();
                if (ahVarA == null) {
                    return;
                }
                ahVarA.a("click", 0);
            }
        });
        k().a(7);
        this.f38590q = baseAdUnit.getTemplateType() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        G();
        C1381a c1381a = this.f38587n;
        if (c1381a == null) {
            return;
        }
        c1381a.j();
    }

    private void B() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C1377d(C1244a.f35683k, 0.25f));
        arrayList.add(new C1377d(C1244a.f35685m, 0.5f));
        arrayList.add(new C1377d(C1244a.f35686n, 0.75f));
        this.f38582i.a((List<C1377d>) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        RelativeLayout relativeLayout = this.f38584k;
        if (relativeLayout == null || relativeLayout.getVisibility() == 0) {
            return;
        }
        this.f38594u = System.currentTimeMillis();
        this.f38584k.setVisibility(0);
        this.f38593t = "loading";
        int i2 = this.f38595v + 1;
        this.f38595v = i2;
        if (i2 > 2) {
            return;
        }
        this.f38596w.postDelayed(new Runnable() { // from class: com.sigmob.sdk.newInterstitial.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f38622b.J();
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        RelativeLayout relativeLayout = this.f38584k;
        if (relativeLayout != null && relativeLayout.getVisibility() == 0) {
            this.f38585l.add(String.format(Locale.getDefault(), "%d", Long.valueOf(System.currentTimeMillis() - this.f38594u)));
            this.f38586m.add(String.format(Locale.getDefault(), "%.2f", Float.valueOf(((int) this.f38587n.getCurrentPositionWhenPlaying()) / 1000.0f)));
            this.f38593t = PointCategory.PLAY;
            this.f38596w.removeCallbacksAndMessages(null);
            this.f38584k.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        DialogC1346b dialogC1346b = this.f38578D;
        if (dialogC1346b == null) {
            return;
        }
        dialogC1346b.dismiss();
        this.f38578D.b();
        this.f38578D = null;
    }

    private void F() {
        if (this.f38598y) {
            return;
        }
        C1381a c1381a = this.f38587n;
        if (c1381a != null) {
            c1381a.r();
            this.f38587n = null;
        }
        this.f38598y = true;
        if (this.f38588o == null) {
            h hVar = new h(this.f35956a);
            this.f38588o = hVar;
            hVar.a(this.f38579E);
            Button cTAButton = this.f38588o.getCTAButton();
            com.sigmob.sdk.base.a aVar = com.sigmob.sdk.base.a.ENDCARD;
            a(cTAButton, aVar);
            this.f38588o.a(this.f38580g.getIconUrl(), this.f38580g.getEndCardImageUrl(), this.f38580g.getAppName(), this.f38580g.getCreativeTitle(), this.f38580g.getCTAText());
            SigAdPrivacyInfoView adPrivacyInfo = this.f38588o.getAdPrivacyInfo();
            if (v.b(adPrivacyInfo)) {
                View privacyLl = adPrivacyInfo.getPrivacyLl();
                if (v.b(privacyLl)) {
                    privacyLl.setBackgroundColor(0);
                    a(adPrivacyInfo, aVar);
                }
            }
            this.f38588o.getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f38617b.a(view);
                }
            });
        }
        this.f38591r.hideSoundIcon();
        ViewUtil.removeFromParent(this.f38583j);
        m().addView(this.f38588o, new ViewGroup.LayoutParams(-1, -1));
    }

    private void G() {
        com.sigmob.sdk.base.utils.o oVar = this.f38577C;
        if (oVar == null) {
            return;
        }
        oVar.c();
    }

    private void H() {
        com.sigmob.sdk.base.utils.o oVar = this.f38577C;
        if (oVar == null) {
            return;
        }
        oVar.d();
    }

    private void I() {
        com.sigmob.sdk.base.utils.o oVar = this.f38577C;
        if (oVar == null) {
            return;
        }
        oVar.e();
        this.f38577C = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        this.f38596w.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        boolean z2 = !this.f38597x;
        this.f38597x = z2;
        this.f38591r.setSoundStatus(z2);
        C1381a c1381a = this.f38587n;
        if (c1381a == null) {
            return;
        }
        c1381a.setMute(this.f38597x);
    }

    private void w() {
        SigAdInfoView adInfView = this.f38583j.getAdInfView();
        if (adInfView == null) {
            return;
        }
        adInfView.setAppInfoView(this.f38580g.getIconUrl(), this.f38580g.getAppName(), this.f38580g.getCreativeTitle());
        SigAdPrivacyInfoView adPrivacyInfo = adInfView.getAdPrivacyInfo();
        if (adPrivacyInfo == null) {
            return;
        }
        adPrivacyInfo.getPrivacyAdText().setTextColor(-1);
        a(adInfView.getAdPrivacyInfo(), com.sigmob.sdk.base.a.AD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        DialogC1305q dialogC1305q = this.f38599z;
        if (dialogC1305q == null) {
            return;
        }
        dialogC1305q.dismiss();
        this.f38599z.c();
        this.f38599z = null;
    }

    private C1381a y() {
        if (this.f38587n == null) {
            C1381a c1381a = new C1381a(l());
            this.f38587n = c1381a;
            c1381a.setVideoPlayerStatusListener(new AnonymousClass6());
            B();
        }
        this.f38587n.setUp(this.f38580g.getProxyVideoUrl());
        return this.f38587n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        H();
        C1381a c1381a = this.f38587n;
        if (c1381a == null) {
            return;
        }
        c1381a.d();
    }

    @Override // com.sigmob.sdk.videoAd.AbstractC1375b, com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        super.e();
        n().getWindow().addFlags(1024);
        b();
        b(n(), 7, this.f38581h);
        q();
        ah ahVarA = a();
        if (ahVarA == null) {
            return;
        }
        ahVarA.a("start", 0);
        a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
        if (this.f38575A) {
            return;
        }
        A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        u();
    }

    private void q() {
        Context context;
        String str;
        this.f38583j = new g(this.f35956a);
        int iScreenHeightAsIntDips = Dips.screenHeightAsIntDips(this.f35956a);
        int iScreenWidthAsIntDips = Dips.screenWidthAsIntDips(this.f35956a);
        if (this.f38590q) {
            context = this.f35956a;
            str = "sig_new_interstitial_full_layout";
        } else if (iScreenHeightAsIntDips * 0.8f <= 553.0f || iScreenWidthAsIntDips * 0.8f <= 287.0f) {
            context = this.f35956a;
            str = "sig_new_interstitial_small_layout";
        } else {
            context = this.f35956a;
            str = "sig_new_interstitial_layout";
        }
        this.f38583j.a(ResourceUtil.getLayoutId(context, str));
        a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        ViewGroup mainAdContainer = this.f38583j.getMainAdContainer();
        this.f38589p = this.f38580g.getNewInterstitialSetting();
        ViewGroup viewGroupM = m();
        if (viewGroupM == null) {
            return;
        }
        viewGroupM.addView(this.f38583j, new ViewGroup.LayoutParams(-1, -1));
        a(mainAdContainer);
        w();
        t();
        a(this.f38583j.getCTAButton(), com.sigmob.sdk.base.a.AD);
        if (this.f38589p == null) {
            return;
        }
        viewGroupM.postDelayed(new Runnable() { // from class: com.sigmob.sdk.newInterstitial.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f38616b.v();
            }
        }, this.f38589p.charge_time.intValue() * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        com.sigmob.sdk.base.utils.d.a(f38574f, this.f38580g);
        a(IntentActions.ACTION_INTERSTITIAL_CLICK);
    }

    private void s() {
        k().a();
    }

    private void t() {
        NewInterstitialHeaderView headerView = this.f38583j.getHeaderView();
        this.f38591r = headerView;
        headerView.showFeedback(this.f38587n != null, this.f38579E);
        this.f38591r.setAdHeaderViewStateListener(new NewInterstitialHeaderView.a() { // from class: com.sigmob.sdk.newInterstitial.i.3
            @Override // com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView.a
            public void a() {
                i.this.v();
                ah ahVarA = i.this.a();
                if (ahVarA == null) {
                    return;
                }
                ahVarA.a("show_close", 0);
            }

            @Override // com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView.a
            public void b() {
                i.this.v();
                ah ahVarA = i.this.a();
                if (ahVarA == null) {
                    return;
                }
                ahVarA.a("show_skip", 0);
            }
        });
        this.f38591r.setSoundClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38619b.d(view);
            }
        });
        this.f38591r.setCloseClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38620b.c(view);
            }
        });
        this.f38591r.setSkipClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38621b.b(view);
            }
        });
        InterstitialSetting interstitialSetting = this.f38589p;
        if (interstitialSetting == null) {
            return;
        }
        this.f38591r.startAdTimer(this.f38589p.show_skip_seconds.intValue(), interstitialSetting.skip_close_ad.booleanValue() || !this.f38580g.hasEndCard());
    }

    private void u() {
        ah ahVarA = a();
        if (v.b(ahVarA)) {
            ahVarA.a("skip", 0);
        }
        F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.f38576B) {
            return;
        }
        this.f38576B = true;
        ah ahVarA = a();
        if (ahVarA == null) {
            return;
        }
        ahVarA.a("charge", 0);
    }

    public ah a() {
        BaseAdUnit baseAdUnit = this.f38580g;
        if (baseAdUnit == null) {
            return null;
        }
        ah sessionManager = baseAdUnit.getSessionManager();
        if (sessionManager != null) {
            return sessionManager;
        }
        c cVar = new c();
        cVar.a(this.f38580g);
        return cVar;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
        if (this.f38575A) {
            return;
        }
        z();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        I();
        C1381a c1381a = this.f38587n;
        if (c1381a != null) {
            c1381a.r();
            this.f38587n = null;
        }
        x();
        E();
        this.f38580g.destroy();
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
    }

    public void p() {
        D();
        F();
    }

    public void b(String str) {
        ah ahVarA = a();
        if (ahVarA == null) {
            return;
        }
        ahVarA.a(str, (int) this.f38587n.getCurrentPositionWhenPlaying());
    }

    public void a(int i2, o.a aVar) {
        this.f38577C = new com.sigmob.sdk.base.utils.o(i2 * 1000, 1000L);
        if (v.b(aVar)) {
            this.f38577C.a(aVar);
        }
        this.f38577C.a();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        s();
    }

    private void a(ViewGroup viewGroup) {
        int templateId = this.f38580g.getTemplateId();
        if (templateId == 6001) {
            C1381a c1381aY = y();
            this.f38587n = c1381aY;
            viewGroup.addView(c1381aY, new ViewGroup.LayoutParams(-1, -1));
            this.f38587n.a();
            return;
        }
        if (templateId != 6002) {
            return;
        }
        ImageView imageView = new ImageView(this.f35956a);
        viewGroup.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        C1258h.a().load(this.f38580g.getMainImage()).into(imageView);
    }

    private void a(Button button, final com.sigmob.sdk.base.a aVar) {
        button.setText(this.f38580g.getCTAText());
        button.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.newInterstitial.i.2

            /* renamed from: c, reason: collision with root package name */
            private MotionEvent f38603c;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) throws UnsupportedEncodingException {
                String coordinate;
                if (motionEvent.getAction() == 0) {
                    this.f38603c = motionEvent;
                } else if (motionEvent.getAction() == 1) {
                    SigMacroCommon macroCommon = i.this.f38580g.getMacroCommon();
                    if (macroCommon != null) {
                        macroCommon.updateClickMarco(this.f38603c, motionEvent, false);
                        coordinate = macroCommon.getCoordinate();
                    } else {
                        coordinate = "";
                    }
                    i.this.f38580g.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                    i.this.f38580g.getClickCommon().click_scene = aVar == com.sigmob.sdk.base.a.AD ? "ad" : "endcard";
                    i.this.f38580g.getClickCommon().is_final_click = i.this.f38580g.noHasDownloadDialog();
                    i.this.f38580g.getAdConfig().a(aVar, coordinate, true);
                }
                return false;
            }
        });
        this.f38580g.getAdConfig().a(new ac() { // from class: com.sigmob.sdk.newInterstitial.m
            @Override // com.sigmob.sdk.base.common.ac
            public final void onAdClick(boolean z2, com.sigmob.sdk.base.a aVar2) {
                this.f38618b.a(z2, aVar2);
            }
        });
    }

    private void a(SigAdPrivacyInfoView sigAdPrivacyInfoView, final com.sigmob.sdk.base.a aVar) {
        if (sigAdPrivacyInfoView == null) {
            return;
        }
        sigAdPrivacyInfoView.a(this.f38580g.getAd_source_logo(), v.b(this.f38580g.getadPrivacy()));
        sigAdPrivacyInfoView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.newInterstitial.i.4

            /* renamed from: c, reason: collision with root package name */
            private MotionEvent f38607c;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) throws UnsupportedEncodingException {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f38607c = motionEvent;
                } else if (action == 1) {
                    SigMacroCommon macroCommon = i.this.f38580g.getMacroCommon();
                    if (v.b(macroCommon)) {
                        macroCommon.updateClickMarco(this.f38607c, motionEvent, false);
                    }
                    i.this.a(aVar);
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2, com.sigmob.sdk.base.a aVar) {
        if (this.f38580g.getClickCommon().is_final_click) {
            r();
        }
        ah ahVarA = a();
        if (ahVarA == null) {
            return;
        }
        ahVarA.a("click", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(final com.sigmob.sdk.base.a aVar) {
        try {
            Activity activityN = n();
            if (this.f38599z == null && activityN != null) {
                DialogC1305q dialogC1305q = new DialogC1305q(n(), this.f38580g);
                this.f38599z = dialogC1305q;
                dialogC1305q.a(new DialogC1305q.b() { // from class: com.sigmob.sdk.newInterstitial.i.5
                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void a() {
                        i.this.z();
                        i.this.x();
                        i.this.f38575A = false;
                        ah ahVarA = i.this.a();
                        if (ahVarA == null) {
                            return;
                        }
                        ahVarA.a(C1244a.f35679g, 0);
                    }

                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void b() {
                        i.this.A();
                        ah ahVarA = i.this.a();
                        if (ahVarA == null) {
                            return;
                        }
                        ahVarA.a(C1244a.f35678f, 0);
                    }

                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void a(Error error) {
                    }

                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void a(String str, String str2) throws UnsupportedEncodingException {
                        if (i.this.f38580g == null) {
                            return;
                        }
                        i.this.f38580g.getClickCommon().is_final_click = true;
                        i.this.f38580g.getAdConfig().a(aVar, str, str2, true);
                    }
                });
            }
            DialogC1305q dialogC1305q2 = this.f38599z;
            if (dialogC1305q2 == null || !dialogC1305q2.a() || this.f38575A) {
                return false;
            }
            this.f38580g.getClickCommon().click_area = "appinfo";
            this.f38580g.getClickCommon().click_scene = aVar == com.sigmob.sdk.base.a.AD ? "ad" : "endcard";
            this.f38580g.getClickCommon().is_final_click = false;
            ah ahVarA = a();
            if (v.b(ahVarA)) {
                ahVarA.a("click", 0);
            }
            this.f38599z.show();
            this.f38575A = true;
            return true;
        } catch (Exception e2) {
            SigmobLog.e("openFourElements fail:" + e2.getMessage());
            return false;
        }
    }
}
