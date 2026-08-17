package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.mixad.f.b;
import com.anythink.core.common.inner.ui.BaseATView;
import com.anythink.core.common.inner.ui.BaseBannerATView;
import com.anythink.core.common.inner.ui.CloseImageView;
import com.anythink.core.common.inner.ui.ScanningAnimButton;
import com.anythink.core.common.l.e.a.d;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ThirdPartyBannerATView extends BaseBannerATView implements d {

    /* renamed from: A, reason: collision with root package name */
    private Context f5194A;

    /* renamed from: d, reason: collision with root package name */
    private ViewGroup f5195d;

    /* renamed from: l, reason: collision with root package name */
    private com.anythink.core.common.l.g.d f5196l;

    /* renamed from: m, reason: collision with root package name */
    private FrameLayout f5197m;

    /* renamed from: n, reason: collision with root package name */
    private FrameLayout f5198n;

    /* renamed from: o, reason: collision with root package name */
    private LinearLayout f5199o;

    /* renamed from: p, reason: collision with root package name */
    private TextView f5200p;

    /* renamed from: q, reason: collision with root package name */
    private TextView f5201q;

    /* renamed from: r, reason: collision with root package name */
    private ScanningAnimButton f5202r;

    /* renamed from: s, reason: collision with root package name */
    private RoundImageView f5203s;

    /* renamed from: t, reason: collision with root package name */
    private View f5204t;

    /* renamed from: u, reason: collision with root package name */
    private View f5205u;

    /* renamed from: v, reason: collision with root package name */
    private List<Integer> f5206v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f5207w;

    /* renamed from: x, reason: collision with root package name */
    private TextView f5208x;

    /* renamed from: y, reason: collision with root package name */
    private String f5209y;

    /* renamed from: z, reason: collision with root package name */
    private com.anythink.core.common.inner.mixad.f.b f5210z;

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView$1, reason: invalid class name */
    public class AnonymousClass1 implements b.a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(((BaseATView) ThirdPartyBannerATView.this).f4825g.m(), str)) {
                ThirdPartyBannerATView.this.f5203s.setImageBitmap(bitmap);
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5212a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoundImageView f5213b;

        public AnonymousClass2(String str, RoundImageView roundImageView) {
            this.f5212a = str;
            this.f5213b = roundImageView;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(this.f5212a, str)) {
                this.f5213b.setImageBitmap(bitmap);
            }
        }
    }

    public ThirdPartyBannerATView(Context context) {
        super(context);
        this.f5207w = false;
        this.f5209y = "";
        this.f5194A = context;
    }

    private void c() {
        this.f5207w = this.f5196l.r();
        this.f5206v = new ArrayList();
        if (!this.f5196l.isNativeExpress()) {
            for (int i2 : this.f5196l.i()) {
                this.f5206v.add(Integer.valueOf(i2));
            }
        }
        this.f5209y = this.f5196l.p();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f() {
        /*
            Method dump skipped, instructions count: 1330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView.f():void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g() {
        /*
            r8 = this;
            android.content.Context r0 = r8.f5194A
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            android.content.Context r1 = r8.getContext()
            java.lang.String r2 = "myoffer_banner_ad_layout_template"
            java.lang.String r3 = "layout"
            int r1 = com.anythink.core.common.v.p.a(r1, r2, r3)
            r2 = 0
            android.view.View r0 = r0.inflate(r1, r8, r2)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r8.f5195d = r0
            android.content.Context r0 = r8.getContext()
            r1 = 1134559232(0x43a00000, float:320.0)
            int r0 = com.anythink.core.common.v.p.a(r0, r1)
            android.content.Context r3 = r8.getContext()
            r4 = 1112014848(0x42480000, float:50.0)
            int r3 = com.anythink.core.common.v.p.a(r3, r4)
            java.lang.String r5 = r8.f5209y
            r5.getClass()
            int r6 = r5.hashCode()
            r7 = -1
            switch(r6) {
                case -559799608: goto L5f;
                case 1507809730: goto L54;
                case 1507809854: goto L49;
                case 1622564786: goto L3e;
                default: goto L3c;
            }
        L3c:
            r2 = r7
            goto L68
        L3e:
            java.lang.String r2 = "728x90"
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L47
            goto L3c
        L47:
            r2 = 3
            goto L68
        L49:
            java.lang.String r2 = "320x90"
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L52
            goto L3c
        L52:
            r2 = 2
            goto L68
        L54:
            java.lang.String r2 = "320x50"
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L5d
            goto L3c
        L5d:
            r2 = 1
            goto L68
        L5f:
            java.lang.String r6 = "300x250"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L68
            goto L3c
        L68:
            r5 = 1119092736(0x42b40000, float:90.0)
            switch(r2) {
                case 0: goto La3;
                case 1: goto L92;
                case 2: goto L81;
                case 3: goto L6e;
                default: goto L6d;
            }
        L6d:
            goto Lb7
        L6e:
            android.content.Context r0 = r8.getContext()
            r1 = 1144258560(0x44340000, float:720.0)
            int r0 = com.anythink.core.common.v.p.a(r0, r1)
            android.content.Context r1 = r8.getContext()
            int r3 = com.anythink.core.common.v.p.a(r1, r5)
            goto Lb7
        L81:
            android.content.Context r0 = r8.getContext()
            int r0 = com.anythink.core.common.v.p.a(r0, r1)
            android.content.Context r1 = r8.getContext()
            int r3 = com.anythink.core.common.v.p.a(r1, r5)
            goto Lb7
        L92:
            android.content.Context r0 = r8.getContext()
            int r0 = com.anythink.core.common.v.p.a(r0, r1)
            android.content.Context r1 = r8.getContext()
            int r3 = com.anythink.core.common.v.p.a(r1, r4)
            goto Lb7
        La3:
            android.content.Context r0 = r8.getContext()
            r1 = 1133903872(0x43960000, float:300.0)
            int r0 = com.anythink.core.common.v.p.a(r0, r1)
            android.content.Context r1 = r8.getContext()
            r2 = 1132068864(0x437a0000, float:250.0)
            int r3 = com.anythink.core.common.v.p.a(r1, r2)
        Lb7:
            android.content.res.Resources r1 = r8.getResources()
            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
            int r1 = r1.widthPixels
            int r0 = java.lang.Math.min(r0, r1)
            android.view.ViewGroup r1 = r8.f5195d
            android.view.ViewGroup$LayoutParams r2 = new android.view.ViewGroup$LayoutParams
            r2.<init>(r0, r3)
            r1.setLayoutParams(r2)
            android.view.ViewGroup r0 = r8.f5195d
            r8.addView(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView.g():void");
    }

    private void h() {
        String str;
        this.f5195d = new FrameLayout(this.f5194A);
        String str2 = this.f5209y;
        str2.getClass();
        switch (str2) {
            case "300x250":
                str = "myoffer_banner_native_ad_layout_300x250";
                break;
            case "320x90":
                com.anythink.core.common.l.g.d dVar = this.f5196l;
                if (dVar.getAdMediaView(this) != null || !TextUtils.isEmpty(dVar.getMainImageUrl())) {
                    str = "myoffer_banner_native_ad_layout_320x90";
                    break;
                } else {
                    str = "myoffer_banner_native_ad_layout_no_main_res_320x90";
                    break;
                }
                break;
            case "728x90":
                str = "myoffer_banner_native_ad_layout_728x90";
                break;
            default:
                str = "myoffer_banner_native_ad_layout_320x50";
                break;
        }
        this.f5195d.addView((ViewGroup) LayoutInflater.from(this.f5194A).inflate(p.a(getContext(), str, "layout"), (ViewGroup) this, false));
        addView(this.f5195d);
    }

    private void i() {
        FrameLayout frameLayout = (FrameLayout) findViewById(p.a(getContext(), "myoffer_banner_template_view", "id"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        View adMediaView = this.f5196l.getAdMediaView(frameLayout);
        this.f5205u = adMediaView;
        if (adMediaView != null) {
            if (adMediaView.getParent() != null) {
                ((ViewGroup) this.f5205u.getParent()).removeView(this.f5205u);
            }
            frameLayout.addView(this.f5205u, layoutParams);
        }
        CloseImageView closeImageView = (CloseImageView) findViewById(p.a(getContext(), "myoffer_banner_close", "id"));
        this.f4831b = closeImageView;
        if (closeImageView != null) {
            if (this.f5207w) {
                closeImageView.setVisibility(0);
            } else {
                closeImageView.setVisibility(8);
            }
        }
    }

    private void j() {
        this.f5197m = (FrameLayout) findViewById(p.a(getContext(), "myoffer_main_resouce_container", "id"));
        this.f5198n = (FrameLayout) findViewById(p.a(getContext(), "myoffer_banner_icon_container", "id"));
        this.f5199o = (LinearLayout) findViewById(p.a(getContext(), "ll_title_desc", "id"));
        this.f5203s = (RoundImageView) findViewById(p.a(getContext(), "myoffer_banner_icon", "id"));
        this.f5200p = (TextView) findViewById(p.a(getContext(), "myoffer_banner_ad_title", "id"));
        this.f5201q = (TextView) findViewById(p.a(getContext(), "myoffer_banner_desc", "id"));
        this.f5202r = (ScanningAnimButton) findViewById(p.a(getContext(), "myoffer_banner_ad_install_btn", "id"));
        this.f5208x = (TextView) findViewById(p.a(getContext(), "myoffer_banner_ad_from", "id"));
        CloseImageView closeImageView = (CloseImageView) findViewById(p.a(getContext(), "myoffer_banner_close", "id"));
        this.f4831b = closeImageView;
        a(this.f5208x, this.f5196l.getAdFrom());
        if (closeImageView != null) {
            if (this.f5207w) {
                closeImageView.setVisibility(0);
            } else {
                closeImageView.setVisibility(8);
            }
        }
        View adIconView = this.f5196l.getAdIconView();
        this.f5204t = adIconView;
        if (adIconView != null) {
            if (adIconView.getParent() != null && (this.f5204t.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.f5204t.getParent()).removeView(this.f5204t);
            }
            this.f5198n.removeAllViews();
            this.f5198n.addView(this.f5204t, new FrameLayout.LayoutParams(-1, -1));
        } else if (TextUtils.isEmpty(this.f4825g.m()) || this.f5203s == null) {
            FrameLayout frameLayout = this.f5198n;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        } else {
            this.f5198n.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = this.f5198n.getLayoutParams();
            this.f5203s.setRadiusInDip(6);
            this.f5203s.setNeedRadiu(true);
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.f4825g.m()), layoutParams.width, layoutParams.height, new AnonymousClass1());
        }
        a(this.f5200p, this.f4825g.k());
        String strP = this.f4825g.p();
        a(this.f5202r, strP);
        if (TextUtils.isEmpty(strP)) {
            ScanningAnimButton scanningAnimButton = this.f5202r;
            if (scanningAnimButton != null) {
                scanningAnimButton.setVisibility(8);
            }
        } else {
            ScanningAnimButton scanningAnimButton2 = this.f5202r;
            if (scanningAnimButton2 != null) {
                scanningAnimButton2.setVisibility(0);
            }
        }
        a(this.f5201q, this.f4825g.l());
        if (this.f5197m != null) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 17;
            this.f5205u = this.f5196l.getAdMediaView(this.f5197m);
            String mainImageUrl = this.f5196l.getMainImageUrl();
            if (this.f5205u != null) {
                this.f5197m.setVisibility(0);
                if (this.f5205u.getParent() != null) {
                    ((ViewGroup) this.f5205u.getParent()).removeView(this.f5205u);
                }
                this.f5197m.addView(this.f5205u, layoutParams2);
            } else if (TextUtils.isEmpty(mainImageUrl)) {
                this.f5197m.setVisibility(8);
            } else {
                this.f5197m.setVisibility(0);
                RoundImageView roundImageView = new RoundImageView(getContext());
                this.f5197m.addView(roundImageView, layoutParams2);
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, mainImageUrl), new AnonymousClass2(mainImageUrl, roundImageView));
            }
        }
        View adLogoView = this.f5196l.getAdLogoView();
        com.anythink.core.common.inner.ui.e.a aVar = new com.anythink.core.common.inner.ui.e.a(this.f4825g, this.f4824f);
        this.f4832c = aVar;
        aVar.a(adLogoView);
        this.f4832c.b(this);
    }

    private void k() {
        ArrayList arrayList = new ArrayList();
        if (this.f5198n != null) {
            arrayList.add(this.f5197m);
        }
        FrameLayout frameLayout = this.f5198n;
        if (frameLayout != null) {
            arrayList.add(frameLayout);
        }
        this.f5210z = new b.a().a(arrayList).a(this.f5200p).b(this.f5201q).c(this.f5202r).a();
    }

    private boolean l() {
        return this.f5196l.isNativeExpress();
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a() {
    }

    @Override // com.anythink.core.common.l.e.a.d
    public void destroyNativeAd() {
        com.anythink.core.common.l.g.d dVar = this.f5196l;
        if (dVar != null) {
            dVar.clear(this.f5195d);
            this.f5196l.destroy();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        com.anythink.core.common.inner.mixad.f.b bVar = this.f5210z;
        if (bVar != null) {
            bVar.a(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getClickedArea() {
        com.anythink.core.common.inner.mixad.f.b bVar = this.f5210z;
        return bVar != null ? bVar.a() : com.anythink.core.common.inner.mixad.f.b.f4756a;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    private void b(View view) {
        if (view != null) {
            this.f4828j.add(view);
        }
    }

    private static void a(TextView textView, String str) {
        if (textView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            textView.setVisibility(0);
            textView.setText(str);
        } else {
            textView.setVisibility(8);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int b(Context context) {
        String str = this.f5209y;
        str.getClass();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -559799608:
                if (str.equals(y.f4503c)) {
                    c2 = 0;
                    break;
                }
                break;
            case 1507809730:
                if (str.equals(y.f4501a)) {
                    c2 = 1;
                    break;
                }
                break;
            case 1507809854:
                if (str.equals(y.f4502b)) {
                    c2 = 2;
                    break;
                }
                break;
            case 1622564786:
                if (str.equals(y.f4504d)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        float f2 = 50.0f;
        switch (c2) {
            case 0:
                f2 = 250.0f;
                break;
            case 2:
            case 3:
                f2 = 90.0f;
                break;
        }
        return p.a(context, f2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01bb  */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.view.View, android.view.ViewGroup, com.anythink.core.common.inner.ui.BaseATView, com.anythink.core.common.inner.ui.BaseBannerATView, com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ThirdPartyBannerATView(android.content.Context r17, com.anythink.core.api.BaseAd r18, com.anythink.core.common.h.x r19, com.anythink.core.common.h.w<?> r20, com.anythink.core.common.inner.e.a r21) {
        /*
            Method dump skipped, instructions count: 1488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView.<init>(android.content.Context, com.anythink.core.api.BaseAd, com.anythink.core.common.h.x, com.anythink.core.common.h.w, com.anythink.core.common.inner.e.a):void");
    }

    private void a(View view) {
        RoundImageView roundImageView;
        int i2 = this.f4824f.f4490j;
        FrameLayout.LayoutParams layoutParamsA = com.anythink.core.common.inner.mixad.f.a.a(i2, a(32.0f), a(8.0f));
        com.anythink.core.basead.b.b bVar = new com.anythink.core.basead.b.b();
        int[] iArrI = this.f5196l.i();
        if (iArrI == null) {
            b((View) this);
        } else {
            for (int i3 : iArrI) {
                if (i3 == 1) {
                    View view2 = this.f5204t;
                    if (view2 != null) {
                        b(view2);
                        bVar.b(this.f5204t);
                    } else if (!TextUtils.isEmpty(this.f5196l.getIconImageUrl()) && (roundImageView = this.f5203s) != null) {
                        b(roundImageView);
                        bVar.b(this.f5203s);
                    }
                    b(this.f5205u);
                    View view3 = this.f5205u;
                    if (view3 != null) {
                        bVar.c(view3);
                    }
                } else if (i3 == 2) {
                    b(this.f5200p);
                    bVar.a(this.f5200p);
                } else if (i3 == 3) {
                    b(this.f5201q);
                    bVar.d(this.f5201q);
                } else if (i3 == 4) {
                    b(this.f5202r);
                    bVar.e(this.f5202r);
                } else if (i3 == 5) {
                    b((View) this);
                }
            }
        }
        CloseImageView closeImageView = this.f4831b;
        if (closeImageView != null) {
            bVar.i(closeImageView);
        }
        if (this.f4832c != null && i2 == 34) {
            bVar.f(this.f5208x);
            this.f4832c.a(this.f5196l, bVar, false);
        }
        com.anythink.core.common.l.g.d dVar = this.f5196l;
        if (dVar != null) {
            dVar.registerListener(view, this.f4828j, layoutParamsA, bVar);
        }
    }

    private int a(float f2) {
        return p.a(getContext(), f2);
    }

    private static boolean a(float f2, float f3, View view) {
        if (view == null) {
            return false;
        }
        float x2 = view.getX();
        float y2 = view.getY();
        return f2 >= x2 && f2 <= ((float) view.getWidth()) + x2 && f3 >= y2 && f3 <= ((float) view.getHeight()) + y2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.anythink.core.api.BaseAd r14) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView.a(com.anythink.core.api.BaseAd):void");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int a(Context context) {
        String str = this.f5209y;
        str.getClass();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -559799608:
                if (str.equals(y.f4503c)) {
                    c2 = 0;
                    break;
                }
                break;
            case 1507809730:
                if (str.equals(y.f4501a)) {
                    c2 = 1;
                    break;
                }
                break;
            case 1507809854:
                if (str.equals(y.f4502b)) {
                    c2 = 2;
                    break;
                }
                break;
            case 1622564786:
                if (str.equals(y.f4504d)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        float f2 = 320.0f;
        switch (c2) {
            case 0:
                f2 = 300.0f;
                break;
            case 3:
                f2 = 728.0f;
                break;
        }
        return p.a(context, f2);
    }
}
