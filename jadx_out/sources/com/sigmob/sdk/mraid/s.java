package com.sigmob.sdk.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1282v;
import com.sigmob.sdk.base.common.InterfaceC1264k;
import com.sigmob.sdk.base.common.ac;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.base.views.ar;
import com.sigmob.sdk.mraid.C1310b;
import com.sigmob.sdk.mraid.C1316h;
import com.sigmob.sdk.mraid.z;
import com.sigmob.sdk.nativead.DialogC1346b;
import com.sigmob.sdk.videoAd.AbstractC1375b;
import com.sigmob.sdk.videoAd.C1374a;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.natives.WindNativeAdData;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class s extends AbstractC1375b implements ac {

    /* renamed from: f, reason: collision with root package name */
    public static final String f38009f = "s";

    /* renamed from: g, reason: collision with root package name */
    protected C1282v f38010g;

    /* renamed from: h, reason: collision with root package name */
    private final Bundle f38011h;

    /* renamed from: i, reason: collision with root package name */
    private int f38012i;

    /* renamed from: j, reason: collision with root package name */
    private final C1374a f38013j;

    /* renamed from: k, reason: collision with root package name */
    private int f38014k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f38015l;

    /* renamed from: m, reason: collision with root package name */
    private final BaseAdUnit f38016m;

    /* renamed from: n, reason: collision with root package name */
    private C1316h f38017n;

    /* renamed from: o, reason: collision with root package name */
    private x f38018o;

    /* renamed from: p, reason: collision with root package name */
    private ar f38019p;

    /* renamed from: q, reason: collision with root package name */
    private int f38020q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f38021r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f38022s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f38023t;

    /* renamed from: u, reason: collision with root package name */
    private DialogC1305q f38024u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f38025v;

    /* renamed from: w, reason: collision with root package name */
    private DialogC1346b f38026w;

    /* renamed from: x, reason: collision with root package name */
    private com.sigmob.sdk.base.views.w f38027x;

    /* renamed from: y, reason: collision with root package name */
    private JSONObject f38028y;

    /* renamed from: z, reason: collision with root package name */
    private final View.OnClickListener f38029z;

    /* renamed from: com.sigmob.sdk.mraid.s$3, reason: invalid class name */
    public class AnonymousClass3 implements C1316h.a {
        public AnonymousClass3() {
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void b() {
            s.this.b("show_skip");
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void c() {
            Activity activityN = s.this.n();
            if (activityN == null || s.this.f38016m == null) {
                return;
            }
            s sVar = s.this;
            if (sVar.a(sVar.f38026w)) {
                return;
            }
            s.this.f38026w = new DialogC1346b(activityN, s.this.f38016m);
            s.this.f38026w.a();
            s.this.f38026w.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid.s.3.1
                @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                public void onCancel() {
                    s.this.c("feedbackDidDisappear");
                    s.this.s();
                }

                @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                public void onSelected(int i2, String str, boolean z2) {
                    s.this.c("feedbackDidDisappear");
                    s.this.s();
                }

                @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                public void onShow() {
                    s.this.c("feedbackDidAppear");
                }
            });
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void d() {
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void e() {
            SigmobLog.d("MraidActivity failed to load. Finishing the activity");
            if (((AbstractC1262j) s.this).f35957b != null) {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((AbstractC1262j) s.this).f35959d.a();
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void f() {
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void g() {
            if (s.this.f38024u == null) {
                s.this.f38024u = new DialogC1305q(s.this.n(), s.this.f38016m);
                s.this.f38024u.a(new DialogC1305q.b() { // from class: com.sigmob.sdk.mraid.s.3.2
                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void a() {
                        s.this.p();
                        C1282v c1282v = s.this.f38010g;
                        if (c1282v != null) {
                            c1282v.a(C1244a.f35679g, 0);
                        }
                        s.this.c("fourElementsDidDisappear");
                    }

                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void b() {
                        C1282v c1282v = s.this.f38010g;
                        if (c1282v != null) {
                            c1282v.a(C1244a.f35678f, 0);
                        }
                        s.this.c("fourElementsDidAppear");
                    }

                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void a(Error error) {
                    }

                    @Override // com.sigmob.sdk.base.views.DialogC1305q.b
                    public void a(String str, String str2) throws UnsupportedEncodingException {
                        if (s.this.f38013j == null) {
                            return;
                        }
                        s.this.f38013j.a(com.sigmob.sdk.base.a.ENDCARD, str, str2, true);
                    }
                });
            }
            if (s.this.f38024u == null || !s.this.f38024u.a() || s.this.f38025v) {
                return;
            }
            s.this.f38024u.show();
            s.this.f38025v = true;
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void h() {
            s.this.f38017n.a(new ValueCallback() { // from class: com.sigmob.sdk.mraid.N
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) throws NumberFormatException {
                    this.f37859a.b((String) obj);
                }
            });
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
            s.this.f38022s = true;
            ((AbstractC1262j) s.this).f35959d.a();
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a() {
            s.this.b("show");
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void b(float f2) {
            if (s.this.f38021r) {
                return;
            }
            s.this.f38021r = true;
            s.this.b("skip");
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_SKIP);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) throws NumberFormatException {
            if (C1311c.a(str) == null || s.this.f38010g == null) {
                return;
            }
            float f2 = Float.parseFloat(str);
            if (f2 < 0.999f && !s.this.f38021r) {
                s.this.f38021r = true;
                s.this.b("skip");
            }
            if (s.this.f38015l || s.this.f38016m.getAd_type() == 4 || f2 <= s.this.f38016m.getFinishedTime()) {
                return;
            }
            s.this.f38015l = true;
            s sVar = s.this;
            sVar.f38010g.a("reward", sVar.f38017n.f().intValue());
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a(float f2) {
            s.this.f38015l = true;
            s.this.b("reward");
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2) {
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a(View view) {
            s.this.b("start");
            s.this.a(IntentActions.ACTION_INTERSTITIAL_SHOW);
            SigmobLog.d("onLoaded() called");
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a(WindAdError windAdError) {
            SigmobLog.d("Finishing the activity due to a problem: " + windAdError);
            s.this.b("error");
            if (((AbstractC1262j) s.this).f35957b != null) {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((AbstractC1262j) s.this).f35959d.a();
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a(String str) throws UnsupportedEncodingException {
            boolean z2 = true;
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    int iOptInt = jSONObject.optInt("type");
                    if (jSONObject.has("x") && jSONObject.has("y")) {
                        s.this.f38017n.a(String.valueOf(jSONObject.optInt("x")), String.valueOf(jSONObject.optInt("y")));
                    }
                    if (iOptInt != 1) {
                        s.this.f38028y = jSONObject.optJSONObject("log_data");
                    } else {
                        z2 = false;
                    }
                } catch (Exception unused) {
                    s.this.f38017n.a("0", "0");
                }
            }
            s.this.f38013j.a(com.sigmob.sdk.base.a.COMPANION, s.this.f38017n.a(), z2);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008a  */
        @Override // com.sigmob.sdk.mraid.C1316h.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.net.URI r13, int r14, java.lang.String r15) throws java.io.UnsupportedEncodingException {
            /*
                r12 = this;
                java.lang.String r14 = "y"
                java.lang.String r0 = "x"
                boolean r1 = android.text.TextUtils.isEmpty(r15)
                r2 = 1
                r3 = 0
                r4 = 0
                if (r1 != 0) goto L6b
                org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L3f
                r1.<init>(r15)     // Catch: java.lang.Exception -> L3f
                java.lang.String r15 = "type"
                int r15 = r1.optInt(r15)     // Catch: java.lang.Exception -> L3e
                boolean r4 = r1.has(r0)     // Catch: java.lang.Exception -> L3e
                if (r4 == 0) goto L41
                boolean r4 = r1.has(r14)     // Catch: java.lang.Exception -> L3e
                if (r4 == 0) goto L41
                int r0 = r1.optInt(r0)     // Catch: java.lang.Exception -> L3e
                int r14 = r1.optInt(r14)     // Catch: java.lang.Exception -> L3e
                com.sigmob.sdk.mraid.s r4 = com.sigmob.sdk.mraid.s.this     // Catch: java.lang.Exception -> L3e
                com.sigmob.sdk.mraid.h r4 = com.sigmob.sdk.mraid.s.b(r4)     // Catch: java.lang.Exception -> L3e
                java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Exception -> L3e
                java.lang.String r14 = java.lang.String.valueOf(r14)     // Catch: java.lang.Exception -> L3e
                r4.a(r0, r14)     // Catch: java.lang.Exception -> L3e
                goto L41
            L3e:
                r4 = r1
            L3f:
                r0 = r2
                goto L67
            L41:
                java.lang.String r14 = "disable_landing"
                boolean r14 = r1.optBoolean(r14)     // Catch: java.lang.Exception -> L3e
                java.lang.String r0 = "feDisable"
                boolean r0 = r1.optBoolean(r0)     // Catch: java.lang.Exception -> L65
                r0 = r0 ^ r2
                if (r15 == r2) goto L5f
                com.sigmob.sdk.mraid.s r15 = com.sigmob.sdk.mraid.s.this     // Catch: java.lang.Exception -> L5c
                java.lang.String r3 = "log_data"
                org.json.JSONObject r3 = r1.optJSONObject(r3)     // Catch: java.lang.Exception -> L5c
                com.sigmob.sdk.mraid.s.a(r15, r3)     // Catch: java.lang.Exception -> L5c
                goto L60
            L5c:
                r3 = r14
                r4 = r1
                goto L67
            L5f:
                r2 = r3
            L60:
                r3 = r14
                r10 = r0
                r11 = r1
                r9 = r2
                goto L6e
            L65:
                r3 = r14
                goto L3e
            L67:
                r10 = r0
                r9 = r2
            L69:
                r11 = r4
                goto L6e
            L6b:
                r9 = r2
                r10 = r9
                goto L69
            L6e:
                if (r3 == 0) goto L8a
                com.sigmob.sdk.mraid.s r14 = com.sigmob.sdk.mraid.s.this
                com.sigmob.sdk.videoAd.a r5 = com.sigmob.sdk.mraid.s.c(r14)
                com.sigmob.sdk.base.a r6 = com.sigmob.sdk.base.a.ENDCARD
                java.lang.String r7 = r13.toString()
                com.sigmob.sdk.mraid.s r13 = com.sigmob.sdk.mraid.s.this
                com.sigmob.sdk.mraid.h r13 = com.sigmob.sdk.mraid.s.b(r13)
                java.lang.String r8 = r13.a()
                r5.a(r6, r7, r8, r9, r10, r11)
                goto La0
            L8a:
                com.sigmob.sdk.mraid.s r13 = com.sigmob.sdk.mraid.s.this
                com.sigmob.sdk.videoAd.a r5 = com.sigmob.sdk.mraid.s.c(r13)
                com.sigmob.sdk.base.a r6 = com.sigmob.sdk.base.a.ENDCARD
                com.sigmob.sdk.mraid.s r13 = com.sigmob.sdk.mraid.s.this
                com.sigmob.sdk.mraid.h r13 = com.sigmob.sdk.mraid.s.b(r13)
                java.lang.String r8 = r13.a()
                r7 = 0
                r5.a(r6, r7, r8, r9, r10)
            La0:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid.s.AnonymousClass3.a(java.net.URI, int, java.lang.String):void");
        }

        @Override // com.sigmob.sdk.mraid.C1316h.a
        public void a(boolean z2) {
            s sVar;
            String str;
            if (z2) {
                sVar = s.this;
                str = C1244a.f35698z;
            } else {
                sVar = s.this;
                str = C1244a.f35649A;
            }
            sVar.b(str);
        }
    }

    /* renamed from: com.sigmob.sdk.mraid.s$7, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass7 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38040a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f38041b;

        static {
            int[] iArr = new int[com.sigmob.sdk.base.a.values().length];
            f38041b = iArr;
            try {
                iArr[com.sigmob.sdk.base.a.COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38041b[com.sigmob.sdk.base.a.VIDEO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ConsoleMessage.MessageLevel.values().length];
            f38040a = iArr2;
            try {
                iArr2[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public s(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) {
        super(activity, str, interfaceC1264k);
        this.f38022s = false;
        this.f38023t = false;
        this.f38025v = false;
        this.f38029z = new View.OnClickListener() { // from class: com.sigmob.sdk.mraid.s.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activityN = s.this.n();
                if (activityN == null || s.this.f38016m == null) {
                    return;
                }
                s sVar = s.this;
                if (sVar.a(sVar.f38026w)) {
                    return;
                }
                s.this.f38026w = new DialogC1346b(activityN, s.this.f38016m);
                s.this.f38026w.a();
                s.this.f38026w.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid.s.5.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        s.this.s();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int i2, String str2, boolean z2) {
                        s.this.s();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                    }
                });
            }
        };
        this.f38016m = baseAdUnit;
        this.f38011h = bundle;
        C1374a c1374a = (C1374a) baseAdUnit.getAdConfig();
        this.f38013j = c1374a;
        c1374a.a(n(), baseAdUnit, new DialogC1305q.b() { // from class: com.sigmob.sdk.mraid.s.1
            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a() {
                s.this.c("fourElementsDidDisappear");
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void b() {
                s.this.c("fourElementsDidAppear");
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a(Error error) {
            }

            @Override // com.sigmob.sdk.base.views.DialogC1305q.b
            public void a(String str2, String str3) {
                ClickCommon clickCommon = s.this.f38016m.getClickCommon();
                clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                clickCommon.click_scene = "appinfo";
                clickCommon.is_final_click = true;
            }
        });
        c1374a.a((ac) this);
        this.f38014k = ClientMetadata.getInstance().getInsetBottom();
        m().setBackgroundColor(0);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public boolean j() {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.ac
    public void onAdClick(boolean z2, com.sigmob.sdk.base.a aVar) {
        com.sigmob.sdk.base.a aVar2;
        String str;
        com.sigmob.sdk.base.utils.d.a(f38009f, this.f38016m);
        a(IntentActions.ACTION_INTERSTITIAL_CLICK);
        if (z2) {
            int i2 = AnonymousClass7.f38041b[aVar.ordinal()];
            if (i2 == 1) {
                aVar2 = com.sigmob.sdk.base.a.COMPANION;
                str = C1244a.f35691s;
            } else if (i2 != 2) {
                aVar2 = com.sigmob.sdk.base.a.ENDCARD;
                str = "click";
            } else {
                aVar2 = com.sigmob.sdk.base.a.VIDEO_CLICK;
                str = C1244a.f35692t;
            }
            a(aVar2, str);
        }
        this.f38028y = null;
    }

    private void b(Context context, int i2) {
        if (this.f38027x == null) {
            com.sigmob.sdk.base.views.w wVar = new com.sigmob.sdk.base.views.w(context);
            this.f38027x = wVar;
            wVar.setText("反馈");
            this.f38027x.setOnClickListener(this.f38029z);
            this.f38027x.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, this.f35956a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f38019p.getId());
            layoutParams.addRule(6, this.f38019p.getId());
            layoutParams.setMargins(0, -iDipsToIntPixels, 0, 0);
            m().addView(this.f38027x, layoutParams);
        }
        com.sigmob.sdk.base.views.w wVar2 = this.f38027x;
        if (wVar2 != null) {
            wVar2.setVisibility(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        DialogC1305q dialogC1305q = this.f38024u;
        if (dialogC1305q == null) {
            return;
        }
        dialogC1305q.dismiss();
        this.f38024u.c();
        this.f38024u = null;
        this.f38025v = false;
    }

    private void q() {
        ar arVar = this.f38019p;
        if (arVar != null) {
            arVar.setVisibility(4);
        }
        com.sigmob.sdk.base.views.w wVar = this.f38027x;
        if (wVar != null) {
            wVar.setVisibility(4);
        }
    }

    private void r() {
        if (this.f38019p == null) {
            a(this.f35956a, 0);
        }
        this.f38019p.setVisibility(0);
        b(l(), 0);
    }

    public View a() {
        String str = this.f35957b;
        z.a aVarA = str != null ? z.a(str) : null;
        this.f38017n = (aVarA == null || aVarA.d() == null) ? new C1316h(this.f35956a, this.f38016m, PlacementType.INTERSTITIAL) : aVarA.d();
        a(new View.OnApplyWindowInsetsListener() { // from class: com.sigmob.sdk.mraid.I
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.f37852a.a(view, windowInsets);
            }
        });
        this.f38017n.a(this.f35960e);
        this.f38017n.a(new C1316h.f() { // from class: com.sigmob.sdk.mraid.s.2

            /* renamed from: b, reason: collision with root package name */
            private boolean f38032b;

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void a() {
                SigmobLog.d("adImpression() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void b() {
                if (this.f38032b) {
                    return;
                }
                s.this.b(C1244a.f35682j);
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void c() {
                SigmobLog.d("adPlaying() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void d() {
                this.f38032b = true;
                s.this.b("complete");
                SigmobLog.d("adVideoComplete() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void e() {
                s.this.b(C1244a.f35683k);
                SigmobLog.d("adVideoFirstQuartile() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void f() {
                s.this.b(C1244a.f35686n);
                SigmobLog.d("adVideoThirdQuartile() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void g() {
                s.this.b(C1244a.f35685m);
                SigmobLog.d("adVideoMidpoint() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void h() {
                s.this.b(C1244a.f35660L);
                s.this.a(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
                SigmobLog.d("adVideoStart() called");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void a(Integer num) {
                s.this.f38020q = num == null ? -1 : num.intValue();
                s sVar = s.this;
                sVar.f38010g.a(sVar.f38020q, s.this.f38013j.l());
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void b(Map<String, String> map) {
                SigmobLog.d("adError() called " + map);
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void a(Map<String, String> map) {
                try {
                    map.get("id");
                    String str2 = map.get("url");
                    if (!map.get("playerHandles").equalsIgnoreCase("false")) {
                        if (!TextUtils.isEmpty(str2)) {
                            if (str2.startsWith("http")) {
                                s.this.f38016m.setCustomLandPageUrl(str2);
                            } else {
                                s.this.f38016m.setCustomDeeplink(str2);
                            }
                        }
                        s.this.f38013j.a(com.sigmob.sdk.base.a.ENDCARD, s.this.f38017n.a(), true);
                    }
                    SigmobLog.d("adClickThru() called" + map);
                } catch (Throwable th) {
                    SigmobLog.e("adClickThru", th);
                }
            }
        });
        this.f38017n.a(new AnonymousClass3());
        this.f38017n.a(new C1316h.e() { // from class: com.sigmob.sdk.mraid.J
            @Override // com.sigmob.sdk.mraid.C1316h.e
            public final void useCustomCloseChanged(boolean z2) {
                this.f37853a.b(z2);
            }
        });
        if (aVarA != null) {
            this.f38010g = aVarA.c();
        } else if (!TextUtils.isEmpty(this.f38016m.getHtmlData())) {
            this.f38017n.a(this.f38016m.getHtmlData(), new C1316h.b() { // from class: com.sigmob.sdk.mraid.K
                @Override // com.sigmob.sdk.mraid.C1316h.b
                public final void onReady(v vVar, C1282v c1282v) {
                    this.f37854a.b(vVar, c1282v);
                }
            });
        } else if (!TextUtils.isEmpty(this.f38016m.getHtmlUrl())) {
            this.f38017n.b(this.f38016m.getHtmlUrl(), new C1316h.b() { // from class: com.sigmob.sdk.mraid.L
                @Override // com.sigmob.sdk.mraid.C1316h.b
                public final void onReady(v vVar, C1282v c1282v) {
                    this.f37855a.a(vVar, c1282v);
                }
            });
        }
        return this.f38017n.q();
    }

    @Override // com.sigmob.sdk.videoAd.AbstractC1375b, com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        super.e();
        b(n(), this.f38012i, this.f38011h);
        n().getWindow().setFlags(1024, 1024);
        C1282v c1282v = this.f38010g;
        if (c1282v != null) {
            c1282v.a("show", 0);
        }
        m().addView(a(), new FrameLayout.LayoutParams(-1, -1));
        C1316h c1316h = this.f38017n;
        if (c1316h != null) {
            c1316h.a(n());
        }
        a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        a(new x() { // from class: com.sigmob.sdk.mraid.s.6
            @Override // com.sigmob.sdk.mraid.x
            public boolean a(ConsoleMessage consoleMessage) {
                if (AnonymousClass7.f38040a[consoleMessage.messageLevel().ordinal()] != 1) {
                    return false;
                }
                SigmobLog.e("onConsoleMessage " + consoleMessage.message());
                ad.a("h5_error", "mraid1", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, s.this.f38016m, (ad.a) null);
                return false;
            }

            @Override // com.sigmob.sdk.mraid.x
            public boolean a(String str, JsResult jsResult) {
                return false;
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
        if (!this.f38022s) {
            this.f38017n.b();
        } else {
            this.f38023t = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
        this.f38017n.c();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        C1282v c1282v = this.f38010g;
        if (c1282v != null) {
            c1282v.a();
            this.f38010g = null;
        }
        C1316h c1316h = this.f38017n;
        if (c1316h != null) {
            c1316h.m();
            this.f38017n = null;
        }
        s();
        p();
        if (!this.f38022s || !this.f38023t) {
            this.f38023t = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        BaseAdUnit baseAdUnit = this.f38016m;
        if (baseAdUnit != null) {
            baseAdUnit.destroy();
        }
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets a(View view, WindowInsets windowInsets) {
        this.f38017n.a(windowInsets);
        return windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        C1311c c1311cE;
        C1316h c1316h = this.f38017n;
        if (c1316h == null || c1316h.g() == null || (c1311cE = this.f38017n.e()) == null) {
            return;
        }
        c1311cE.a(str, (HashMap<String, Object>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        DialogC1346b dialogC1346b = this.f38026w;
        if (dialogC1346b == null) {
            return;
        }
        dialogC1346b.dismiss();
        this.f38026w.b();
        this.f38026w = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(v vVar, C1282v c1282v) {
        if (c1282v != null) {
            this.f38010g = c1282v;
            return;
        }
        C1282v c1282v2 = new C1282v();
        this.f38010g = c1282v2;
        c1282v2.a(this.f38016m);
    }

    public void b(final String str) {
        final Integer numF = this.f38017n.f();
        this.f38017n.a(new ValueCallback() { // from class: com.sigmob.sdk.mraid.M
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                this.f37856a.a(str, numF, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z2) {
        if (z2) {
            q();
        } else {
            r();
        }
    }

    private void a(Context context, int i2) {
        if (this.f38019p != null) {
            return;
        }
        ar arVar = new ar(context);
        this.f38019p = arVar;
        arVar.setVisibility(i2);
        this.f38019p.setId(ClientMetadata.generateViewId());
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, this.f35956a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(iDipsToIntPixels, iDipsToIntPixels * 2, iDipsToIntPixels, iDipsToIntPixels);
        m().addView(this.f38019p, layoutParams);
        this.f38019p.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.mraid.s.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    s.this.f38022s = true;
                    s.this.f38013j.b(s.this.l(), s.this.f38020q, s.this.f38016m);
                    s.this.k().a();
                }
                return true;
            }
        });
        this.f38019p.a(this.f38016m);
        String strF = this.f38013j.f();
        if (strF != null) {
            this.f38019p.a(strF);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) {
        this.f38017n.a(configuration.orientation);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
    }

    private void a(com.sigmob.sdk.base.a aVar, String str) {
        BaseAdUnit baseAdUnit = this.f38016m;
        if (baseAdUnit == null) {
            return;
        }
        ClickCommon clickCommon = baseAdUnit.getClickCommon();
        ad.a(aVar, "click", this.f38016m, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, this.f38020q, this.f38028y);
        b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(v vVar, C1282v c1282v) {
        if (c1282v != null) {
            this.f38010g = c1282v;
            return;
        }
        C1282v c1282v2 = new C1282v();
        this.f38010g = c1282v2;
        c1282v2.a(this.f38016m);
    }

    public void a(x xVar) {
        this.f38018o = xVar;
        C1316h c1316h = this.f38017n;
        if (c1316h == null) {
            return;
        }
        c1316h.a(xVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Integer num, String str2) {
        if (this.f38010g == null) {
            return;
        }
        try {
            if (C1311c.a(str2) == null) {
                if (str.equals("show_skip")) {
                    this.f38010g.a(false, 0);
                }
                this.f38010g.a(str, 0);
            } else {
                float f2 = Float.parseFloat(str2);
                float fIntValue = (((double) f2) <= 1.0E-7d || num == null || num.intValue() <= 0) ? -1.0f : f2 * num.intValue();
                if (str.equals("show_skip")) {
                    this.f38010g.a(false, (int) fIntValue);
                }
                this.f38010g.a(str, (int) fIntValue);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
