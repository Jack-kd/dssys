package com.sigmob.sdk.base.views;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1282v;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.mraid.C1310b;
import com.sigmob.sdk.mraid.C1316h;
import com.sigmob.sdk.videoAd.C1374a;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdError;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class z extends Dialog implements DialogInterface.OnShowListener {

    /* renamed from: a, reason: collision with root package name */
    protected C1282v f37224a;

    /* renamed from: b, reason: collision with root package name */
    private View f37225b;

    /* renamed from: c, reason: collision with root package name */
    private Window f37226c;

    /* renamed from: d, reason: collision with root package name */
    private a f37227d;

    /* renamed from: e, reason: collision with root package name */
    private RelativeLayout f37228e;

    /* renamed from: f, reason: collision with root package name */
    private C1374a f37229f;

    /* renamed from: g, reason: collision with root package name */
    private BaseAdUnit f37230g;

    /* renamed from: h, reason: collision with root package name */
    private C1316h f37231h;

    /* renamed from: i, reason: collision with root package name */
    private Context f37232i;

    /* renamed from: j, reason: collision with root package name */
    private int f37233j;

    /* renamed from: k, reason: collision with root package name */
    private int f37234k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f37235l;

    public interface a {
        void onCloseClick();
    }

    public z(Context context, BaseAdUnit baseAdUnit, C1374a c1374a) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f37226c = null;
        this.f37233j = 0;
        this.f37234k = 0;
        this.f37235l = false;
        this.f37232i = context.getApplicationContext();
        this.f37230g = baseAdUnit;
        this.f37229f = c1374a;
        this.f37225b = b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f37228e = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f37228e.setBackgroundColor(0);
        setContentView(this.f37228e);
        setOnShowListener(this);
        SigmobLog.i("RecommendDialog onCreate:" + this.f37234k + ":" + this.f37233j);
        View view = this.f37225b;
        if (view != null) {
            this.f37228e.addView(view);
        }
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        d();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        SigmobLog.i("RecommendDialog  onShow");
        a(C1244a.f35676d);
        this.f37231h.a(0);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        Window window = getWindow();
        this.f37226c = window;
        C1383c.a(window);
    }

    private void d() {
        Window window = getWindow();
        this.f37226c = window;
        if (window == null) {
            return;
        }
        window.setGravity(80);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG != 0) {
            this.f37226c.setWindowAnimations(iG);
        }
        this.f37226c.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = this.f37226c.getAttributes();
        int i2 = this.f37232i.getResources().getDisplayMetrics().widthPixels;
        int i3 = this.f37232i.getResources().getDisplayMetrics().heightPixels;
        int i4 = this.f37234k;
        if (i4 - 1 <= i2) {
            attributes.width = -1;
        } else {
            attributes.width = i4;
        }
        int i5 = this.f37233j;
        if (i5 - 1 <= i3) {
            attributes.height = -1;
        } else {
            attributes.height = i5;
        }
        SigmobLog.i("RecommendDialog windowDeploy: " + i2 + "====" + i3 + "====" + attributes.width + "====" + attributes.height);
        this.f37226c.setAttributes(attributes);
    }

    public View b() {
        if (this.f37231h == null) {
            this.f37231h = new C1316h(this.f37232i, this.f37230g, PlacementType.INTERSTITIAL);
        }
        this.f37231h.a(new C1316h.f() { // from class: com.sigmob.sdk.base.views.z.1
            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void a() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void b() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void c() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void d() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void e() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void f() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void g() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void h() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void a(Integer num) {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void b(Map<String, String> map) {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.f
            public void a(Map<String, String> map) {
            }
        });
        this.f37231h.a(new C1316h.a() { // from class: com.sigmob.sdk.base.views.z.2
            private int i() {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT < 28 || (rootWindowInsets = z.this.getWindow().getDecorView().getRootWindowInsets()) == null || rootWindowInsets.getDisplayCutout() == null) {
                    return 0;
                }
                return rootWindowInsets.getDisplayCutout().getSafeInsetTop();
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a() {
                SigmobLog.d("RecommendDialog onEndCardShow()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void b() {
                SigmobLog.d("RecommendDialog onShowSkipTime()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void c() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void d() {
                SigmobLog.d("RecommendDialog onExpand()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void e() {
                SigmobLog.i("RecommendDialog onFailedToLoad()");
                z.this.f37235l = true;
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void f() {
                SigmobLog.i("RecommendDialog onUnload()");
                z.this.dismiss();
                z.this.a(C1244a.f35677e);
                z.this.c();
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void g() {
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void h() {
                SigmobLog.i("RecommendDialog onClose()");
                if (z.this.f37227d != null) {
                    z.this.f37227d.onCloseClick();
                }
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(float f2) {
                SigmobLog.d("RecommendDialog onReward()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void b(float f2) {
                SigmobLog.d("RecommendDialog onSkip()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2) {
                int i6 = z.this.f37232i.getResources().getDisplayMetrics().widthPixels;
                int i7 = z.this.f37232i.getResources().getDisplayMetrics().heightPixels;
                int iN = C1383c.n(z.this.getContext());
                int i8 = i();
                SigmobLog.i("RecommendDialog Origin onResize :" + i2 + "==" + i3 + "==" + i4 + "==" + i5 + "==" + z2);
                z zVar = z.this;
                zVar.f37234k = Dips.dipsToIntPixels((float) i2, zVar.f37232i);
                z zVar2 = z.this;
                zVar2.f37233j = Dips.dipsToIntPixels((float) i3, zVar2.f37232i);
                int iDipsToIntPixels = Dips.dipsToIntPixels((float) i4, z.this.f37232i);
                int iDipsToIntPixels2 = Dips.dipsToIntPixels((float) i5, z.this.f37232i) - Math.max(iN, i8);
                if (z.this.f37225b == null) {
                    return;
                }
                if (!z2) {
                    iDipsToIntPixels = Math.min(Math.max(iDipsToIntPixels, 0), i6);
                    iDipsToIntPixels2 = Math.min(Math.max(iDipsToIntPixels2, 0), i7);
                    if (z.this.f37234k + iDipsToIntPixels > i6) {
                        z.this.f37234k = i6 - iDipsToIntPixels;
                    }
                    if (z.this.f37233j + iDipsToIntPixels2 > i7) {
                        z.this.f37233j = i7 - iDipsToIntPixels2;
                    }
                }
                SigmobLog.i("RecommendDialog onResize: " + z.this.f37234k + "==" + z.this.f37233j + "==" + iDipsToIntPixels + "==" + iDipsToIntPixels2);
                if (z.this.f37234k <= 0 || z.this.f37233j <= 0) {
                    z.this.f37235l = true;
                }
                z.this.f37225b.setX(iDipsToIntPixels);
                z.this.f37225b.setY(iDipsToIntPixels2);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(z.this.f37234k, z.this.f37233j);
                layoutParams.addRule(12);
                z.this.f37225b.setLayoutParams(layoutParams);
                z.this.f37225b.requestLayout();
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(View view) {
                SigmobLog.d("RecommendDialog onLoaded()");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(WindAdError windAdError) {
                SigmobLog.i("RecommendDialog onRenderProcessGone:" + windAdError.toString());
                z.this.f37235l = true;
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(String str) throws UnsupportedEncodingException {
                SigmobLog.i("RecommendDialog onCompanionClick:" + str);
                boolean z2 = true;
                if (com.sigmob.sdk.base.utils.s.b(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int iOptInt = jSONObject.optInt("type");
                        z.this.f37231h.a(String.valueOf(jSONObject.optInt("x")), String.valueOf(jSONObject.optInt("y")));
                        if (iOptInt == 1) {
                            z2 = false;
                        } else {
                            z.this.a(C1244a.f35691s);
                        }
                    } catch (Exception unused) {
                        z.this.f37231h.a("0", "0");
                        z.this.a(C1244a.f35691s);
                    }
                }
                z.this.f37229f.a(com.sigmob.sdk.base.a.ENDCARD, z.this.f37231h.a(), z2);
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
            @Override // com.sigmob.sdk.mraid.C1316h.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void a(java.net.URI r11, int r12, java.lang.String r13) throws java.io.UnsupportedEncodingException {
                /*
                    r10 = this;
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r1 = "RecommendDialog  onOpen:"
                    r0.append(r1)
                    r0.append(r11)
                    java.lang.String r1 = "======"
                    r0.append(r1)
                    r0.append(r12)
                    java.lang.String r12 = "====="
                    r0.append(r12)
                    r0.append(r13)
                    java.lang.String r12 = r0.toString()
                    com.czhj.sdk.logger.SigmobLog.i(r12)
                    boolean r12 = com.sigmob.sdk.base.utils.s.b(r13)
                    java.lang.String r0 = "click"
                    java.lang.String r1 = "0"
                    r2 = 0
                    r3 = 1
                    r4 = 0
                    if (r12 == 0) goto L8e
                    org.json.JSONObject r12 = new org.json.JSONObject     // Catch: java.lang.Exception -> L7b
                    r12.<init>(r13)     // Catch: java.lang.Exception -> L7b
                    java.lang.String r13 = "type"
                    int r13 = r12.optInt(r13)     // Catch: java.lang.Exception -> L7a
                    java.lang.String r4 = "x"
                    int r4 = r12.optInt(r4)     // Catch: java.lang.Exception -> L7a
                    java.lang.String r5 = "y"
                    int r5 = r12.optInt(r5)     // Catch: java.lang.Exception -> L7a
                    java.lang.String r6 = "disable_landing"
                    boolean r6 = r12.optBoolean(r6)     // Catch: java.lang.Exception -> L7a
                    java.lang.String r7 = "feDisable"
                    boolean r7 = r12.optBoolean(r7)     // Catch: java.lang.Exception -> L77
                    r7 = r7 ^ r3
                    com.sigmob.sdk.base.views.z r8 = com.sigmob.sdk.base.views.z.this     // Catch: java.lang.Exception -> L6f
                    com.sigmob.sdk.mraid.h r8 = com.sigmob.sdk.base.views.z.b(r8)     // Catch: java.lang.Exception -> L6f
                    java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Exception -> L6f
                    java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Exception -> L6f
                    r8.a(r4, r5)     // Catch: java.lang.Exception -> L6f
                    if (r13 == r3) goto L72
                    com.sigmob.sdk.base.views.z r13 = com.sigmob.sdk.base.views.z.this     // Catch: java.lang.Exception -> L6f
                    r13.a(r0)     // Catch: java.lang.Exception -> L6f
                    r2 = r3
                    goto L72
                L6f:
                    r4 = r12
                L70:
                    r2 = r6
                    goto L7c
                L72:
                    r9 = r12
                    r8 = r7
                    r7 = r2
                    r2 = r6
                    goto L9f
                L77:
                    r4 = r12
                    r7 = r3
                    goto L70
                L7a:
                    r4 = r12
                L7b:
                    r7 = r3
                L7c:
                    com.sigmob.sdk.base.views.z r12 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.mraid.h r12 = com.sigmob.sdk.base.views.z.b(r12)
                    r12.a(r1, r1)
                    com.sigmob.sdk.base.views.z r12 = com.sigmob.sdk.base.views.z.this
                    r12.a(r0)
                    r9 = r4
                    r8 = r7
                    r7 = r3
                    goto L9f
                L8e:
                    com.sigmob.sdk.base.views.z r12 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.mraid.h r12 = com.sigmob.sdk.base.views.z.b(r12)
                    r12.a(r1, r1)
                    com.sigmob.sdk.base.views.z r12 = com.sigmob.sdk.base.views.z.this
                    r12.a(r0)
                    r7 = r3
                    r8 = r7
                    r9 = r4
                L9f:
                    if (r2 != 0) goto Lc9
                    com.sigmob.sdk.base.views.z r12 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.base.models.BaseAdUnit r12 = com.sigmob.sdk.base.views.z.h(r12)
                    java.lang.String r12 = r12.getLanding_page()
                    boolean r12 = com.sigmob.sdk.base.utils.s.a(r12)
                    if (r12 == 0) goto Lb2
                    goto Lc9
                Lb2:
                    com.sigmob.sdk.base.views.z r11 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.videoAd.a r3 = com.sigmob.sdk.base.views.z.c(r11)
                    com.sigmob.sdk.base.a r4 = com.sigmob.sdk.base.a.ENDCARD
                    com.sigmob.sdk.base.views.z r11 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.mraid.h r11 = com.sigmob.sdk.base.views.z.b(r11)
                    java.lang.String r6 = r11.a()
                    r5 = 0
                    r3.a(r4, r5, r6, r7, r8)
                    goto Le2
                Lc9:
                    com.sigmob.sdk.base.views.z r12 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.videoAd.a r3 = com.sigmob.sdk.base.views.z.c(r12)
                    com.sigmob.sdk.base.a r4 = com.sigmob.sdk.base.a.ENDCARD
                    java.lang.String r5 = r11.toString()
                    com.sigmob.sdk.base.views.z r11 = com.sigmob.sdk.base.views.z.this
                    com.sigmob.sdk.mraid.h r11 = com.sigmob.sdk.base.views.z.b(r11)
                    java.lang.String r6 = r11.a()
                    r3.a(r4, r5, r6, r7, r8, r9)
                Le2:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.z.AnonymousClass2.a(java.net.URI, int, java.lang.String):void");
            }

            @Override // com.sigmob.sdk.mraid.C1316h.a
            public void a(boolean z2) {
                SigmobLog.d("RecommendDialog onMute()");
            }
        });
        String closeCardHtmlData = this.f37230g.getCloseCardHtmlData();
        if (com.sigmob.sdk.base.utils.s.b(closeCardHtmlData)) {
            this.f37231h.a(closeCardHtmlData, new C1316h.b() { // from class: com.sigmob.sdk.base.views.U
                @Override // com.sigmob.sdk.mraid.C1316h.b
                public final void onReady(com.sigmob.sdk.mraid.v vVar, C1282v c1282v) {
                    this.f36690a.a(vVar, c1282v);
                }
            });
        }
        return this.f37231h.q();
    }

    public void c() {
        C1316h c1316h = this.f37231h;
        if (c1316h == null) {
            return;
        }
        this.f37227d = null;
        c1316h.m();
        this.f37231h = null;
    }

    public void a(a aVar) {
        this.f37227d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.sigmob.sdk.mraid.v vVar, C1282v c1282v) {
        if (c1282v != null) {
            this.f37224a = c1282v;
            return;
        }
        C1282v c1282v2 = new C1282v();
        this.f37224a = c1282v2;
        c1282v2.a(this.f37230g);
    }

    public void a(String str) {
        C1282v c1282v = this.f37224a;
        if (c1282v == null) {
            return;
        }
        c1282v.a(str, 0);
    }

    public boolean a() {
        if (this.f37234k <= 0 || this.f37233j <= 0) {
            this.f37235l = true;
        }
        return this.f37235l;
    }
}
