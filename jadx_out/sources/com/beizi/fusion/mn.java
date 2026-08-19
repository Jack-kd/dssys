package com.beizi.fusion;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollArcView;
import com.beizi.fusion.widget.ScrollClickView;

/* loaded from: classes2.dex */
public class mn {

    /* renamed from: A, reason: collision with root package name */
    private int f15134A;

    /* renamed from: B, reason: collision with root package name */
    private int f15135B;

    /* renamed from: C, reason: collision with root package name */
    private int f15136C;

    /* renamed from: D, reason: collision with root package name */
    private int f15137D;

    /* renamed from: E, reason: collision with root package name */
    private int f15138E;

    /* renamed from: F, reason: collision with root package name */
    private int f15139F;

    /* renamed from: G, reason: collision with root package name */
    private int f15140G;

    /* renamed from: H, reason: collision with root package name */
    private int f15141H;

    /* renamed from: I, reason: collision with root package name */
    private int f15142I;

    /* renamed from: J, reason: collision with root package name */
    private int f15143J;

    /* renamed from: a, reason: collision with root package name */
    private Context f15144a;

    /* renamed from: b, reason: collision with root package name */
    private FrameLayout f15145b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f15146c;

    /* renamed from: d, reason: collision with root package name */
    private FrameLayout f15147d;

    /* renamed from: e, reason: collision with root package name */
    private ScrollArcView f15148e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f15149f;

    /* renamed from: g, reason: collision with root package name */
    private TextView f15150g;

    /* renamed from: h, reason: collision with root package name */
    private AnimatorSet f15151h;

    /* renamed from: i, reason: collision with root package name */
    private AnimatorSet f15152i;

    /* renamed from: j, reason: collision with root package name */
    private AnimatorSet f15153j;

    /* renamed from: k, reason: collision with root package name */
    private AnimatorSet f15154k;

    /* renamed from: l, reason: collision with root package name */
    private AnimatorSet f15155l;

    /* renamed from: m, reason: collision with root package name */
    private AnimatorSet f15156m;

    /* renamed from: n, reason: collision with root package name */
    private f f15157n;

    /* renamed from: o, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f15158o;

    /* renamed from: p, reason: collision with root package name */
    private int f15159p;

    /* renamed from: q, reason: collision with root package name */
    private String f15160q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f15161r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f15162s;

    /* renamed from: t, reason: collision with root package name */
    private int f15163t;

    /* renamed from: u, reason: collision with root package name */
    private int f15164u;

    /* renamed from: v, reason: collision with root package name */
    private View f15165v;

    /* renamed from: w, reason: collision with root package name */
    private View f15166w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f15167x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f15168y;

    /* renamed from: z, reason: collision with root package name */
    private int f15169z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (mn.this.f15167x) {
                return;
            }
            int[] iArr = {((int) (mn.this.f15163t * 0.1d)) / 2, (int) (mn.this.f15164u * 0.8d)};
            int[] iArrB = rl.b(((int) (mn.this.f15163t * 0.9d)) / 2, vo.a(mn.this.f15144a, 65.0f) / 2);
            mn.this.a(String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]));
        }
    }

    public class b implements Runnable {

        public class a implements Animator.AnimatorListener {
            public a() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                try {
                    if (mn.this.f15155l != null) {
                        mn.this.f15155l.start();
                    }
                } catch (Exception unused) {
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if ("all".equalsIgnoreCase(mn.this.f15160q)) {
                    mn.this.g();
                    return;
                }
                mn.this.h();
                mn.this.f();
                mn.this.e();
                mn.this.i();
                mn.this.f15155l = new AnimatorSet();
                if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(mn.this.f15160q) || "up".equalsIgnoreCase(mn.this.f15160q)) {
                    mn.this.f15155l.playTogether(mn.this.f15151h, mn.this.f15153j, mn.this.f15152i, mn.this.f15154k);
                } else {
                    mn.this.f15155l.playTogether(mn.this.f15151h, mn.this.f15154k);
                }
                mn.this.f15155l.addListener(new a());
                mn.this.f15155l.start();
            } catch (Exception unused) {
            }
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f15173a;

        /* renamed from: b, reason: collision with root package name */
        float f15174b;

        /* renamed from: c, reason: collision with root package name */
        float f15175c;

        /* renamed from: d, reason: collision with root package name */
        float f15176d;

        /* renamed from: e, reason: collision with root package name */
        float f15177e;

        /* renamed from: f, reason: collision with root package name */
        float f15178f;

        public c() {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00d3  */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 1036
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.mn.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f15180a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f15181b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f15182c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f15183d;

        public d(float f2, float f3, float f4, float f5) {
            this.f15180a = f2;
            this.f15181b = f3;
            this.f15182c = f4;
            this.f15183d = f5;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            try {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                float f2 = this.f15180a;
                float f3 = f2 + ((this.f15181b - f2) * animatedFraction);
                float f4 = this.f15182c;
                float f5 = f4 + ((this.f15183d - f4) * animatedFraction);
                float fMax = Math.max(mn.this.f15140G, Math.min(f3, mn.this.f15141H));
                float fMax2 = Math.max(mn.this.f15142I, Math.min(f5, mn.this.f15143J));
                if (mn.this.f15146c != null) {
                    mn.this.f15146c.setX(fMax - mn.this.f15138E);
                    mn.this.f15146c.setY(fMax2 - mn.this.f15139F);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements Runnable {

        public class a implements Animator.AnimatorListener {
            public a() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                try {
                    if (mn.this.f15156m != null) {
                        mn.this.f15156m.start();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (mn.this.f15145b != null && mn.this.f15146c != null) {
                    mn mnVar = mn.this;
                    mnVar.f15134A = mnVar.f15145b.getWidth();
                    mn mnVar2 = mn.this;
                    mnVar2.f15135B = mnVar2.f15145b.getHeight();
                    mn mnVar3 = mn.this;
                    mnVar3.f15136C = mnVar3.f15146c.getWidth();
                    mn mnVar4 = mn.this;
                    mnVar4.f15137D = mnVar4.f15146c.getHeight();
                    mn mnVar5 = mn.this;
                    mnVar5.f15138E = mnVar5.f15136C / 2;
                    mn mnVar6 = mn.this;
                    mnVar6.f15139F = mnVar6.f15137D / 2;
                    mn mnVar7 = mn.this;
                    mnVar7.f15140G = mnVar7.f15138E;
                    mn mnVar8 = mn.this;
                    mnVar8.f15141H = mnVar8.f15134A - mn.this.f15138E;
                    mn mnVar9 = mn.this;
                    mnVar9.f15142I = mnVar9.f15139F;
                    mn mnVar10 = mn.this;
                    mnVar10.f15143J = mnVar10.f15135B - mn.this.f15139F;
                    mn.this.f15156m = new AnimatorSet();
                    mn.this.f15156m.playSequentially(mn.this.a(r1.f15140G + ((mn.this.f15141H - mn.this.f15140G) / 2), mn.this.f15142I, mn.this.f15140G + ((mn.this.f15141H - mn.this.f15140G) / 2), mn.this.f15143J), mn.this.a(r3.f15140G, mn.this.f15142I + ((mn.this.f15143J - mn.this.f15142I) / 2), mn.this.f15141H, mn.this.f15142I + ((mn.this.f15143J - mn.this.f15142I) / 2)), mn.this.a(r4.f15140G, mn.this.f15142I, mn.this.f15141H, mn.this.f15143J), mn.this.a(r5.f15141H, mn.this.f15142I, mn.this.f15140G, mn.this.f15143J));
                    mn.this.f15156m.setDuration(1000L);
                    mn.this.f15156m.setInterpolator(new AccelerateDecelerateInterpolator());
                    mn.this.f15156m.addListener(new a());
                    mn.this.f15156m.start();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface f {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public mn(Context context) {
        this.f15144a = context;
    }

    public void k() {
        try {
            this.f15148e.post(new b());
        } catch (Exception unused) {
        }
    }

    private void d() {
        int iA;
        String downloadDetails;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f15158o;
            if (scrollClickBean != null) {
                String title = scrollClickBean.getTitle();
                if (this.f15149f != null) {
                    if (!TextUtils.isEmpty(title)) {
                        this.f15149f.setText(title);
                    }
                    int titleFont = this.f15158o.getTitleFont();
                    if (titleFont > 0) {
                        this.f15149f.setTextSize(2, titleFont);
                    }
                }
                if (!this.f15162s) {
                    downloadDetails = this.f15158o.getDetails();
                } else {
                    downloadDetails = this.f15158o.getDownloadDetails();
                    if (TextUtils.isEmpty(downloadDetails)) {
                        downloadDetails = "下载应用";
                    }
                }
                int detailsFont = this.f15158o.getDetailsFont();
                if (this.f15150g != null) {
                    if (!TextUtils.isEmpty(downloadDetails)) {
                        this.f15150g.setText(downloadDetails);
                    }
                    if (detailsFont > 0) {
                        this.f15150g.setTextSize(2, detailsFont);
                    }
                }
            }
            String height = this.f15158o.getPosition().getHeight();
            if (TextUtils.isEmpty(height) || "0".equals(height)) {
                height = "180";
            }
            if (height.endsWith("%")) {
                iA = (this.f15164u * Integer.parseInt(height.substring(0, height.indexOf("%")))) / 100;
            } else {
                iA = vo.a(this.f15144a, Integer.parseInt(height));
            }
            int iA2 = vo.a(this.f15144a, 110.0f);
            if (this.f15148e != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, iA + 100);
                layoutParams.topMargin = iA2;
                this.f15148e.setLayoutParams(layoutParams);
            }
            int iA3 = vo.a(this.f15144a, 200.0f);
            if (this.f15145b != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iA3, iA3);
                layoutParams2.topMargin = iA2 - (iA3 / 2);
                layoutParams2.gravity = 1;
                this.f15145b.setLayoutParams(layoutParams2);
            }
            if (this.f15146c != null) {
                int iA4 = vo.a(this.f15144a, 45.0f);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(iA4, iA4);
                if ("up".equalsIgnoreCase(this.f15160q)) {
                    layoutParams3.gravity = 17;
                } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f15160q)) {
                    layoutParams3.gravity = 49;
                } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f15160q) || ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f15160q) || "all".equalsIgnoreCase(this.f15160q)) {
                    layoutParams3.gravity = 17;
                }
                this.f15146c.setLayoutParams(layoutParams3);
            }
            if (this.f15147d != null) {
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, iA + 100);
                layoutParams4.topMargin = iA2 - 50;
                this.f15147d.setLayoutParams(layoutParams4);
            }
            if (this.f15166w != null) {
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams5.topMargin = (this.f15164u - iA) - iA2;
                this.f15166w.setLayoutParams(layoutParams5);
            }
            a();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            ScrollArcView scrollArcView = this.f15148e;
            if (scrollArcView == null) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(scrollArcView, "alpha", 0.3f, 0.45f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15148e, "alpha", 0.45f, 0.3f);
            objectAnimatorOfFloat.setDuration(700L);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            objectAnimatorOfFloat2.setDuration(300L);
            objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            this.f15154k = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            if ("up".equalsIgnoreCase(this.f15160q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15148e, "scaleX", 1.0f, 1.1f, 1.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15148e, "scaleY", 1.0f, 1.1f, 1.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f15160q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15148e, "scaleX", 1.1f, 1.0f, 1.1f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15148e, "scaleY", 1.1f, 1.0f, 1.1f);
            } else {
                if (!ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f15160q)) {
                    ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f15160q);
                }
                objectAnimatorOfFloat = null;
                objectAnimatorOfFloat2 = null;
            }
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat2 != null) {
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat == null || objectAnimatorOfFloat2 == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f15152i = animatorSet;
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f15152i.setDuration(1000L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            this.f15145b.post(new e());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            int iA = vo.a(this.f15144a, 80.0f);
            if ("up".equalsIgnoreCase(this.f15160q)) {
                float f2 = -iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15146c, "translationY", 0.0f, f2);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15146c, "translationY", f2, 0.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f15160q)) {
                float f3 = iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15146c, "translationY", 0.0f, f3);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15146c, "translationY", f3, 0.0f);
            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f15160q)) {
                int i2 = -iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15146c, "translationX", iA / 2, i2 / 2);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15146c, "translationX", i2 / 2, iA / 2);
            } else if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f15160q)) {
                int i3 = -iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15146c, "translationX", i3 / 2, iA / 2);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15146c, "translationX", iA / 2, i3 / 2);
            } else {
                objectAnimatorOfFloat = null;
                objectAnimatorOfFloat2 = null;
            }
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setDuration(700L);
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat2 != null) {
                objectAnimatorOfFloat2.setDuration(300L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat == null || objectAnimatorOfFloat2 == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f15151h = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            if ("up".equalsIgnoreCase(this.f15160q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15148e, "translationY", 0.0f, -80.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15148e, "translationY", -80.0f, 0.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f15160q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15148e, "translationY", -80.0f, 0.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15148e, "translationY", 0.0f, -80.0f);
            } else {
                if (!ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f15160q)) {
                    ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f15160q);
                }
                objectAnimatorOfFloat = null;
                objectAnimatorOfFloat2 = null;
            }
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setDuration(700L);
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat2 != null) {
                objectAnimatorOfFloat2.setDuration(300L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat == null || objectAnimatorOfFloat2 == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f15153j = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception unused) {
        }
    }

    private void j() {
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f15158o;
            if (scrollClickBean == null) {
                return;
            }
            int randomClickNum = scrollClickBean.getRandomClickNum();
            int randomClickTime = this.f15158o.getRandomClickTime();
            if (((Boolean) a(randomClickNum).second).booleanValue()) {
                d9.a(new a(), randomClickTime + (((Integer) r0.first).intValue() * 10));
            }
        } catch (Exception unused) {
        }
    }

    public void c() {
        try {
            b();
            this.f15144a = null;
            this.f15166w = null;
        } catch (Exception unused) {
        }
    }

    private void b() {
        AnimatorSet animatorSet = this.f15152i;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f15152i = null;
        AnimatorSet animatorSet2 = this.f15154k;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f15154k = null;
        AnimatorSet animatorSet3 = this.f15153j;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        this.f15153j = null;
        AnimatorSet animatorSet4 = this.f15151h;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
        this.f15151h = null;
        AnimatorSet animatorSet5 = this.f15155l;
        if (animatorSet5 != null) {
            animatorSet5.cancel();
        }
        AnimatorSet animatorSet6 = this.f15156m;
        if (animatorSet6 != null) {
            animatorSet6.cancel();
        }
        this.f15156m = null;
        this.f15155l = null;
    }

    public View a(View view) {
        try {
            this.f15165v = view;
            View viewInflate = LayoutInflater.from(this.f15144a).inflate(R.layout.beizi_scroll_slide_view, (ViewGroup) null);
            this.f15166w = viewInflate;
            this.f15145b = (FrameLayout) viewInflate.findViewById(R.id.slide_hand_container);
            this.f15146c = (ImageView) this.f15166w.findViewById(R.id.slide_hand);
            this.f15148e = (ScrollArcView) this.f15166w.findViewById(R.id.slide_arc);
            this.f15147d = (FrameLayout) this.f15166w.findViewById(R.id.slide_text_container);
            this.f15149f = (TextView) this.f15166w.findViewById(R.id.slide_title);
            this.f15150g = (TextView) this.f15166w.findViewById(R.id.slide_detail);
            d();
            return this.f15166w;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(f fVar) {
        this.f15157n = fVar;
    }

    public void a(AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean, boolean z2, boolean z3, int i2, int i3) {
        this.f15158o = scrollClickBean;
        this.f15161r = z2;
        this.f15162s = z3;
        this.f15163t = i2;
        this.f15164u = i3;
        if (i2 <= 0) {
            this.f15163t = vo.j(this.f15144a);
        }
        if (this.f15164u <= 0) {
            this.f15164u = vo.g(this.f15144a);
        }
        if (this.f15158o != null) {
            this.f15159p = vo.a(this.f15144a, r1.getScrollDistance());
            this.f15160q = this.f15158o.getScrollDirection();
            this.f15168y = this.f15158o.getSupportClick() == 1;
            this.f15169z = this.f15158o.getRegionalSlide();
        }
        if (this.f15158o.getAnimation() == 0 && this.f15161r) {
            this.f15160q = "all";
        }
        j();
    }

    public static Pair a(int i2) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        if (iRandom <= i2) {
            return new Pair(Integer.valueOf(iRandom), Boolean.TRUE);
        }
        return new Pair(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    private void a() {
        try {
            View view = this.f15165v;
            if (view == null) {
                return;
            }
            view.setOnTouchListener(new c());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(float f2, float f3) {
        try {
            if (this.f15148e == null) {
                return false;
            }
            Rect rect = new Rect();
            this.f15148e.getGlobalVisibleRect(rect);
            return rect.contains((int) f2, (int) f3);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ValueAnimator a(float f2, float f3, float f4, float f5) {
        try {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new d(f2, f4, f3, f5));
            return valueAnimatorOfFloat;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        try {
            f fVar = this.f15157n;
            if (fVar == null) {
                return;
            }
            this.f15167x = true;
            fVar.a(str, str2, str3, str4, str5, str6, str7, str8);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
