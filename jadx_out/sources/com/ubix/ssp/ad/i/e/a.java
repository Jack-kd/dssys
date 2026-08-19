package com.ubix.ssp.ad.i.e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kwad.library.solder.lib.ext.PluginError;
import com.sigmob.sdk.base.common.C1244a;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.m;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.open.AdError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class a extends RelativeLayout implements View.OnClickListener {

    /* renamed from: A, reason: collision with root package name */
    protected int f48185A;

    /* renamed from: B, reason: collision with root package name */
    protected int f48186B;

    /* renamed from: C, reason: collision with root package name */
    protected int f48187C;

    /* renamed from: D, reason: collision with root package name */
    protected int f48188D;

    /* renamed from: E, reason: collision with root package name */
    protected int f48189E;

    /* renamed from: F, reason: collision with root package name */
    protected int f48190F;

    /* renamed from: G, reason: collision with root package name */
    protected int f48191G;

    /* renamed from: H, reason: collision with root package name */
    protected int f48192H;

    /* renamed from: I, reason: collision with root package name */
    protected int f48193I;

    /* renamed from: J, reason: collision with root package name */
    protected int f48194J;

    /* renamed from: K, reason: collision with root package name */
    protected int f48195K;

    /* renamed from: L, reason: collision with root package name */
    protected int f48196L;

    /* renamed from: M, reason: collision with root package name */
    protected int f48197M;

    /* renamed from: N, reason: collision with root package name */
    protected com.ubix.ssp.ad.g.k.g f48198N;

    /* renamed from: O, reason: collision with root package name */
    private int f48199O;

    /* renamed from: P, reason: collision with root package name */
    private int f48200P;

    /* renamed from: Q, reason: collision with root package name */
    protected double f48201Q;

    /* renamed from: R, reason: collision with root package name */
    protected int f48202R;

    /* renamed from: S, reason: collision with root package name */
    protected boolean f48203S;

    /* renamed from: T, reason: collision with root package name */
    private double f48204T;

    /* renamed from: U, reason: collision with root package name */
    private int f48205U;

    /* renamed from: V, reason: collision with root package name */
    private boolean f48206V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f48207W;

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, String> f48208a;

    /* renamed from: a0, reason: collision with root package name */
    boolean f48209a0;

    /* renamed from: b, reason: collision with root package name */
    private HashMap<String, Drawable> f48210b;

    /* renamed from: b0, reason: collision with root package name */
    private int f48211b0;

    /* renamed from: c, reason: collision with root package name */
    RelativeLayout.LayoutParams f48212c;

    /* renamed from: c0, reason: collision with root package name */
    private float f48213c0;

    /* renamed from: d, reason: collision with root package name */
    RelativeLayout.LayoutParams f48214d;

    /* renamed from: d0, reason: collision with root package name */
    private int f48215d0;

    /* renamed from: e, reason: collision with root package name */
    RelativeLayout.LayoutParams f48216e;

    /* renamed from: e0, reason: collision with root package name */
    private int f48217e0;

    /* renamed from: f, reason: collision with root package name */
    RelativeLayout.LayoutParams f48218f;

    /* renamed from: f0, reason: collision with root package name */
    protected boolean f48219f0;

    /* renamed from: g, reason: collision with root package name */
    RelativeLayout.LayoutParams f48220g;

    /* renamed from: g0, reason: collision with root package name */
    private ObjectAnimator f48221g0;

    /* renamed from: h, reason: collision with root package name */
    RelativeLayout.LayoutParams f48222h;

    /* renamed from: h0, reason: collision with root package name */
    private boolean f48223h0;

    /* renamed from: i, reason: collision with root package name */
    RelativeLayout.LayoutParams f48224i;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f48225i0;

    /* renamed from: j, reason: collision with root package name */
    RelativeLayout.LayoutParams f48226j;

    /* renamed from: j0, reason: collision with root package name */
    private float f48227j0;

    /* renamed from: k, reason: collision with root package name */
    protected RelativeLayout f48228k;

    /* renamed from: k0, reason: collision with root package name */
    private float f48229k0;

    /* renamed from: l, reason: collision with root package name */
    protected com.ubix.ssp.ad.e.t.a.e f48230l;

    /* renamed from: m, reason: collision with root package name */
    protected com.ubix.ssp.ad.e.t.a.e[] f48231m;

    /* renamed from: n, reason: collision with root package name */
    protected TextView f48232n;

    /* renamed from: o, reason: collision with root package name */
    protected ImageView f48233o;

    /* renamed from: p, reason: collision with root package name */
    private Path f48234p;

    /* renamed from: q, reason: collision with root package name */
    private Paint f48235q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f48236r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f48237s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f48238t;

    /* renamed from: u, reason: collision with root package name */
    protected float f48239u;

    /* renamed from: v, reason: collision with root package name */
    protected String f48240v;

    /* renamed from: w, reason: collision with root package name */
    protected String f48241w;

    /* renamed from: x, reason: collision with root package name */
    protected String f48242x;

    /* renamed from: y, reason: collision with root package name */
    protected int f48243y;

    /* renamed from: z, reason: collision with root package name */
    protected int f48244z;

    /* renamed from: com.ubix.ssp.ad.i.e.a$a, reason: collision with other inner class name */
    public class RunnableC0846a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f48245a;

        public RunnableC0846a(boolean z2) {
            this.f48245a = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f48245a) {
                    a.this.n();
                }
                a.this.o();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b extends com.ubix.ssp.ad.g.k.g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.f f48247a;

        public b(com.ubix.ssp.ad.d.f fVar) {
            this.f48247a = fVar;
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void a(int i2, long j2, long j3) {
            com.ubix.ssp.ad.g.k.g gVar = a.this.f48198N;
            if (gVar != null) {
                gVar.a(0, j2, j3);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            super.b(i2, view, map);
            com.ubix.ssp.ad.d.f fVar = this.f48247a;
            if (fVar != null) {
                fVar.b();
            }
            a.this.onClick(view);
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void c(int i2) {
            RelativeLayout relativeLayout = (RelativeLayout) a.this.findViewById(2020001);
            if (a.this.f48228k != null && relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
            com.ubix.ssp.ad.e.t.a.e eVar = a.this.f48230l;
            if (eVar != null) {
                eVar.setVisibility(0);
            }
            if (a.this.findViewById(200015) != null) {
                a.this.findViewById(200015).setVisibility(4);
            }
            RelativeLayout relativeLayout2 = (RelativeLayout) a.this.findViewById(2010001);
            if (relativeLayout2 != null) {
                relativeLayout2.bringToFront();
            }
            com.ubix.ssp.ad.g.k.g gVar = a.this.f48198N;
            if (gVar != null) {
                gVar.c(i2);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void g(int i2) {
            com.ubix.ssp.ad.g.k.g gVar;
            if (!a.this.f48207W || (gVar = a.this.f48198N) == null) {
                return;
            }
            gVar.g(i2);
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void h(int i2) {
            super.h(i2);
            u.a("onVideoPlayStarted");
            a.this.f48207W = true;
            com.ubix.ssp.ad.e.t.a.e eVar = a.this.f48230l;
            if (eVar != null) {
                eVar.setVisibility(4);
            }
            View viewFindViewById = a.this.findViewById(200019);
            if (viewFindViewById != null) {
                viewFindViewById.bringToFront();
            }
            com.ubix.ssp.ad.g.k.g gVar = a.this.f48198N;
            if (gVar != null) {
                gVar.h(i2);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void j(int i2) {
            com.ubix.ssp.ad.g.k.g gVar;
            if (!a.this.f48207W || (gVar = a.this.f48198N) == null) {
                return;
            }
            gVar.j(i2);
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void a(int i2, AdError adError) {
            com.ubix.ssp.ad.g.k.g gVar = a.this.f48198N;
            if (gVar != null) {
                gVar.a(i2, com.ubix.ssp.ad.e.a0.a0.a.d(2, "加载在线文件失败"));
            }
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f48249a;

        public c(ImageView imageView) {
            this.f48249a = imageView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            try {
                ImageView imageView = this.f48249a;
                if (imageView != null && imageView.isShown()) {
                    return;
                }
                if (a.this.f48221g0 != null) {
                    a.this.f48221g0.cancel();
                    a.this.f48221g0.removeAllListeners();
                    a.this.f48221g0 = null;
                }
                u.a("startShakeAnim shifangle");
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z2) {
            super.onAnimationEnd(animator, z2);
            if (a.this.f48221g0 != null) {
                a.this.f48221g0.removeAllListeners();
            }
            a.this.f48221g0 = null;
            a.this.f48223h0 = false;
            ViewGroup viewGroup = (ViewGroup) a.this.findViewById(2040001);
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
        }
    }

    public class e implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f48252a;

        public e(ImageView imageView) {
            this.f48252a = imageView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ImageView imageView = this.f48252a;
            if (imageView != null && imageView.isShown()) {
                a.this.f48223h0 = true;
                return;
            }
            a.this.f48223h0 = false;
            valueAnimator.cancel();
            if (a.this.f48221g0 != null) {
                a.this.f48221g0.removeAllListeners();
            }
            a.this.f48221g0 = null;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iH = r.a().h(a.this.getContext());
            PathMeasure pathMeasure = new PathMeasure(a.this.f48234p, false);
            if (pathMeasure.getLength() > iH * a.this.f48204T) {
                float fRound = Math.round((pathMeasure.getLength() / a.this.getWidth()) * 100.0f) / 100.0f;
                a.this.f48208a.put("__TRI_VAL__", Base64.encodeToString((fRound + "").getBytes(), 10));
                a.this.f48208a.put("__CLICK_AREA__", "7");
                a.this.f48208a.put("__CLICK_TRIGGER__", "7");
                a aVar = a.this;
                com.ubix.ssp.ad.g.k.g gVar = aVar.f48198N;
                if (gVar != null) {
                    int i2 = aVar.f48200P;
                    a aVar2 = a.this;
                    gVar.b(i2, aVar2, aVar2.f48208a);
                }
            }
            a.this.f48234p.reset();
            a.this.postInvalidate();
        }
    }

    public a(Context context) {
        super(context);
        this.f48208a = new HashMap<>();
        this.f48210b = new HashMap<>();
        this.f48212c = new RelativeLayout.LayoutParams(-1, -2);
        this.f48214d = new RelativeLayout.LayoutParams(-1, -2);
        this.f48231m = new com.ubix.ssp.ad.e.t.a.e[3];
        this.f48234p = new Path();
        this.f48235q = new Paint();
        this.f48236r = false;
        this.f48239u = 0.0f;
        this.f48242x = "";
        this.f48201Q = 4.0d;
        this.f48202R = 2;
        this.f48203S = false;
        this.f48204T = 0.0d;
        this.f48205U = 5;
        this.f48206V = true;
        this.f48207W = false;
        this.f48209a0 = false;
        this.f48211b0 = 0;
        this.f48213c0 = 0.05f;
        this.f48215d0 = 5;
        this.f48217e0 = 5;
        this.f48219f0 = false;
        this.f48223h0 = false;
        this.f48225i0 = false;
        this.f48201Q = r.a().a(context);
    }

    private void m() {
        a(this, 920101);
    }

    public abstract void a(String[] strArr, String[] strArr2);

    public abstract void c(Bundle bundle);

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f48203S) {
            canvas.drawPath(this.f48234p, this.f48235q);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0048  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.i.e.a.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public RelativeLayout e() {
        return b(true);
    }

    public RelativeLayout g() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2050001);
        return relativeLayout;
    }

    public int getAdHeight() {
        return this.f48190F;
    }

    public int getAdWidth() {
        return this.f48189E;
    }

    public int getTemplateId() {
        return this.f48199O;
    }

    public RelativeLayout h() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2020001);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        TextView textView = new TextView(getContext());
        textView.setId(2000016);
        textView.setGravity(17);
        textView.setTextSize(this.f48193I);
        textView.setSingleLine();
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(-1);
        textView.setText(this.f48242x);
        int i2 = (int) (this.f48201Q * 6.0d);
        textView.setPadding(i2, i2, i2, i2);
        textView.setBackgroundColor(-12542209);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        relativeLayout.setBackgroundColor(Color.parseColor("#99000000"));
        relativeLayout.setVisibility(8);
        return relativeLayout;
    }

    public boolean i() {
        return this.f48236r;
    }

    public void j() {
        try {
            u.e("removeAnim");
            ObjectAnimator objectAnimator = this.f48221g0;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.f48221g0.removeAllListeners();
                this.f48221g0 = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void k() {
        j();
    }

    public abstract void l();

    public Animation n() {
        ImageView imageView = (ImageView) findViewById(910101);
        if (imageView == null || imageView.getWidth() == 0 || this.f48221g0 != null) {
            return null;
        }
        imageView.setPivotX(imageView.getWidth());
        imageView.setPivotY(imageView.getWidth());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, C1244a.f35650B, 0.0f, 2.0f, -6.0f, 6.0f, -6.0f, 3.0f, 0.0f);
        this.f48221g0 = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setStartDelay(500L);
        this.f48221g0.setDuration(1800L);
        this.f48221g0.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f48221g0.setRepeatCount(-1);
        this.f48221g0.start();
        this.f48221g0.addUpdateListener(new c(imageView));
        return null;
    }

    public Animation o() {
        ImageView imageView = (ImageView) findViewById(200023);
        ImageView imageView2 = (ImageView) findViewById(200022);
        if (imageView != null && imageView2 != null && imageView2.getRight() != 0 && imageView.getRight() != 0 && this.f48221g0 == null && !this.f48223h0) {
            ViewGroup viewGroup = (ViewGroup) findViewById(2040001);
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
            imageView.setTranslationX(0.0f);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "translationX", imageView2.getRight() - imageView.getRight());
            this.f48221g0 = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setStartDelay(500L);
            this.f48221g0.setDuration(1200L);
            this.f48221g0.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f48221g0.setRepeatCount(2);
            this.f48221g0.start();
            ArrayList<Animator.AnimatorListener> listeners = this.f48221g0.getListeners();
            if (listeners == null || listeners.size() == 0) {
                this.f48221g0.addListener(new d());
                this.f48221g0.addUpdateListener(new e(imageView));
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f48223h0 = false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2000014) {
            com.ubix.ssp.ad.g.k.g gVar = this.f48198N;
            if (gVar != null) {
                gVar.e(this.f48200P);
                return;
            }
            return;
        }
        this.f48208a.put("__CLICK_AREA__", "1");
        this.f48208a.put("__CLICK_TRIGGER__", "1");
        com.ubix.ssp.ad.g.k.g gVar2 = this.f48198N;
        if (gVar2 != null) {
            gVar2.b(this.f48200P, view, this.f48208a);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f48237s) {
            this.f48189E = View.MeasureSpec.getSize(i2);
        }
        if (this.f48238t) {
            this.f48190F = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredHeight = this.f48190F + childAt.getMeasuredHeight();
                this.f48190F = measuredHeight;
                this.f48190F = measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            }
        }
        setMeasuredDimension(this.f48189E, this.f48190F);
        b(this.f48189E);
    }

    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f48198N = (com.ubix.ssp.ad.g.k.g) bVar;
    }

    public void setMuted(boolean z2) {
    }

    private View a(ViewGroup viewGroup, int... iArr) {
        View viewA;
        Arrays.sort(iArr);
        if (viewGroup == null) {
            return null;
        }
        viewGroup.setOnClickListener(this);
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            if ((viewGroup.getChildAt(i2) instanceof LinearLayout) || (viewGroup.getChildAt(i2) instanceof RelativeLayout)) {
                viewA = a((ViewGroup) viewGroup.getChildAt(i2), iArr);
                if (Arrays.binarySearch(iArr, viewA.getId()) < 0 && !(viewGroup.getChildAt(i2) instanceof LinearLayout) && !(viewGroup.getChildAt(i2) instanceof RelativeLayout)) {
                    viewA.setOnClickListener(this);
                }
            } else if (Arrays.binarySearch(iArr, viewGroup.getChildAt(i2).getId()) < 0) {
                viewA = viewGroup.getChildAt(i2);
                viewA.setOnClickListener(this);
            }
        }
        return viewGroup;
    }

    public RelativeLayout b(boolean z2) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2010001);
        TextView textView = new TextView(getContext());
        textView.setId(200007);
        ImageView imageView = new ImageView(getContext());
        imageView.setId(200006);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(r.b(11.0f), r.b(11.0f));
        layoutParams2.addRule(9);
        layoutParams2.addRule(15);
        layoutParams.addRule(1, 200007);
        layoutParams.addRule(15);
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams.setMargins(0, r.b(2.0f), 0, 0);
        textView.setGravity(16);
        textView.setTextColor(-8158333);
        relativeLayout.addView(textView, layoutParams2);
        relativeLayout.addView(imageView, layoutParams);
        if (z2) {
            relativeLayout.addView(this.f48233o, layoutParams3);
            this.f48233o.setImageDrawable(q.a("ubix/ic_close.webp"));
        }
        return relativeLayout;
    }

    public RelativeLayout c() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2010002);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.setMargins(r.b(2.0f), 0, r.b(2.0f), 0);
        relativeLayout.addView(com.ubix.ssp.ad.e.f.a(getContext()), layoutParams);
        relativeLayout.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -986379, 10));
        TextView textView = (TextView) relativeLayout.findViewById(920101);
        textView.setTextColor(-8158333);
        textView.setMaxLines(5);
        textView.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        return relativeLayout;
    }

    public RelativeLayout d() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2010002);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.setMargins(0, 0, 0, 0);
        relativeLayout.addView(com.ubix.ssp.ad.e.f.a(getContext()), layoutParams);
        return relativeLayout;
    }

    public void f() {
        this.f48203S = true;
        this.f48209a0 = true;
    }

    private boolean c(int i2) {
        return Math.abs((this.f48239u / (i2 != 2005 ? (i2 == 2007 || i2 == 2014) ? 0.5625f : 1.7777778f : 1.5f)) - 1.0f) <= this.f48213c0;
    }

    public ViewGroup a(int i2) {
        if (i2 == 2) {
            int i3 = this.f48199O;
            if (i3 != 2006 && i3 != 2013 && i3 != 2007 && i3 != 2014 && i3 != 2003 && i3 != 2011 && i3 != 2012 && i3 != 2004 && i3 != 2005) {
                return this.f48228k;
            }
        } else {
            if (i2 != 8) {
                if (i2 != 256) {
                    return null;
                }
                return this;
            }
            int i4 = this.f48199O;
            if (i4 != 2006 && i4 != 2007) {
                if (i4 == 2014 || i4 == 2011 || i4 == 2012 || i4 == 2013 || i4 == 2003 || i4 == 2004 || i4 == 2005) {
                    return null;
                }
                return this.f48228k;
            }
        }
        return (ViewGroup) findViewById(2050001);
    }

    public void b() {
        this.f48203S = false;
        this.f48209a0 = false;
    }

    public void d(Bundle bundle) {
        TextView textView;
        if (bundle == null) {
            return;
        }
        a(bundle);
        ImageView imageView = (ImageView) findViewById(200006);
        boolean z2 = bundle.getBoolean("IS_UNNAMED");
        this.f48219f0 = z2;
        if (imageView != null) {
            imageView.setImageDrawable(q.a("ubix/ic_logo_dark.webp", z2));
        }
        TextView textView2 = (TextView) findViewById(200007);
        if (!TextUtils.isEmpty(this.f48240v) && textView2 != null) {
            textView2.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
            textView2.setText(this.f48240v);
            if (imageView != null) {
                ((ViewGroup.MarginLayoutParams) imageView.getLayoutParams()).leftMargin = r.b(2.0f);
            }
        }
        if (!TextUtils.isEmpty(this.f48241w) && (textView = this.f48232n) != null) {
            textView.setText(this.f48241w);
        }
        a(bundle.getStringArray("IMAGE_URL"), bundle.getStringArray("VIDEO_URL"));
        m();
    }

    public RelativeLayout a(double d2, int i2) {
        this.f48204T = d2;
        this.f48205U = i2;
        this.f48203S = true;
        setWillNotDraw(false);
        m mVar = new m(getContext());
        this.f48235q.setStrokeWidth(14.0f);
        this.f48235q.setStyle(Paint.Style.STROKE);
        this.f48235q.setColor(-1);
        this.f48235q.setAntiAlias(true);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        relativeLayout.setId(2040001);
        layoutParams.addRule(13);
        ImageView imageView = new ImageView(getContext());
        imageView.setId(200022);
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setId(200023);
        imageView.setImageDrawable(q.a("ubix/ic_slide_arrow.webp"));
        imageView2.setImageDrawable(q.a("ubix/ic_slide_hand.webp"));
        linearLayout.setGravity(3);
        linearLayout.addView(imageView);
        linearLayout.addView(imageView2);
        relativeLayout.addView(mVar, layoutParams);
        return relativeLayout;
    }

    public void b(int i2) {
        double dA = r.a().a(getContext());
        float f2 = getContext().getApplicationContext().getResources().getConfiguration().fontScale;
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        double dSqrt = Math.sqrt(Math.exp(dA));
        int i3 = i2 / 22;
        this.f48191G = i3;
        this.f48192H = i3;
        double d2 = i2;
        double d3 = 0.4d * d2;
        int i4 = (int) d3;
        this.f48243y = i4;
        this.f48244z = (i4 * 9) / 16;
        int i5 = (int) (d2 / 3.1d);
        this.f48185A = i5;
        this.f48186B = (i5 * 2) / 3;
        this.f48188D = Math.min(3, i2 / 300);
        this.f48187C = Math.min(12, i2 / 70);
        double d4 = (d2 / dSqrt) / f2;
        this.f48193I = Math.min((int) (d4 / 13.0d), (int) (16.0f / f2));
        int i6 = (int) (d4 / 16.0d);
        int i7 = (int) (14.0f / f2);
        this.f48194J = Math.min(i6, i7);
        this.f48195K = Math.min(i6, i7);
        this.f48196L = Math.min((int) (d4 / 18.0d), (int) (12.0f / f2));
        this.f48197M = Math.min((int) (d4 / 12.0d), i7);
        TextView textView = (TextView) findViewById(2000016);
        if (textView != null) {
            textView.setTextSize(this.f48193I);
        }
        TextView textView2 = (TextView) findViewById(200021);
        if (textView2 != null) {
            textView2.setTextSize(this.f48197M);
        }
        ImageView imageView = (ImageView) findViewById(200006);
        if (imageView != null && imageView.getLayoutParams() != null) {
            imageView.getLayoutParams().width = (i2 / 3) / 5;
            imageView.getLayoutParams().height = (i2 / 6) / 5;
        }
        TextView textView3 = (TextView) findViewById(200007);
        if (textView3 != null) {
            textView3.setTextSize(TypedValue.applyDimension(0, Math.max(2, this.f48196L - 4), getContext().getResources().getDisplayMetrics()));
        }
        TextView textView4 = (TextView) findViewById(200001);
        if (textView4 != null) {
            textView4.setTextSize(TypedValue.applyDimension(0, this.f48193I, getContext().getResources().getDisplayMetrics()));
        }
        ImageView imageView2 = (ImageView) findViewById(2000017);
        if (imageView2 != null && imageView2.getLayoutParams() != null) {
            int i8 = i2 / 8;
            imageView2.getLayoutParams().width = i8;
            imageView2.getLayoutParams().height = i8;
        }
        ImageView imageView3 = (ImageView) findViewById(910101);
        if (imageView3 != null && imageView3.getLayoutParams() != null) {
            int iMax = (int) Math.max(dSqrt * 18.0d, getMeasuredWidth() / 12);
            imageView3.getLayoutParams().width = iMax;
            imageView3.getLayoutParams().height = iMax;
            ViewGroup viewGroup = (ViewGroup) imageView3.getParent();
            if (viewGroup != null) {
                viewGroup.getLayoutParams().width = iMax;
                viewGroup.getLayoutParams().height = iMax;
            }
        }
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2030001);
        if (relativeLayout != null && relativeLayout.getLayoutParams() != null) {
            relativeLayout.getLayoutParams().height = Math.max(i2 / 8, 98);
        }
        ImageView imageView4 = (ImageView) findViewById(200022);
        if (imageView4 != null && imageView4.getLayoutParams() != null) {
            imageView4.getLayoutParams().width = i4;
            imageView4.getLayoutParams().height = (int) (d3 / 4.5d);
        }
        ImageView imageView5 = (ImageView) findViewById(200023);
        if (imageView5 != null && imageView5.getLayoutParams() != null) {
            int i9 = i2 / 8;
            imageView5.getLayoutParams().width = i9;
            imageView5.getLayoutParams().height = i9;
        }
        if (i() && findViewById(2010002) != null) {
            TextView textView5 = (TextView) findViewById(920101);
            RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2010002);
            if (relativeLayout2 != null) {
                ViewGroup.LayoutParams layoutParams = relativeLayout2.getLayoutParams();
                if (textView5 != null) {
                    layoutParams.height = (textView5.getLineCount() * textView5.getLineHeight()) + r.b(4.0f);
                } else {
                    layoutParams.height = (int) (TypedValue.applyDimension(0, this.f48196L, getContext().getResources().getDisplayMetrics()) * 12.0f);
                }
            }
        }
        l();
    }

    public RelativeLayout a(String str, boolean z2) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2030001);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        int i2 = (int) (this.f48201Q * 4.0d);
        layoutParams2.rightMargin = i2;
        layoutParams2.leftMargin = i2;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        if (z2) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setGravity(17);
            ImageView imageView = new ImageView(getContext());
            imageView.setImageDrawable(q.a("ubix/ic_hand_shake.webp"));
            imageView.setId(910101);
            linearLayout.setId(910100);
            int i3 = ((int) this.f48201Q) * 5;
            imageView.setPadding(i3, i3, i3, i3);
            linearLayout2.addView(imageView, layoutParams2);
            linearLayout.addView(linearLayout2, layoutParams2);
            linearLayout2.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#73000000"), 72));
        }
        TextView textView = new TextView(getContext());
        textView.setId(200021);
        int i4 = this.f48199O;
        if (i4 != 2003 && i4 != 2004 && i4 != 2005) {
            textView.setText(str);
        }
        textView.setTextColor(-1);
        textView.getPaint().setFakeBoldText(true);
        textView.setShadowLayer(3.0f, 0.0f, 1.0f, 1711276032);
        linearLayout.addView(textView);
        int i5 = (int) this.f48201Q;
        linearLayout.setPadding(i5, i5, i5, i5);
        layoutParams.addRule(13);
        relativeLayout.addView(linearLayout, layoutParams);
        relativeLayout.setBackground(com.ubix.ssp.ad.e.a0.c.a(0, -872415232, 8));
        return relativeLayout;
    }

    public void b(Context context, Bundle bundle) {
        r.a().a(context);
        this.f48200P = bundle.getInt("AD_INDEX");
        this.f48241w = bundle.getString("TITLE");
        this.f48189E = bundle.getInt("AD_WIDTH");
        this.f48240v = bundle.getString("AD_SOURCE");
        this.f48190F = bundle.getInt("AD_HEIGHT");
        this.f48236r = bundle.getBoolean("IS_DOWNLOAD", false);
        this.f48208a = (HashMap) bundle.getSerializable("CLICK_MAP");
        this.f48242x = bundle.getString("BUTTON_TEXT", this.f48236r ? "立即下载" : "查看详情");
        this.f48199O = bundle.getInt("TEMPLATE_ID");
        this.f48219f0 = bundle.getBoolean("IS_UNNAMED");
        this.f48202R = bundle.getInt("AUTO_PLAY", 2);
        this.f48237s = true;
        this.f48189E = r.a().h(context);
        this.f48238t = true;
        b(bundle);
    }

    public static a a(Context context, Bundle bundle) {
        switch (bundle.getInt("TEMPLATE_ID")) {
            case 2001:
                return new j(context);
            case 2002:
                return new com.ubix.ssp.ad.i.e.b(context);
            case 2003:
                return new g(context);
            case PluginError.ERROR_UPD_EXTRACT /* 2004 */:
                return new h(context);
            case PluginError.ERROR_UPD_CAPACITY /* 2005 */:
                return new i(context);
            case PluginError.ERROR_UPD_REQUEST /* 2006 */:
                return new com.ubix.ssp.ad.i.e.d(context);
            case PluginError.ERROR_UPD_NOT_WIFI_DOWNLOAD /* 2007 */:
                return new com.ubix.ssp.ad.i.e.f(context);
            case PluginError.ERROR_UPD_NO_DOWNLOADER /* 2008 */:
            case PluginError.ERROR_UPD_FILE_NOT_FOUND /* 2009 */:
            case PluginError.ERROR_UPD_PLUGIN_CONNECTION /* 2010 */:
            default:
                return null;
            case 2011:
                return new k(context);
            case 2012:
                return new com.ubix.ssp.ad.i.e.c(context);
            case 2013:
                return new com.ubix.ssp.ad.i.e.e(context);
            case 2014:
                return new l(context);
        }
    }

    private void b(Bundle bundle) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f48228k = relativeLayout;
        relativeLayout.setId(2010003);
        com.ubix.ssp.ad.e.t.a.e eVar = new com.ubix.ssp.ad.e.t.a.e(getContext());
        this.f48230l = eVar;
        eVar.setId(200002);
        TextView textView = new TextView(getContext());
        this.f48232n = textView;
        textView.setId(200001);
        ImageView imageView = new ImageView(getContext());
        this.f48233o = imageView;
        imageView.setId(2000014);
        this.f48230l.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f48230l.setBackgroundColor(-16777216);
        this.f48230l.setSupportRound(true);
        c(bundle);
        this.f48232n.setMaxLines(2);
        this.f48232n.setEllipsize(TextUtils.TruncateAt.END);
        this.f48232n.setTextSize(TypedValue.applyDimension(0, this.f48193I, getContext().getResources().getDisplayMetrics()));
        this.f48232n.setTextColor(-13619152);
    }

    public void a() {
        HashMap<String, Drawable> map = this.f48210b;
        if (map != null) {
            map.clear();
        }
    }

    public void b(String... strArr) {
        com.ubix.ssp.ad.d.f fVar = (com.ubix.ssp.ad.d.f) findViewById(2060001);
        if (fVar == null) {
            return;
        }
        fVar.a(strArr[0], new b(fVar));
    }

    private void a(Bundle bundle) {
        this.f48211b0 = bundle.getInt("RENDER_MODE", 0);
        this.f48213c0 = bundle.getFloat("SCALE_IGNORE_PERCENT", 0.05f);
        int i2 = bundle.getInt("SCALE_HORIZONTAL_MARGIN", 5);
        this.f48215d0 = i2;
        if (i2 >= 50) {
            this.f48215d0 = 5;
        }
        int i3 = bundle.getInt("SCALE_VERTICAL_MARGIN", 5);
        this.f48217e0 = i3;
        if (i3 >= 50) {
            this.f48217e0 = 5;
        }
    }

    public void a(String str) {
        a(str, this.f48230l);
    }

    public boolean b(String str, ImageView imageView) {
        try {
            int i2 = this.f48211b0;
            if (i2 == 1) {
                com.ubix.ssp.ad.e.v.a aVarB = com.ubix.ssp.ad.e.v.e.b();
                aVarB.c(str);
                Bitmap bitmapB = aVarB.b(str);
                if (bitmapB != null) {
                    if (bitmapB.getHeight() != 0) {
                        this.f48239u = (bitmapB.getWidth() * 1.0f) / bitmapB.getHeight();
                    }
                    if (!c(getTemplateId())) {
                        Bitmap bitmapB2 = com.ubix.ssp.ad.e.a0.c.b(str);
                        if (bitmapB2 != null) {
                            ((com.ubix.ssp.ad.e.t.a.e) imageView).setSupportRound(false);
                            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            imageView.setBackground(new com.ubix.ssp.ad.e.a0.q(getContext(), bitmapB2, imageView.getMeasuredWidth(), imageView.getMeasuredHeight(), 10.0f));
                        } else if (bitmapB2 != null) {
                            bitmapB2.recycle();
                        }
                    }
                }
            } else if (i2 == 2) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void a(String str, ImageView imageView) {
        com.ubix.ssp.ad.e.v.a aVarB = com.ubix.ssp.ad.e.v.e.b();
        aVarB.b(str, imageView);
        aVarB.c(str);
        Bitmap bitmapB = aVarB.b(str);
        if (bitmapB == null || bitmapB.getHeight() * bitmapB.getWidth() == 0) {
            this.f48239u = 0.0f;
        } else {
            this.f48239u = bitmapB.getWidth() / bitmapB.getHeight();
        }
        b(str, imageView);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        boolean z2;
        String strA;
        String str7;
        String str8;
        try {
            TextView textView = (TextView) findViewById(920101);
            if (textView == null) {
                return;
            }
            String str9 = "";
            if (j2 > 0) {
                strA = com.ubix.ssp.ad.e.a0.k.a(j2);
                z2 = true;
            } else {
                z2 = false;
                strA = "";
            }
            if (TextUtils.isEmpty(str5)) {
                str7 = "";
            } else {
                str7 = "丨备案号:" + str5;
            }
            if (TextUtils.isEmpty(str6)) {
                str8 = "";
            } else {
                str8 = "丨适用年龄:" + str6;
            }
            if (z2) {
                str9 = "丨应用大小:" + strA;
            }
            textView.setText(new com.ubix.ssp.ad.e.f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", str, str2, str3, str7, str8, str9)).a(this.f48198N));
        } catch (Exception unused) {
        }
    }

    public void a(boolean z2) {
        u.e("addAnimation  " + z2);
        post(new RunnableC0846a(z2));
    }

    public void a(String... strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (strArr[i2] != null) {
                com.ubix.ssp.ad.e.v.e.b().b(strArr[i2], this.f48231m[i2]);
                b(strArr[i2], this.f48231m[i2]);
            }
        }
    }
}
