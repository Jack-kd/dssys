package com.smartdigimkt.china.formatbusiness.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e.a0;
import com.smartdigimkt.e.b0;
import com.smartdigimkt.e.c0;
import com.smartdigimkt.e.d0;
import com.smartdigimkt.e.e0;
import com.smartdigimkt.e.f0;
import com.smartdigimkt.e.g0;
import com.smartdigimkt.e.h0;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView;
import com.smartdigimkt.sdk.basead.ui.SplashShakeTextHintView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.z;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes5.dex */
public class LeftSkipSinglePictureSplashATView extends SinglePictureSplashATView {

    /* renamed from: p0, reason: collision with root package name */
    public static final /* synthetic */ int f39859p0 = 0;

    /* renamed from: m0, reason: collision with root package name */
    public TextView f39860m0;

    /* renamed from: n0, reason: collision with root package name */
    public SplashShakeTextHintView f39861n0;

    /* renamed from: o0, reason: collision with root package name */
    public View f39862o0;

    public LeftSkipSinglePictureSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }

    public static void a(int i2, LeftSkipSinglePictureSplashATView leftSkipSinglePictureSplashATView, RoundImageView roundImageView, String str) {
        Context context;
        leftSkipSinglePictureSplashATView.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (i2 < 4) {
            long j2 = (i2 * 100) + 80;
            if (roundImageView != null) {
                roundImageView.postDelayed(new h0(leftSkipSinglePictureSplashATView, i2), j2);
                return;
            }
            return;
        }
        if (roundImageView == null) {
            return;
        }
        roundImageView.setImageDrawable(null);
        roundImageView.setVisibility(8);
        ViewParent parent = roundImageView.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null || (context = roundImageView.getContext()) == null) {
            return;
        }
        char[] cArr = k.f39779a;
        int i3 = (int) ((context.getResources().getDisplayMetrics().density * 12.0f) + 0.5f);
        viewGroup.setPadding(i3, viewGroup.getPaddingTop(), i3, viewGroup.getPaddingBottom());
    }

    @Override // com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        View viewInflate = this.f43216b.f41644r.f41951m == 2 ? LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_single_land_left_skip", "layout"), this) : LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_single_port_left_skip", "layout"), this);
        p();
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new a0(this);
            tVar.a(getContext(), viewInflate);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void p() {
        super.p();
        post(new f0(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void q() {
        View viewFindViewById = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        this.f43228n = viewFindViewById;
        if (viewFindViewById != null) {
            this.f43225k.add(viewFindViewById);
        }
        this.f39860m0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_cta_text", "id"));
        this.f39861n0 = (SplashShakeTextHintView) findViewById(k.a(getContext(), "myoffer_splash_cta_shake", "id"));
        this.f39862o0 = findViewById(k.a(getContext(), "myoffer_splash_enter_immediately_area", "id"));
        if (!z.d(this.f43216b) || this.f39861n0 == null) {
            SplashShakeTextHintView splashShakeTextHintView = this.f39861n0;
            if (splashShakeTextHintView != null) {
                splashShakeTextHintView.setVisibility(8);
            }
            TextView textView = this.f39860m0;
            if (textView != null) {
                textView.setVisibility(0);
                if (TextUtils.isEmpty(this.f43217c.f41817h)) {
                    this.f39860m0.setText(z.a(getContext(), this.f43217c));
                } else {
                    this.f39860m0.setText(this.f43217c.f41817h);
                }
            }
            View view = this.f43228n;
            if (view != null) {
                a aVar = this.f43216b;
                if (aVar != null && aVar.f41644r != null) {
                    if (view.getParent() instanceof ViewGroup) {
                        ((ViewGroup) this.f43228n.getParent()).setClipChildren(false);
                    }
                    com.smartdigimkt.w1.a.a(this.f43228n, this.f43216b.f41644r.f41845C0).start();
                }
                this.f43228n.setOnClickListener(new d0(this));
            }
        } else {
            TextView textView2 = this.f39860m0;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            this.f39861n0.setTextSize(17);
            this.f39861n0.setVisibility(0);
            SplashShakeTextHintView splashShakeTextHintView2 = this.f39861n0;
            e eVar = this.f43216b.f41644r;
            c cVar = this.f43217c;
            splashShakeTextHintView2.setShakeSetting(eVar, cVar.f41824o, cVar);
            this.f39861n0.setOnShakeListener(new b0(this), this.f43216b.f41644r);
            View view2 = this.f43228n;
            if (view2 != null) {
                view2.setOnClickListener(new c0(this));
            }
        }
        View view3 = this.f39862o0;
        if (view3 != null) {
            view3.setOnClickListener(new e0(this));
        }
    }

    public static void a(LeftSkipSinglePictureSplashATView leftSkipSinglePictureSplashATView, int i2) {
        Context context;
        RoundImageView roundImageView = (RoundImageView) leftSkipSinglePictureSplashATView.findViewById(k.a(leftSkipSinglePictureSplashATView.getContext(), "myoffer_splash_enter_immediately_icon", "id"));
        if (roundImageView == null) {
            return;
        }
        c cVar = leftSkipSinglePictureSplashATView.f43217c;
        String str = cVar != null ? cVar.f41814e : null;
        if (TextUtils.isEmpty(str)) {
            roundImageView.setVisibility(8);
            ViewParent parent = roundImageView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup == null || (context = roundImageView.getContext()) == null) {
                return;
            }
            int i3 = (int) ((context.getResources().getDisplayMetrics().density * 12.0f) + 0.5f);
            viewGroup.setPadding(i3, viewGroup.getPaddingTop(), i3, viewGroup.getPaddingBottom());
            return;
        }
        roundImageView.setVisibility(0);
        a(roundImageView);
        roundImageView.setNeedRadiu(true);
        roundImageView.setRadiusInDip(4);
        int iMax = Math.max(k.a(leftSkipSinglePictureSplashATView.getContext(), 24.0f), k.a(leftSkipSinglePictureSplashATView.getContext(), 48.0f));
        m.a(leftSkipSinglePictureSplashATView.getContext()).a(new o(1, str), iMax, iMax, new g0(i2, leftSkipSinglePictureSplashATView, roundImageView, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.smartdigimkt.sdk.basead.ui.component.RoundImageView r6) {
        /*
            if (r6 != 0) goto L3
            goto Le
        L3:
            android.view.ViewParent r0 = r6.getParent()
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 == 0) goto Le
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            goto Lf
        Le:
            r0 = 0
        Lf:
            if (r0 != 0) goto L12
            goto L18
        L12:
            android.content.Context r6 = r6.getContext()
            if (r6 != 0) goto L19
        L18:
            return
        L19:
            int r1 = r0.getPaddingTop()
            int r2 = r0.getPaddingBottom()
            char[] r3 = com.smartdigimkt.c5.k.f39779a
            android.content.res.Resources r3 = r6.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            float r3 = r3.density
            r4 = 1082130432(0x40800000, float:4.0)
            float r3 = r3 * r4
            r4 = 1056964608(0x3f000000, float:0.5)
            float r3 = r3 + r4
            int r3 = (int) r3
            android.content.res.Resources r6 = r6.getResources()
            android.util.DisplayMetrics r6 = r6.getDisplayMetrics()
            float r6 = r6.density
            r5 = 1094713344(0x41400000, float:12.0)
            float r6 = r6 * r5
            float r6 = r6 + r4
            int r6 = (int) r6
            r0.setPadding(r3, r1, r6, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.china.formatbusiness.ui.LeftSkipSinglePictureSplashATView.a(com.smartdigimkt.sdk.basead.ui.component.RoundImageView):void");
    }
}
