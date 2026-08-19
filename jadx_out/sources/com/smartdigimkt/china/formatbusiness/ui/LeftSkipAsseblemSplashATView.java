package com.smartdigimkt.china.formatbusiness.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e.r;
import com.smartdigimkt.e.s;
import com.smartdigimkt.e.u;
import com.smartdigimkt.e.v;
import com.smartdigimkt.e.w;
import com.smartdigimkt.e.x;
import com.smartdigimkt.e.y;
import com.smartdigimkt.e.z;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.r2.n;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView;
import com.smartdigimkt.sdk.basead.ui.SplashShakeTextHintView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes5.dex */
public class LeftSkipAsseblemSplashATView extends AsseblemSplashATView {

    /* renamed from: s0, reason: collision with root package name */
    public static final /* synthetic */ int f39855s0 = 0;

    /* renamed from: p0, reason: collision with root package name */
    public TextView f39856p0;

    /* renamed from: q0, reason: collision with root package name */
    public SplashShakeTextHintView f39857q0;

    /* renamed from: r0, reason: collision with root package name */
    public View f39858r0;

    public LeftSkipAsseblemSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }

    public static void a(int i2, LeftSkipAsseblemSplashATView leftSkipAsseblemSplashATView, RoundImageView roundImageView, String str) {
        Context context;
        leftSkipAsseblemSplashATView.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (i2 < 4) {
            long j2 = (i2 * 100) + 80;
            if (roundImageView != null) {
                roundImageView.postDelayed(new z(leftSkipAsseblemSplashATView, i2), j2);
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

    @Override // com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public void beforeSplashEndCardShow() {
        super.beforeSplashEndCardShow();
        View view = this.f39858r0;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        View viewInflate = this.f43216b.f41644r.f41951m == 2 ? LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_asseblem_vertical_land_left_skip", "layout"), this) : LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_asseblem_vertical_port_left_skip", "layout"), this);
        p();
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new r(this);
            tVar.a(getContext(), viewInflate);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void p() {
        super.p();
        post(new x(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void q() {
        View viewFindViewById = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        this.f43228n = viewFindViewById;
        if (viewFindViewById != null) {
            this.f43225k.add(viewFindViewById);
        }
        this.f39856p0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_cta_text", "id"));
        this.f39857q0 = (SplashShakeTextHintView) findViewById(k.a(getContext(), "myoffer_splash_cta_shake", "id"));
        this.f39858r0 = findViewById(k.a(getContext(), "myoffer_splash_enter_immediately_area", "id"));
        if (!com.smartdigimkt.z.z.d(this.f43216b) || this.f39857q0 == null) {
            SplashShakeTextHintView splashShakeTextHintView = this.f39857q0;
            if (splashShakeTextHintView != null) {
                splashShakeTextHintView.setVisibility(8);
            }
            TextView textView = this.f39856p0;
            if (textView != null) {
                textView.setVisibility(0);
                if (TextUtils.isEmpty(this.f43217c.f41817h)) {
                    this.f39856p0.setText(com.smartdigimkt.z.z.a(getContext(), this.f43217c));
                } else {
                    this.f39856p0.setText(this.f43217c.f41817h);
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
                this.f43228n.setOnClickListener(new u(this));
            }
        } else {
            TextView textView2 = this.f39856p0;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            this.f39857q0.setTextSize(17);
            this.f39857q0.setVisibility(0);
            SplashShakeTextHintView splashShakeTextHintView2 = this.f39857q0;
            e eVar = this.f43216b.f41644r;
            c cVar = this.f43217c;
            splashShakeTextHintView2.setShakeSetting(eVar, cVar.f41824o, cVar);
            this.f39857q0.setOnShakeListener(new s(this), this.f43216b.f41644r);
            View view2 = this.f43228n;
            if (view2 != null) {
                view2.setOnClickListener(new com.smartdigimkt.e.t(this));
            }
        }
        View view3 = this.f39858r0;
        if (view3 != null) {
            view3.setOnClickListener(new v(this));
        }
        this.f43179o0 = findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_container", "id"));
        this.f43176l0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_ad_title", "id"));
        this.f43177m0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_desc", "id"));
        this.f43178n0 = (RoundImageView) findViewById(k.a(getContext(), "myoffer_splash_icon", "id"));
        if (TextUtils.isEmpty(this.f43217c.f41814e)) {
            n.a((ImageView) this.f43178n0, false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43178n0.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.rightMargin = 0;
                this.f43178n0.setLayoutParams(layoutParams);
            }
            if (this.f43216b.f41644r.f41951m != 2) {
                TextView textView3 = this.f43176l0;
                if (textView3 != null) {
                    textView3.setGravity(17);
                }
                TextView textView4 = this.f43177m0;
                if (textView4 != null) {
                    textView4.setGravity(17);
                }
            }
        } else {
            this.f43178n0.setVisibility(0);
            this.f43178n0.setNeedRadiu(true);
            this.f43178n0.setRadiusInDip(12);
            int i2 = this.f43178n0.getLayoutParams().width;
            m.a(getContext()).a(new o(1, this.f43217c.f41814e), i2, i2, new w(this));
        }
        if (this.f43216b.f41644r.f41927e != 1) {
            this.f43225k.add(this.f43178n0);
        }
        if (TextUtils.isEmpty(this.f43217c.f41810c)) {
            this.f43176l0.setVisibility(4);
        } else {
            this.f43176l0.setText(this.f43217c.f41810c);
            this.f43176l0.setVisibility(0);
        }
        if (this.f43216b.f41644r.f41927e != 1) {
            this.f43225k.add(this.f43176l0);
        }
        if (this.f43177m0 != null) {
            if (TextUtils.isEmpty(this.f43217c.f41812d)) {
                this.f43177m0.setVisibility(8);
            } else {
                this.f43177m0.setText(this.f43217c.f41812d);
            }
            if (this.f43216b.f41644r.f41927e != 1) {
                this.f43225k.add(this.f43177m0);
            }
        }
    }

    public static void a(LeftSkipAsseblemSplashATView leftSkipAsseblemSplashATView, int i2) {
        Context context;
        RoundImageView roundImageView = (RoundImageView) leftSkipAsseblemSplashATView.findViewById(k.a(leftSkipAsseblemSplashATView.getContext(), "myoffer_splash_enter_immediately_icon", "id"));
        if (roundImageView == null) {
            return;
        }
        c cVar = leftSkipAsseblemSplashATView.f43217c;
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
        int iMax = Math.max(k.a(leftSkipAsseblemSplashATView.getContext(), 24.0f), k.a(leftSkipAsseblemSplashATView.getContext(), 48.0f));
        m.a(leftSkipAsseblemSplashATView.getContext()).a(new o(1, str), iMax, iMax, new y(i2, leftSkipAsseblemSplashATView, roundImageView, str));
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
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.china.formatbusiness.ui.LeftSkipAsseblemSplashATView.a(com.smartdigimkt.sdk.basead.ui.component.RoundImageView):void");
    }
}
