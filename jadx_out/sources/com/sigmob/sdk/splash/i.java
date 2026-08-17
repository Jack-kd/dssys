package com.sigmob.sdk.splash;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.base.common.an;
import com.sigmob.sdk.base.common.ao;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.views.C1297i;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.base.views.aa;
import com.sigmob.sdk.base.views.ac;
import com.sigmob.sdk.base.views.ag;
import com.sigmob.sdk.base.views.ai;
import com.sigmob.sdk.base.views.ak;
import com.sigmob.sdk.base.views.ap;
import com.sigmob.sdk.base.views.aq;
import com.sigmob.sdk.base.views.aw;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdError;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* loaded from: classes4.dex */
public final class i extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final String f38670a = "i";

    /* renamed from: b, reason: collision with root package name */
    private static float f38671b = 25.0f;

    /* renamed from: c, reason: collision with root package name */
    private final RelativeLayout f38672c;

    /* renamed from: d, reason: collision with root package name */
    private C1372b f38673d;

    /* renamed from: e, reason: collision with root package name */
    private final Context f38674e;

    /* renamed from: f, reason: collision with root package name */
    private BaseAdUnit f38675f;

    /* renamed from: g, reason: collision with root package name */
    private C1371a f38676g;

    /* renamed from: h, reason: collision with root package name */
    private RelativeLayout f38677h;

    /* renamed from: i, reason: collision with root package name */
    private View.OnTouchListener f38678i;

    /* renamed from: j, reason: collision with root package name */
    private volatile boolean f38679j;

    /* renamed from: k, reason: collision with root package name */
    private volatile boolean f38680k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f38681l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f38682m;

    /* renamed from: n, reason: collision with root package name */
    private ag f38683n;

    /* renamed from: o, reason: collision with root package name */
    private am.a f38684o;

    /* renamed from: p, reason: collision with root package name */
    private com.sigmob.sdk.base.views.v f38685p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f38686q;

    /* renamed from: r, reason: collision with root package name */
    private float f38687r;

    /* renamed from: s, reason: collision with root package name */
    private a f38688s;

    /* renamed from: com.sigmob.sdk.splash.i$2, reason: invalid class name */
    public class AnonymousClass2 implements am.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ aw f38695a;

        public AnonymousClass2(aw awVar) {
            this.f38695a = awVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i.this.g();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || i.this.f38675f == null || i.this.f38679j) {
                return;
            }
            i.this.f38679j = true;
            Number number = map.get("turn_x");
            Number number2 = map.get("turn_y");
            Number number3 = map.get("turn_z");
            Number number4 = map.get("turn_time");
            ClickCommon clickCommon = i.this.f38675f.getClickCommon();
            if (number != null) {
                clickCommon.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.turn_z = String.valueOf(number3.intValue());
            }
            clickCommon.turn_time = String.valueOf(number4);
            clickCommon.sld = "5";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            this.f38695a.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38721b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.splash.i$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38697a;

        static {
            int[] iArr = new int[an.values().length];
            f38697a = iArr;
            try {
                iArr[an.FOLLOW_PACKAGE_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38697a[an.IGNORE_ABOUT_SCHEME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38697a[an.MINI_PROGRAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38697a[an.FOLLOW_DEEP_LINK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38697a[an.MARKET_SCHEME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38697a[an.DOWNLOAD_APK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38697a[an.OPEN_WITH_BROWSER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38697a[an.NOOP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: com.sigmob.sdk.splash.i$5, reason: invalid class name */
    public class AnonymousClass5 implements ao.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f38700a;

        public AnonymousClass5(BaseAdUnit baseAdUnit) {
            this.f38700a = baseAdUnit;
        }

        @Override // com.sigmob.sdk.base.common.ao.b
        public void a(final String str, an anVar) {
            SigmobLog.i("urlHandlingSucceeded: " + anVar.name() + " url: " + str);
            if (i.this.f38675f == null) {
                SigmobLog.e("adUnit is null");
                return;
            }
            ClickCommon clickCommon = i.this.f38675f.getClickCommon();
            clickCommon.is_final_click = true;
            if (!this.f38700a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f38700a, anVar.name(), str);
            }
            i.this.h();
            int i2 = AnonymousClass3.f38697a[anVar.ordinal()];
            if (i2 == 3) {
                String str2 = i.f38670a;
                anVar.toString();
                com.sigmob.sdk.manager.b.b(this.f38700a, C1244a.f35655G, str);
            } else if (i2 == 5) {
                AndroidMarket androidMarket = i.this.f38675f.getAndroidMarket();
                if (androidMarket != null) {
                    ad.a(PointCategory.APK_CLICK, ((Integer) Wire.get(androidMarket.type, 0)).intValue() == 0 ? "market" : "mimarket", i.this.f38675f, (ad.a) null);
                    if (com.sigmob.sdk.base.utils.s.b(androidMarket.app_package_name)) {
                        try {
                            FileUtil.writeToCache(i.this.f38675f, com.sigmob.sdk.base.utils.n.a((Object) androidMarket.app_package_name).getAbsolutePath());
                        } catch (Throwable th) {
                            SigmobLog.e("write ad info with package error " + th.getMessage());
                        }
                    }
                }
                ad.a(PointCategory.OPEN_MARKET, (String) null, i.this.f38675f, new ad.a() { // from class: com.sigmob.sdk.splash.y
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f38724a.b(str, obj);
                    }
                });
            } else if (i2 == 6) {
                if (i.this.f38676g.j()) {
                    clickCommon.is_final_click = false;
                } else {
                    i.this.a(true);
                    i.this.f38676g.f(str);
                    i.this.f38680k = true;
                }
            }
            ah sessionManager = this.f38700a.getSessionManager();
            if (sessionManager == null) {
                return;
            }
            sessionManager.a("click", 0);
        }

        @Override // com.sigmob.sdk.base.common.ao.b
        public void b(final String str, an anVar) {
            SigmobLog.i("urlHandlingFailed: " + anVar.name() + " url: " + str);
            if (i.this.f38675f == null) {
                return;
            }
            ClickCommon clickCommon = i.this.f38675f.getClickCommon();
            clickCommon.is_final_click = true;
            int i2 = AnonymousClass3.f38697a[anVar.ordinal()];
            if (i2 == 3 || i2 == 4) {
                String str2 = i.f38670a;
                anVar.toString();
                com.sigmob.sdk.manager.b.b(this.f38700a, C1244a.f35656H, str);
            } else {
                if (i2 == 5) {
                    ad.a(PointCategory.OPEN_MARKET_FAILED, (String) null, i.this.f38675f, new ad.a() { // from class: com.sigmob.sdk.splash.x
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            this.f38722a.a(str, obj);
                        }
                    });
                    return;
                }
                if (i2 != 8) {
                    return;
                }
                if (!this.f38700a.getAd().forbiden_parse_landingpage.booleanValue()) {
                    ad.a(this.f38700a, anVar.name(), str);
                }
                clickCommon.is_final_click = true;
                ah sessionManager = this.f38700a.getSessionManager();
                if (sessionManager != null) {
                    sessionManager.a("click", 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", i.this.f38675f.getAndroidMarket().app_package_name);
                options.put("store_package_name", i.this.f38675f.getAndroidMarket().appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", i.this.f38675f.getAndroidMarket().app_package_name);
                options.put("store_package_name", i.this.f38675f.getAndroidMarket().appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }
    }

    /* renamed from: com.sigmob.sdk.splash.i$6, reason: invalid class name */
    public class AnonymousClass6 implements am.c {
        public AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i.this.g();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || i.this.f38675f == null || i.this.f38679j) {
                return;
            }
            i.this.f38679j = true;
            Number number = map.get("x_max_acc");
            Number number2 = map.get("y_max_acc");
            Number number3 = map.get("z_max_acc");
            ClickCommon clickCommon = i.this.f38675f.getClickCommon();
            clickCommon.sld = "2";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            i.this.f38685p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38726b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.splash.i$7, reason: invalid class name */
    public class AnonymousClass7 implements am.c {
        public AnonymousClass7() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i.this.g();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
            if (i.this.f38685p instanceof com.sigmob.sdk.base.views.am) {
                ((com.sigmob.sdk.base.views.am) i.this.f38685p).a(f2);
            }
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || i.this.f38675f == null || i.this.f38679j) {
                return;
            }
            i.this.f38679j = true;
            Number number = map.get("turn_x");
            Number number2 = map.get("turn_y");
            Number number3 = map.get("turn_z");
            Number number4 = map.get("turn_time");
            ClickCommon clickCommon = i.this.f38675f.getClickCommon();
            if (number != null) {
                clickCommon.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.turn_z = String.valueOf(number3.intValue());
            }
            clickCommon.turn_time = String.valueOf(number4);
            clickCommon.sld = "5";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            i.this.f38685p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.A
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38637b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.splash.i$9, reason: invalid class name */
    public class AnonymousClass9 implements am.c {
        public AnonymousClass9() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            i.this.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (i.this.f38685p instanceof ap) {
                ((ap) i.this.f38685p).a(0.0f);
            }
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
            if (i.this.f38685p instanceof ap) {
                ((ap) i.this.f38685p).a(f2);
            }
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || i.this.f38675f == null || i.this.f38679j) {
                return;
            }
            i.this.f38679j = true;
            Number number = map.get("x_max_acc");
            Number number2 = map.get("y_max_acc");
            Number number3 = map.get("z_max_acc");
            ClickCommon clickCommon = i.this.f38675f.getClickCommon();
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            clickCommon.sld = "2";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            i.this.f38685p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.B
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38638b.c();
                }
            }, 400L);
            i.this.f38685p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.C
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38639b.b();
                }
            }, 800L);
        }
    }

    public interface a {
        void onWindowVisibilityChanged(int i2);
    }

    public i(Context context) {
        super(context);
        Context applicationContext = context.getApplicationContext();
        this.f38674e = applicationContext;
        RelativeLayout relativeLayout = new RelativeLayout(applicationContext);
        this.f38672c = relativeLayout;
        addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        SigmobLog.d("handleClick");
        if (this.f38675f == null) {
            SigmobLog.e("adUnit is null");
            return;
        }
        this.f38679j = true;
        if (com.sigmob.sdk.b.i() == null) {
            com.sigmob.sdk.b.a(com.sigmob.sdk.base.utils.w.c(this));
        }
        a(this.f38675f);
    }

    private void i() {
        Context context = getContext();
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, context);
        Dips.dipsToIntPixels(75.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(25.0f, context);
        TextView textView = new TextView(context);
        textView.setText("互动广告");
        textView.setTextSize(2, 12.0f);
        textView.setTextColor(Color.parseColor("#ccffffff"));
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iDipsToIntPixels2);
        layoutParams.addRule(0, this.f38683n.getId());
        layoutParams.addRule(6, this.f38683n.getId());
        layoutParams.setMargins(0, 0, iDipsToIntPixels, 0);
        addView(textView, layoutParams);
    }

    private void j() {
        Context context = getContext();
        this.f38685p = new ac(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f38675f.getClickType() == 1) {
            this.f38685p.setOnTouchListener(this.f38678i);
        }
        am.a aVar = new am.a(context, new AnonymousClass6(), am.d.SHAKE);
        this.f38684o = aVar;
        aVar.a(SensorEntity.format(this.f38675f));
        this.f38684o.a();
        addView(this.f38685p, layoutParams);
    }

    private void k() {
        Context context = getContext();
        this.f38685p = new com.sigmob.sdk.base.views.am(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(92.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f38675f.getClickType() == 1) {
            this.f38685p.setOnTouchListener(this.f38678i);
        }
        am.a aVar = new am.a(context, new AnonymousClass7(), am.d.SLOPE);
        this.f38684o = aVar;
        aVar.a(SensorEntity.format(this.f38675f));
        this.f38684o.a();
        addView(this.f38685p, layoutParams);
    }

    private void l() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.splash.i.8
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Context context;
                i.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (i.this.f38675f == null || (context = i.this.getContext()) == null) {
                    return;
                }
                i.this.getLocationOnScreen(new int[2]);
                ClickCommon clickCommon = i.this.f38675f.getClickCommon();
                clickCommon.adarea_x = String.valueOf(Dips.pixelsToIntDips(r1[0], context));
                clickCommon.adarea_y = String.valueOf(Dips.pixelsToIntDips(r1[1], context));
                clickCommon.adarea_w = String.valueOf(Dips.pixelsToIntDips(i.this.getWidth(), context));
                clickCommon.adarea_h = String.valueOf(Dips.pixelsToIntDips(i.this.getHeight(), context));
            }
        });
    }

    private void m() {
        Context context = getContext();
        this.f38685p = new ap(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f38675f.getClickType() == 1) {
            this.f38685p.setOnTouchListener(this.f38678i);
        }
        am.a aVar = new am.a(context, new AnonymousClass9(), am.d.SWING);
        this.f38684o = aVar;
        aVar.a(SensorEntity.format(this.f38675f));
        this.f38684o.a();
        addView(this.f38685p, layoutParams);
    }

    private void n() {
        Context context = getContext();
        View akVar = new ak(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        if (this.f38675f.getClickType() == 1) {
            akVar.setOnTouchListener(this.f38678i);
        }
        int sensitivity = this.f38675f.getSensitivity();
        final int iDipsToIntPixels2 = Dips.dipsToIntPixels(sensitivity == 10 ? 0 : (sensitivity <= 0 || sensitivity >= 10) ? 50 : (11 - sensitivity) * 10, com.sigmob.sdk.b.e());
        this.f38677h.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.i.10

            /* renamed from: c, reason: collision with root package name */
            private MotionEvent f38692c;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) throws UnsupportedEncodingException {
                if (i.this.f38675f == null) {
                    return false;
                }
                if (motionEvent.getAction() == 0) {
                    this.f38692c = MotionEvent.obtain(motionEvent);
                    i.this.f38679j = false;
                } else {
                    if ((motionEvent.getAction() != 2 && motionEvent.getAction() != 1) || i.this.f38679j) {
                        return true;
                    }
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    if (((float) Math.sqrt(Math.pow(Math.abs(x2 - this.f38692c.getX()), 2.0d) + Math.pow(Math.abs(y2 - this.f38692c.getY()), 2.0d))) >= iDipsToIntPixels2) {
                        i.this.f38679j = true;
                        SigMacroCommon macroCommon = i.this.f38675f.getMacroCommon();
                        if (macroCommon != null) {
                            macroCommon.updateClickMarco(this.f38692c, motionEvent, false);
                        }
                        i.this.g();
                    }
                }
                return true;
            }
        });
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels3);
        addView(akVar, layoutParams);
    }

    private void o() {
        Context context = getContext();
        aa aaVar = new aa(context);
        aaVar.setButtonColor(this.f38675f.getButtonColor());
        aaVar.a(this.f38675f.getDesc(), null);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        aaVar.setOnTouchListener(this.f38678i);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(100.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        addView(aaVar, layoutParams);
    }

    private void p() {
        Context context = getContext();
        ai aiVar = new ai(context);
        String title = this.f38675f.getTitle();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) title)) {
            title = "点击查看详情";
        }
        aiVar.a(title, this.f38675f.getDesc());
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(40.0f, context);
        aiVar.setOnTouchListener(this.f38678i);
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(100.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(iDipsToIntPixels2, 0, iDipsToIntPixels2, iDipsToIntPixels3);
        addView(aiVar, layoutParams);
    }

    private void q() {
        Context context = getContext();
        View c1297i = new C1297i(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(183.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(40.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        addView(c1297i, layoutParams);
        c1297i.setOnTouchListener(this.f38678i);
        String title = this.f38675f.getTitle();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) title)) {
            title = "点击前往";
        }
        aq aqVar = new aq(context);
        aqVar.setTitle(title);
        aqVar.setDescription(this.f38675f.getDesc());
        aqVar.setOnTouchListener(this.f38678i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        layoutParams2.setMargins(0, 0, 0, iDipsToIntPixels2);
        addView(aqVar, layoutParams2);
    }

    private void r() {
        Context context = getContext();
        g gVar = new g(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, context);
        boolean z2 = this.f38675f.getadPrivacy() != null;
        if (z2) {
            gVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.i.11

                /* renamed from: b, reason: collision with root package name */
                private MotionEvent f38694b;

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (i.this.f38675f == null) {
                        return false;
                    }
                    if (motionEvent.getAction() == 0) {
                        this.f38694b = MotionEvent.obtain(motionEvent);
                    } else if (motionEvent.getAction() == 1) {
                        ClickCommon clickCommon = i.this.f38675f.getClickCommon();
                        clickCommon.click_area = "appinfo";
                        clickCommon.click_scene = "ad";
                        com.sigmob.sdk.base.utils.d.a(i.f38670a, i.this.f38675f);
                        if (this.f38694b == null) {
                            this.f38694b = motionEvent;
                        }
                        try {
                            i.this.f38675f.getMacroCommon().updateClickMarco(this.f38694b, motionEvent, false);
                        } catch (Throwable th) {
                            SigmobLog.e("splash click macro set " + th.getMessage());
                        }
                        i.this.f38676g.i();
                    }
                    return true;
                }
            });
        }
        gVar.a(this.f38675f.getAd_source_logo(), z2);
        gVar.setAlpha(0.5f);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(5.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(iDipsToIntPixels2, 0, iDipsToIntPixels2, iDipsToIntPixels2);
        addView(gVar, layoutParams);
    }

    private void s() {
        Context context = getContext();
        aw awVar = new aw(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f38675f.getClickType() == 1) {
            awVar.setOnTouchListener(this.f38678i);
        }
        am.a aVar = new am.a(context, new AnonymousClass2(awVar), am.d.WRING);
        this.f38684o = aVar;
        aVar.a(SensorEntity.format(this.f38675f));
        this.f38684o.a();
        addView(awVar, layoutParams);
    }

    public void d() {
        this.f38679j = false;
        am.a aVar = this.f38684o;
        if (aVar != null) {
            aVar.b();
        }
        this.f38673d.b();
    }

    public void e() {
        am.a aVar = this.f38684o;
        if (aVar != null) {
            aVar.a();
        }
        com.sigmob.sdk.base.views.v vVar = this.f38685p;
        if (vVar != null) {
            vVar.a();
        }
        this.f38673d.c();
    }

    public int getDuration() {
        return this.f38673d.getDuration();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f38675f == null) {
            SigmobLog.e("adUnit is null");
        } else {
            if (this.f38676g == null) {
                return;
            }
            this.f38676g.a(com.sigmob.sdk.base.utils.w.c(this), this.f38675f, new DialogC1305q.b() { // from class: com.sigmob.sdk.splash.i.1
                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a() {
                    SigmobLog.d(i.f38670a + "#onCloseClick");
                    i.this.f38681l = false;
                    i.this.f38679j = false;
                    if (i.this.f38682m) {
                        i.this.a(true);
                    } else if (i.this.f38684o != null) {
                        i.this.f38684o.a();
                    }
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void b() {
                    SigmobLog.d(i.f38670a + "#onShowSuccess");
                    if (i.this.f38684o != null) {
                        i.this.f38684o.b();
                    }
                    i.this.f38681l = true;
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a(Error error) {
                }

                @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                public void a(String str, String str2) {
                    SigmobLog.d(i.f38670a + "#onCloseClick");
                    if (i.this.f38675f == null) {
                        return;
                    }
                    ClickCommon clickCommon = i.this.f38675f.getClickCommon();
                    clickCommon.click_scene = "appinfo";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                    clickCommon.is_final_click = true;
                    i.this.h();
                    i.this.f38680k = true;
                    ah sessionManager = i.this.f38675f.getSessionManager();
                    if (sessionManager == null) {
                        return;
                    }
                    sessionManager.a("click", 0);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        am.a aVar = this.f38684o;
        if (aVar != null) {
            aVar.c();
        }
        com.sigmob.sdk.base.views.v vVar = this.f38685p;
        if (vVar != null) {
            vVar.b();
        }
        removeAllViews();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        com.sigmob.sdk.base.utils.k.c(f38670a, "onWindowFocusChanged: hasWindowFocus = " + z2, new Object[0]);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        com.sigmob.sdk.base.utils.k.c(f38670a, "onWindowVisibilityChanged: visibility = " + i2, new Object[0]);
        if (com.sigmob.sdk.base.utils.v.b(this.f38688s)) {
            this.f38688s.onWindowVisibilityChanged(i2);
        }
    }

    public void setAspectRatio(float f2) {
        this.f38687r = f2;
    }

    public void setDuration(int i2) {
        if (this.f38675f == null) {
            return;
        }
        if (i2 > 0 && com.sigmob.sdk.base.utils.v.b(this.f38683n)) {
            this.f38683n.a(i2);
            return;
        }
        this.f38682m = true;
        ad.a("complete", (String) null, this.f38675f, (ad.a) null);
        if (com.sigmob.sdk.base.utils.v.b(Boolean.valueOf(this.f38681l)) || this.f38686q) {
            a(true);
        }
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        C1372b c1372b = this.f38673d;
        if (c1372b == null) {
            return;
        }
        c1372b.setOnTouchListener(onTouchListener);
    }

    public void setViewStatusListener(a aVar) {
        this.f38688s = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 == 0) {
            this.f38683n.setVisibility(0);
            this.f38673d.a();
            if (com.sigmob.sdk.base.utils.v.b(this.f38675f)) {
                ah sessionManager = this.f38675f.getSessionManager();
                if (com.sigmob.sdk.base.utils.v.b(sessionManager)) {
                    sessionManager.a("start", 0);
                }
            }
            super.setVisibility(i2);
            return;
        }
        try {
            ad.a(PointCategory.SPLASHADBLOCK, WindAdError.ERROR_SPLASH_ADBLOCK.getErrorCode(), Preconditions.NoThrow.getLineInfo(), this.f38675f, (ad.a) null);
            SigmobLog.e("debug " + Preconditions.NoThrow.getLineInfo());
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        BaseAdUnit baseAdUnit = this.f38675f;
        if (baseAdUnit == null) {
            return;
        }
        com.sigmob.sdk.base.utils.d.a(f38670a, baseAdUnit);
        BaseBroadcastReceiver.a(this.f38674e, this.f38675f.getUuid(), IntentActions.ACTION_INTERSTITIAL_CLICK);
    }

    public void a() {
        super.setVisibility(8);
        C1372b c1372b = this.f38673d;
        if (c1372b != null) {
            c1372b.setVisibility(8);
        }
    }

    public boolean c() {
        BaseAdUnit baseAdUnit = this.f38675f;
        if (baseAdUnit != null && baseAdUnit.getSplashFilePath() != null) {
            return this.f38673d.a(this.f38675f);
        }
        SigmobLog.e("adUnit or splashFilePath is null");
        return false;
    }

    public boolean f() {
        return this.f38680k;
    }

    private void a(Activity activity) {
        Context context = getContext();
        C1383c.c(activity);
        C1383c.f(activity);
        int iDipsToIntPixels = Dips.dipsToIntPixels(12.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(68.0f, context);
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(25.0f, context);
        ag agVar = new ag(context);
        this.f38683n = agVar;
        agVar.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels2, iDipsToIntPixels3);
        layoutParams.addRule(11);
        this.f38683n.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.splash.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38720b.a(view);
            }
        });
        layoutParams.setMargins(0, iDipsToIntPixels * 3, iDipsToIntPixels, 0);
        addView(this.f38683n, layoutParams);
    }

    public void b() {
        super.setVisibility(4);
    }

    private void a(Context context) {
        C1372b c1372bA = C1372b.a(context, this.f38675f);
        this.f38673d = c1372bA;
        if (c1372bA == null) {
            return;
        }
        c1372bA.setAspectRatio(this.f38687r);
        this.f38672c.addView(this.f38673d, new RelativeLayout.LayoutParams(-1, -1));
        this.f38677h = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        int iDipsToIntPixels = Dips.dipsToIntPixels(f38671b, this.f38674e);
        layoutParams.setMargins(iDipsToIntPixels, (int) (iDipsToIntPixels * 2.5d), iDipsToIntPixels, iDipsToIntPixels);
        this.f38677h.setClickable(true);
        this.f38677h.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.u
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return i.a(view, motionEvent);
            }
        });
        this.f38672c.addView(this.f38677h, layoutParams);
        this.f38678i = new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.i.4

            /* renamed from: b, reason: collision with root package name */
            private MotionEvent f38699b;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (i.this.f38675f == null) {
                    SigmobLog.e("adUnit is null");
                    return false;
                }
                if (motionEvent.getAction() == 0) {
                    this.f38699b = MotionEvent.obtain(motionEvent);
                } else if (motionEvent.getAction() == 1) {
                    if (this.f38699b == null) {
                        this.f38699b = motionEvent;
                    }
                    try {
                        ClickCommon clickCommon = i.this.f38675f.getClickCommon();
                        clickCommon.sld = "0";
                        clickCommon.click_area = ClickCommon.CLICK_AREA_COMPANION;
                        clickCommon.click_scene = "ad";
                        i.this.f38675f.getMacroCommon().updateClickMarco(this.f38699b, motionEvent, false);
                    } catch (Throwable th) {
                        SigmobLog.e("splash click macro set " + th.getMessage());
                    }
                    i.this.g();
                }
                return true;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f38686q = true;
        BaseAdUnit baseAdUnit = this.f38675f;
        if (baseAdUnit == null) {
            return;
        }
        ah sessionManager = baseAdUnit.getSessionManager();
        if (sessionManager != null) {
            sessionManager.a("skip", 0);
        }
        BaseBroadcastReceiver.a(this.f38674e, this.f38675f.getUuid(), IntentActions.ACTION_SPLAH_SKIP);
    }

    private void a(BaseAdUnit baseAdUnit) {
        SigmobLog.d("handleUrlAction");
        if (baseAdUnit == null) {
            SigmobLog.e("adUnit is null");
        } else {
            new ao.a().a(an.IGNORE_ABOUT_SCHEME, an.DOWNLOAD_APK, an.MARKET_SCHEME, an.OPEN_WITH_BROWSER, an.FOLLOW_PACKAGE_NAME, an.FOLLOW_DEEP_LINK, an.MINI_PROGRAM).a(new AnonymousClass5(baseAdUnit)).a(baseAdUnit.isSkipSigmobBrowser()).a(baseAdUnit).b(baseAdUnit.getAd().forbiden_parse_landingpage.booleanValue()).a().a(com.sigmob.sdk.b.e(), null);
        }
    }

    private void a(String str, String str2) {
        Context context = getContext();
        aq aqVar = new aq(context);
        aqVar.setTitle(str);
        aqVar.setDescription(str2);
        int iDipsToIntPixels = Dips.dipsToIntPixels(82.0f, context);
        if (this.f38675f.getClickType() == 1) {
            aqVar.setOnTouchListener(this.f38678i);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels);
        addView(aqVar, layoutParams);
    }

    public void a(boolean z2) {
        if (z2 && com.sigmob.sdk.base.utils.v.b(this.f38675f)) {
            BaseBroadcastReceiver.a(this.f38674e, this.f38675f.getUuid(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
            this.f38683n.setOnClickListener(null);
            C1258h.b(this.f38675f);
            this.f38675f = null;
        }
        am.a aVar = this.f38684o;
        if (aVar != null) {
            aVar.c();
            this.f38684o = null;
        }
        com.sigmob.sdk.base.views.v vVar = this.f38685p;
        if (vVar != null) {
            vVar.b();
        }
        this.f38673d.setOnTouchListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f3 A[Catch: all -> 0x0046, TryCatch #0 {all -> 0x0046, blocks: (B:3:0x0001, B:6:0x0031, B:10:0x0049, B:39:0x00ef, B:41:0x00f3, B:42:0x00f6, B:11:0x0054, B:12:0x005f, B:13:0x006a, B:17:0x0087, B:18:0x008b, B:19:0x008f, B:23:0x00a2, B:24:0x00a7, B:28:0x00ba, B:29:0x00bf, B:33:0x00d2, B:34:0x00d7, B:38:0x00ea), top: B:47:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.sigmob.sdk.base.models.BaseAdUnit r6, android.app.Activity r7) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.splash.i.a(com.sigmob.sdk.base.models.BaseAdUnit, android.app.Activity):boolean");
    }
}
