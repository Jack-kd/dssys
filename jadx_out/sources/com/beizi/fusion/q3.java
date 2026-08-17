package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.f.g;
import com.beizi.fusion.a4;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.kn;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.CoordinateBean;
import com.beizi.fusion.widget.ScrollClickView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class q3 extends e2 implements b2 {

    /* renamed from: A0, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.RenderAds f15713A0;

    /* renamed from: B0, reason: collision with root package name */
    protected List f15714B0;

    /* renamed from: C0, reason: collision with root package name */
    protected List f15715C0;

    /* renamed from: U, reason: collision with root package name */
    protected View f15716U;

    /* renamed from: V, reason: collision with root package name */
    protected View f15717V;

    /* renamed from: W, reason: collision with root package name */
    protected View f15718W;

    /* renamed from: X, reason: collision with root package name */
    protected ViewGroup f15719X;

    /* renamed from: Y, reason: collision with root package name */
    protected ViewGroup f15720Y;

    /* renamed from: Z, reason: collision with root package name */
    protected ViewGroup f15721Z;

    /* renamed from: a0, reason: collision with root package name */
    protected ViewGroup f15722a0;

    /* renamed from: b0, reason: collision with root package name */
    protected ViewGroup f15723b0;

    /* renamed from: c0, reason: collision with root package name */
    protected ViewGroup f15724c0;

    /* renamed from: d0, reason: collision with root package name */
    protected ViewGroup f15725d0;

    /* renamed from: e0, reason: collision with root package name */
    protected ViewGroup f15726e0;

    /* renamed from: f0, reason: collision with root package name */
    protected ImageView f15727f0;

    /* renamed from: g0, reason: collision with root package name */
    protected ImageView f15728g0;

    /* renamed from: h0, reason: collision with root package name */
    protected ImageView f15729h0;

    /* renamed from: i0, reason: collision with root package name */
    protected ImageView f15730i0;

    /* renamed from: j0, reason: collision with root package name */
    protected TextView f15731j0;

    /* renamed from: k0, reason: collision with root package name */
    protected TextView f15732k0;

    /* renamed from: l0, reason: collision with root package name */
    protected TextView f15733l0;

    /* renamed from: m0, reason: collision with root package name */
    protected TextView f15734m0;

    /* renamed from: n0, reason: collision with root package name */
    protected TextView f15735n0;

    /* renamed from: o0, reason: collision with root package name */
    protected long f15736o0;

    /* renamed from: p0, reason: collision with root package name */
    protected float f15737p0;

    /* renamed from: q0, reason: collision with root package name */
    protected float f15738q0;

    /* renamed from: r0, reason: collision with root package name */
    protected boolean f15739r0 = false;

    /* renamed from: s0, reason: collision with root package name */
    protected boolean f15740s0 = false;

    /* renamed from: t0, reason: collision with root package name */
    protected boolean f15741t0 = false;

    /* renamed from: u0, reason: collision with root package name */
    protected Context f15742u0;

    /* renamed from: v0, reason: collision with root package name */
    protected Activity f15743v0;

    /* renamed from: w0, reason: collision with root package name */
    protected wn f15744w0;

    /* renamed from: x0, reason: collision with root package name */
    protected kn f15745x0;

    /* renamed from: y0, reason: collision with root package name */
    protected CountDownTimer f15746y0;

    /* renamed from: z0, reason: collision with root package name */
    protected AdSpacesBean.RenderViewBean f15747z0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q3.this.P0();
        }
    }

    public class b implements a4.c {
        public b() {
        }

        @Override // com.beizi.fusion.a4.c
        public void a() {
        }

        @Override // com.beizi.fusion.a4.c
        public void a(Bitmap bitmap) {
            q3.this.f15729h0.setImageBitmap(bitmap);
        }
    }

    public class c extends CountDownTimer {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f15750a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f15751b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f15752c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(long j2, long j3, int i2, int i3, int i4) {
            super(j2, j3);
            this.f15750a = i2;
            this.f15751b = i3;
            this.f15752c = i4;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (this.f15752c == 1) {
                q3.this.V0();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j2) {
            q3 q3Var = q3.this;
            TextView textView = q3Var.f15731j0;
            if (textView == null || q3Var.f15728g0 == null) {
                return;
            }
            int i2 = (int) (j2 / 1000.0f);
            if (this.f15750a - i2 < this.f15751b) {
                textView.setText(String.valueOf(i2));
            } else {
                textView.setVisibility(8);
                q3.this.f15728g0.setVisibility(0);
            }
        }
    }

    public class d implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f15754a;

        /* renamed from: b, reason: collision with root package name */
        float f15755b;

        /* renamed from: c, reason: collision with root package name */
        float f15756c;

        /* renamed from: d, reason: collision with root package name */
        float f15757d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f15758e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f15759f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f15760g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ kn.d f15761h;

        public d(boolean z2, int i2, String str, kn.d dVar) {
            this.f15758e = z2;
            this.f15759f = i2;
            this.f15760g = str;
            this.f15761h = dVar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            kn.d dVar;
            kn.d dVar2;
            kn.d dVar3;
            kn.d dVar4;
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f15754a = motionEvent.getX();
                this.f15755b = motionEvent.getY();
                this.f15756c = motionEvent.getX();
                this.f15757d = motionEvent.getY();
                if (this.f15758e) {
                    q3.this.f15719X.onTouchEvent(motionEvent);
                } else {
                    q3.this.f15721Z.dispatchTouchEvent(motionEvent);
                }
            } else if (action == 1) {
                mh.c("SlideClickUtil", "mCurPosX = " + this.f15756c + ",mCurPosY = " + this.f15757d + ",mPosX = " + this.f15754a + ",mPosY = " + this.f15755b);
                float f2 = this.f15757d;
                float f3 = this.f15755b;
                float f4 = f2 - f3;
                float f5 = (float) this.f15759f;
                if (f4 > f5) {
                    if (!TextUtils.isEmpty(q3.this.f15713A0.getScrollCoordinate()) && !q3.this.f15713A0.getScrollCoordinate().equals("-1:-1:-1:-1:-1:-1:-1:-1:-1")) {
                        q3.this.b(this.f15758e);
                    } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f15760g) && (dVar4 = this.f15761h) != null) {
                        dVar4.b();
                    }
                } else if (f3 - f2 <= f5) {
                    float f6 = this.f15754a;
                    float f7 = this.f15756c;
                    if (f6 - f7 > f5) {
                        if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f15760g) && (dVar2 = this.f15761h) != null) {
                            dVar2.b();
                        }
                    } else if (f7 - f6 > f5) {
                        if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f15760g) && (dVar = this.f15761h) != null) {
                            dVar.b();
                        }
                    } else if (this.f15758e) {
                        q3.this.f15719X.onTouchEvent(motionEvent);
                    } else {
                        q3.this.f15721Z.dispatchTouchEvent(motionEvent);
                    }
                } else if ("up".equalsIgnoreCase(this.f15760g) && (dVar3 = this.f15761h) != null) {
                    dVar3.b();
                }
            } else if (action == 2) {
                this.f15756c = motionEvent.getX();
                this.f15757d = motionEvent.getY();
            }
            return true;
        }
    }

    public q3(Context context, long j2, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, int i2) {
        this.f15742u0 = context;
        this.f15736o0 = j2;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13594D = i2;
        this.f13616f = forwardBean;
        this.f15737p0 = vo.h(context);
        this.f15738q0 = vo.e(context);
        X0();
        C();
    }

    private void Y0() {
        n3 n3Var = this.f13614d;
        if (n3Var == null) {
            return;
        }
        Map mapC = n3Var.C();
        x();
        mapC.toString();
        f();
        u5 u5Var = this.f13617g;
        if (u5Var != u5.SUCCESS) {
            if (u5Var == u5.FAIL) {
                x();
            }
        } else {
            i1();
            if (this.f15718W != null) {
                this.f13614d.b(x(), this.f15718W);
            } else {
                this.f13614d.a(10140);
            }
        }
    }

    private void a1() {
        ((FrameLayout) this.f15716U).removeView(this.f15718W);
    }

    private void b(Activity activity) {
        if (activity == null || this.f15718W == null) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        this.f15716U = decorView;
        if (decorView instanceof FrameLayout) {
            vo.a(this.f15718W);
            ((FrameLayout) this.f15716U).addView(this.f15718W);
            b(this.f15720Y);
        }
    }

    private void c(int i2, int i3) {
        a(this.f15719X, this.f15713A0.getBgCoordinate(), i2, i3);
        int i4 = this.f15719X.getLayoutParams().width;
        int i5 = this.f15719X.getLayoutParams().height;
        b(i4, i5);
        h(i4, i5);
    }

    private void d(int i2, int i3) {
        a(this.f15723b0, this.f15713A0.getCloseCoordinate(), i2, i3);
    }

    private void e(int i2, int i3) {
        a(this.f15733l0, this.f15713A0.getDescCoordinate(), i2, i3);
        if (TextUtils.isEmpty(R0())) {
            return;
        }
        this.f15733l0.setText(R0());
    }

    private void f(int i2, int i3) {
        a(this.f15729h0, this.f15713A0.getIconCoordinate(), i2, i3);
        if (this.f15729h0.getVisibility() != 0 || TextUtils.isEmpty(S0())) {
            return;
        }
        a4.a(this.f15742u0).a(S0(), new b());
    }

    private void f1() {
        List<String> clickView = this.f15713A0.getClickView();
        ArrayList arrayList = new ArrayList();
        if (clickView != null && clickView.size() > 0) {
            if (clickView.contains("bg")) {
                arrayList.add(this.f15719X);
                arrayList.add(this.f15721Z);
                arrayList.add(this.f15725d0);
            } else if (clickView.contains("ad")) {
                arrayList.add(this.f15721Z);
            } else {
                if (clickView.contains("image")) {
                    arrayList.add(this.f15722a0);
                }
                if (clickView.contains(g.a.f3271h)) {
                    arrayList.add(this.f15732k0);
                }
                if (clickView.contains("desc")) {
                    arrayList.add(this.f15733l0);
                }
                if (clickView.contains("icon")) {
                    arrayList.add(this.f15729h0);
                }
                if (clickView.contains(com.umeng.ccg.a.f49744F)) {
                    arrayList.add(this.f15724c0);
                }
            }
        }
        a(arrayList);
    }

    private void g(int i2, int i3) {
        a(this.f15722a0, this.f15713A0.getImageCoordinate(), i2, i3);
        h1();
    }

    private void i(int i2, int i3) {
        a(this.f15732k0, this.f15713A0.getTitleCoordinate(), i2, i3);
        if (TextUtils.isEmpty(U0())) {
            return;
        }
        this.f15732k0.setText(U0());
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        this.f15713A0 = this.f13615e.getRenderAds();
        c1();
    }

    @Override // com.beizi.fusion.e2
    public void B0() {
        if (this.f13614d == null || T0() == -1) {
            return;
        }
        this.f13618h = this.f13615e.getAppId();
        this.f13619i = this.f13615e.getSpaceId();
        this.f13613c = this.f13615e.getBuyerSpaceUuId();
        List<AdSpacesBean.RenderViewBean> renderView = this.f13615e.getRenderView();
        this.f15714B0 = renderView;
        if (renderView != null && renderView.size() > 0) {
            AdSpacesBean.RenderViewBean renderViewBean = (AdSpacesBean.RenderViewBean) this.f15714B0.get(0);
            this.f15747z0 = renderViewBean;
            this.f15715C0 = m6.a(renderViewBean.getDpLinkUrlList());
        }
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            EventBean eventBeanB = lkVar.a().b(this.f13613c);
            this.f13612b = eventBeanB;
            if (eventBeanB != null) {
                D();
                b1();
            }
        }
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    public void N0() {
        n3 n3Var = this.f13614d;
        if (n3Var != null && n3Var.z() != 2) {
            this.f13614d.b(x());
        }
        if (this.f15740s0) {
            return;
        }
        this.f15740s0 = true;
        Z();
        J0();
        if (this.f13594D != 2) {
            V0();
        }
    }

    public void O0() {
        this.f13620j = c2.ADSHOW;
        n3 n3Var = this.f13614d;
        if (n3Var != null && n3Var.z() != 2) {
            this.f13614d.d(x());
        }
        if (this.f15739r0) {
            return;
        }
        this.f15739r0 = true;
        g1();
        j0();
        e0();
        M0();
    }

    public abstract void P0();

    public abstract String Q0();

    public abstract String R0();

    public abstract String S0();

    public abstract int T0();

    public abstract String U0();

    public void V0() {
        wn wnVar = this.f15744w0;
        if (wnVar != null) {
            wnVar.q();
        }
        kn knVar = this.f15745x0;
        if (knVar != null) {
            knVar.b();
        }
        y();
        c0();
        c(this.f15743v0);
    }

    public void W0() {
        if (this.f15713A0 != null) {
            c((int) this.f15737p0, (int) this.f15738q0);
            this.f15728g0.setOnClickListener(new a());
        }
        this.f15718W = this.f15717V;
        d1();
    }

    public void X0() {
        if (T0() == -1) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.f15742u0).inflate(T0(), (ViewGroup) null);
        this.f15717V = viewInflate;
        this.f15719X = (ViewGroup) viewInflate.findViewById(R.id.rl_bg_container);
        this.f15720Y = (ViewGroup) this.f15717V.findViewById(R.id.rl_anim_container);
        this.f15721Z = (ViewGroup) this.f15717V.findViewById(R.id.rl_container);
        this.f15722a0 = (ViewGroup) this.f15717V.findViewById(R.id.fl_img_container);
        this.f15727f0 = (ImageView) this.f15717V.findViewById(R.id.iv_imageview);
        this.f15723b0 = (ViewGroup) this.f15717V.findViewById(R.id.rl_close);
        this.f15731j0 = (TextView) this.f15717V.findViewById(R.id.tv_close);
        this.f15728g0 = (ImageView) this.f15717V.findViewById(R.id.iv_close);
        this.f15732k0 = (TextView) this.f15717V.findViewById(R.id.tv_title);
        this.f15733l0 = (TextView) this.f15717V.findViewById(R.id.tv_desc);
        this.f15729h0 = (ImageView) this.f15717V.findViewById(R.id.iv_icon);
        this.f15724c0 = (ViewGroup) this.f15717V.findViewById(R.id.rl_action);
        this.f15734m0 = (TextView) this.f15717V.findViewById(R.id.tv_action);
        this.f15725d0 = (ViewGroup) this.f15717V.findViewById(R.id.rl_slide_down_container);
        this.f15735n0 = (TextView) this.f15717V.findViewById(R.id.tv_slide_down_title);
        this.f15730i0 = (ImageView) this.f15717V.findViewById(R.id.iv_slide_down_arrow);
        this.f15726e0 = (ViewGroup) this.f15717V.findViewById(R.id.fl_event_container);
    }

    public void Z0() {
        try {
            if (W()) {
                Y0();
            } else {
                A();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void a(Activity activity) {
        try {
            if (this.f15741t0) {
                return;
            }
            this.f15741t0 = true;
            this.f15743v0 = activity;
            b(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public abstract void a(List list);

    public abstract void b(boolean z2);

    public abstract void b1();

    public abstract void c1();

    public abstract void d1();

    public void e1() {
    }

    @Override // com.beizi.fusion.e2
    public abstract void g();

    public void g1() {
        AdSpacesBean.BuyerBean.RenderAds renderAds;
        if (this.f15731j0 == null || this.f15728g0 == null || (renderAds = this.f15713A0) == null) {
            return;
        }
        if (renderAds.getAutoClose() == 0 && this.f15713A0.getMinTime() == 0) {
            this.f15731j0.setVisibility(8);
            this.f15728g0.setVisibility(0);
        } else {
            this.f15728g0.setVisibility(8);
            this.f15731j0.setVisibility(0);
            a(this.f15713A0.getAutoClose(), this.f15713A0.getMinTime(), this.f15713A0.getMaxTime());
        }
        this.f15723b0.setVisibility(0);
    }

    @Override // com.beizi.fusion.e2
    public c2 h() {
        return this.f13620j;
    }

    public abstract void h1();

    public abstract void i1();

    @Override // com.beizi.fusion.e2
    public AdSpacesBean.BuyerBean m() {
        return this.f13615e;
    }

    @Override // com.beizi.fusion.e2
    public View r() {
        return this.f15718W;
    }

    @Override // com.beizi.fusion.e2
    public abstract String x();

    private void h(int i2, int i3) {
        b(this.f15725d0, this.f15713A0.getScrollCoordinate(), i2, i3);
    }

    private void a(int i2, int i3) {
        a(this.f15724c0, this.f15713A0.getActionCoordinate(), i2, i3);
        if (TextUtils.isEmpty(Q0())) {
            return;
        }
        this.f15734m0.setText(Q0());
    }

    private void b(View view) {
        if (view != null) {
            view.setVisibility(8);
            TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
            translateAnimation.setDuration(500L);
            view.setVisibility(0);
            view.startAnimation(translateAnimation);
        }
    }

    private void c(Activity activity) {
        if (activity != null) {
            if (this.f15716U == null) {
                this.f15716U = activity.getWindow().getDecorView();
            }
            if (this.f15716U instanceof FrameLayout) {
                a1();
            }
        }
        g();
    }

    private void a(int i2, int i3, int i4) {
        CountDownTimer countDownTimer = this.f15746y0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        c cVar = new c((i4 * 1000) + 600, 1000L, i4, i3, i2);
        this.f15746y0 = cVar;
        cVar.start();
    }

    private void b(int i2, int i3) {
        String adCoordinate = this.f15713A0.getAdCoordinate();
        a(this.f15721Z, adCoordinate, i2, i3);
        a(this.f15726e0, adCoordinate, i2, i3);
        int i4 = this.f15721Z.getLayoutParams().width;
        int i5 = this.f15721Z.getLayoutParams().height;
        g(i4, i5);
        i(i4, i5);
        e(i4, i5);
        f(i4, i5);
        a(i4, i5);
        d(i4, i5);
        e1();
        f1();
    }

    private void a(View view, String str, int i2, int i3) {
        RelativeLayout.LayoutParams layoutParams;
        boolean z2;
        if (view == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            view.setVisibility(8);
            return;
        }
        if (str.equals("-1:-1:-1:-1:-1:-1:-1:-1:-1")) {
            view.setVisibility(8);
            return;
        }
        CoordinateBean coordinate = CoordinateBean.getCoordinate(str);
        if (coordinate == null) {
            view.setVisibility(8);
            return;
        }
        int[] iArrA = a(coordinate, i2, i3);
        int[] iArrA2 = a(coordinate, i2, i3, iArrA);
        boolean z3 = view instanceof TextView;
        if (z3) {
            layoutParams = new RelativeLayout.LayoutParams(iArrA2[0], -2);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(iArrA2[0], iArrA2[1]);
        }
        layoutParams.setMargins(iArrA[0], iArrA[1], iArrA[2], iArrA[3]);
        if (!coordinate.getTop().equals("-1") || coordinate.getBottom().equals("-1")) {
            z2 = false;
        } else {
            layoutParams.addRule(12, -1);
            z2 = true;
        }
        if (coordinate.getLeft().equals("-1") && !coordinate.getRight().equals("-1")) {
            layoutParams.addRule(11, -1);
        }
        view.setLayoutParams(layoutParams);
        if (!coordinate.getFontOrCorner().equals("-1")) {
            if (z3) {
                ((TextView) view).setTextSize(Float.parseFloat(coordinate.getFontOrCorner()));
            } else if (view.getBackground() instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
                if (view != this.f15723b0 && view != this.f15724c0) {
                    int iA = vo.a(this.f15742u0, Float.parseFloat(coordinate.getFontOrCorner()));
                    if (z2) {
                        float f2 = iA;
                        gradientDrawable.setCornerRadii(new float[]{f2, f2, f2, f2, 0.0f, 0.0f, 0.0f, 0.0f});
                    } else {
                        gradientDrawable.setCornerRadius(iA);
                    }
                } else {
                    gradientDrawable.setCornerRadius(iArrA2[1]);
                }
            }
        }
        if (coordinate.getColor().equals("-1")) {
            return;
        }
        if (z3) {
            ((TextView) view).setTextColor(Color.parseColor(coordinate.getColor()));
        } else if (view != this.f15726e0) {
            if (view.getBackground() instanceof GradientDrawable) {
                ((GradientDrawable) view.getBackground()).setColor(Color.parseColor(coordinate.getColor()));
            } else {
                view.setBackgroundColor(Color.parseColor(coordinate.getColor()));
            }
        }
    }

    private int b(String str, int i2) {
        if (str.contains("%")) {
            return (i2 * ((int) Float.parseFloat(str.substring(0, str.indexOf("%"))))) / 100;
        }
        return vo.a(this.f15742u0, Float.parseFloat(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0285  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.view.View r20, java.lang.String r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.q3.b(android.view.View, java.lang.String, int, int):void");
    }

    private int[] a(CoordinateBean coordinateBean, int i2, int i3, int[] iArr) {
        int iB;
        int iB2;
        if (coordinateBean.getWidth().equals("-1")) {
            iB = (i2 - iArr[0]) - iArr[2];
        } else {
            iB = b(coordinateBean.getWidth(), i2);
        }
        if (!coordinateBean.getScale().equals("-1") && !coordinateBean.getScale().equals("0")) {
            iB2 = (int) (iB / Float.parseFloat(coordinateBean.getScale()));
        } else if (coordinateBean.getHeight().equals("-1")) {
            iB2 = (i3 - iArr[1]) - iArr[3];
        } else {
            iB2 = b(coordinateBean.getHeight(), i3);
        }
        return new int[]{iB, iB2};
    }

    private int[] a(CoordinateBean coordinateBean, int i2, int i3) {
        String left = coordinateBean.getLeft();
        int iB = 0;
        int iB2 = (left.equals("0%") || left.equals("0") || left.equals("-1")) ? 0 : b(left, i2);
        String top = coordinateBean.getTop();
        int iB3 = (top.equals("0%") || top.equals("0") || top.equals("-1")) ? 0 : b(top, i3);
        String right = coordinateBean.getRight();
        int iB4 = (right.equals("0%") || right.equals("0") || right.equals("-1")) ? 0 : b(right, i2);
        String bottom = coordinateBean.getBottom();
        if (!bottom.equals("0%") && !bottom.equals("0") && !bottom.equals("-1")) {
            iB = b(bottom, i3);
        }
        return new int[]{iB2, iB3, iB4, iB};
    }

    public void a(View view) {
        a(view, "", 30, (kn.d) null);
    }

    public void a(View view, String str, int i2, kn.d dVar) {
        view.setOnTouchListener(new d(view == this.f15719X, vo.a(this.f15742u0, i2), str, dVar));
    }
}
