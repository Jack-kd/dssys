package com.beizi.fusion;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollArcView;
import com.beizi.fusion.widget.ScrollClickView;

/* loaded from: classes2.dex */
public class ln {

    /* renamed from: a, reason: collision with root package name */
    private Context f14920a;

    /* renamed from: b, reason: collision with root package name */
    private FrameLayout f14921b;

    /* renamed from: c, reason: collision with root package name */
    private ScrollArcView f14922c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f14923d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f14924e;

    /* renamed from: f, reason: collision with root package name */
    private AnimatorSet f14925f;

    /* renamed from: g, reason: collision with root package name */
    private AnimatorSet f14926g;

    /* renamed from: h, reason: collision with root package name */
    private AnimatorSet f14927h;

    /* renamed from: i, reason: collision with root package name */
    private AnimatorSet f14928i;

    /* renamed from: j, reason: collision with root package name */
    private AnimatorSet f14929j;

    /* renamed from: k, reason: collision with root package name */
    private d f14930k;

    /* renamed from: l, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f14931l;

    /* renamed from: m, reason: collision with root package name */
    private int f14932m;

    /* renamed from: n, reason: collision with root package name */
    private String f14933n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f14934o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f14935p;

    /* renamed from: q, reason: collision with root package name */
    private int f14936q;

    /* renamed from: r, reason: collision with root package name */
    private int f14937r;

    /* renamed from: s, reason: collision with root package name */
    private View f14938s;

    /* renamed from: t, reason: collision with root package name */
    private View f14939t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f14940u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f14941v;

    /* renamed from: w, reason: collision with root package name */
    private int f14942w;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ln.this.f14940u) {
                return;
            }
            int[] iArr = {((int) (ln.this.f14936q * 0.1d)) / 2, (int) (ln.this.f14937r * 0.8d)};
            int[] iArrB = rl.b(((int) (ln.this.f14936q * 0.9d)) / 2, vo.a(ln.this.f14920a, 65.0f) / 2);
            ln.this.a(String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]));
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
                    if (ln.this.f14928i != null) {
                        ln.this.f14928i.start();
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
                ln.this.f();
                ln.this.e();
                ln.this.g();
                ln.this.f14928i = new AnimatorSet();
                if ("all".equals(ln.this.f14933n)) {
                    ln.this.f14928i.playTogether(ln.this.f14925f, ln.this.f14927h);
                } else {
                    ln.this.f14928i.playTogether(ln.this.f14926g, ln.this.f14925f, ln.this.f14927h);
                }
                ln.this.f14928i.addListener(new a());
                ln.this.f14928i.start();
            } catch (Exception unused) {
            }
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f14946a;

        /* renamed from: b, reason: collision with root package name */
        float f14947b;

        /* renamed from: c, reason: collision with root package name */
        float f14948c;

        /* renamed from: d, reason: collision with root package name */
        float f14949d;

        /* renamed from: e, reason: collision with root package name */
        float f14950e;

        /* renamed from: f, reason: collision with root package name */
        float f14951f;

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
            throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.ln.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    public interface d {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public ln(Context context) {
        this.f14920a = context;
    }

    private void b() {
        AnimatorSet animatorSet = this.f14925f;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f14925f = null;
        AnimatorSet animatorSet2 = this.f14927h;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f14927h = null;
        AnimatorSet animatorSet3 = this.f14926g;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        this.f14926g = null;
        AnimatorSet animatorSet4 = this.f14928i;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
        AnimatorSet animatorSet5 = this.f14929j;
        if (animatorSet5 != null) {
            animatorSet5.cancel();
        }
        this.f14929j = null;
        this.f14928i = null;
    }

    private void d() {
        String downloadDetails;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f14931l;
            if (scrollClickBean != null) {
                String title = scrollClickBean.getTitle();
                if (this.f14923d != null) {
                    if (!TextUtils.isEmpty(title)) {
                        if (ScrollClickView.DIR_LEFT.equals(this.f14933n) || ScrollClickView.DIR_RIGHT.equals(this.f14933n)) {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                            for (int i2 = 0; i2 < title.length(); i2++) {
                                if (i2 > 0) {
                                    spannableStringBuilder.append((CharSequence) "\n");
                                }
                                spannableStringBuilder.append(title.charAt(i2));
                            }
                            this.f14923d.setText(spannableStringBuilder);
                            this.f14923d.setSingleLine(false);
                            this.f14923d.setMaxLines(title.length());
                        } else {
                            this.f14923d.setText(title);
                        }
                    }
                    int titleFont = this.f14931l.getTitleFont();
                    if (titleFont > 0) {
                        this.f14923d.setTextSize(2, titleFont);
                    }
                }
                if (this.f14935p) {
                    downloadDetails = this.f14931l.getDownloadDetails();
                    if (TextUtils.isEmpty(downloadDetails)) {
                        downloadDetails = "下载应用";
                    }
                } else {
                    downloadDetails = this.f14931l.getDetails();
                }
                int detailsFont = this.f14931l.getDetailsFont();
                if (this.f14924e != null) {
                    if (!TextUtils.isEmpty(downloadDetails)) {
                        if (ScrollClickView.DIR_LEFT.equals(this.f14933n) || ScrollClickView.DIR_RIGHT.equals(this.f14933n)) {
                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                            for (int i3 = 0; i3 < downloadDetails.length(); i3++) {
                                if (i3 > 0) {
                                    spannableStringBuilder2.append((CharSequence) "\n");
                                }
                                spannableStringBuilder2.append(downloadDetails.charAt(i3));
                            }
                            this.f14924e.setText(spannableStringBuilder2);
                            this.f14924e.setSingleLine(false);
                            this.f14924e.setMaxLines(downloadDetails.length());
                        } else {
                            this.f14924e.setText(downloadDetails);
                        }
                    }
                    if (detailsFont > 0) {
                        this.f14924e.setTextSize(2, detailsFont);
                    }
                }
            }
            AdSpacesBean.BuyerBean.ScrollClickPositionBean position = this.f14931l.getPosition();
            String width = position.getWidth();
            String str = "180";
            if (TextUtils.isEmpty(width) || "0".equals(width)) {
                width = "180";
            }
            int i4 = width.endsWith("%") ? (this.f14936q * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100 : vo.a(this.f14920a, Integer.parseInt(width));
            String height = position.getHeight();
            if (!TextUtils.isEmpty(width) && !"0".equals(width)) {
                str = height;
            }
            int i5 = str.endsWith("%") ? (this.f14937r * Integer.parseInt(str.substring(0, str.indexOf("%")))) / 100 : vo.a(this.f14920a, Integer.parseInt(str));
            String top = position.getTop();
            String centerX = position.getCenterX();
            if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                centerX = "50%";
            }
            if (TextUtils.isEmpty(top) || "0".equals(top)) {
                top = "50%";
            }
            int i6 = centerX.endsWith("%") ? (this.f14936q * Integer.parseInt(centerX.substring(0, centerX.indexOf("%")))) / 100 : vo.a(this.f14920a, Integer.parseInt(centerX));
            int i7 = top.endsWith("%") ? (this.f14937r * Integer.parseInt(top.substring(0, top.indexOf("%")))) / 100 : vo.a(this.f14920a, Integer.parseInt(top));
            if (ScrollClickView.DIR_DOWN.equals(this.f14933n)) {
                if (this.f14922c != null) {
                    this.f14922c.setLayoutParams(new FrameLayout.LayoutParams(-1, i5 + 100));
                    this.f14922c.setArcDirection(3);
                }
                if (this.f14921b != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, i5 + 100);
                    layoutParams.topMargin = 50;
                    this.f14921b.setLayoutParams(layoutParams);
                }
                if (this.f14939t != null) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = -100;
                    layoutParams2.height = i5 + 300;
                    layoutParams2.width = -1;
                    this.f14939t.setLayoutParams(layoutParams2);
                }
            } else if (ScrollClickView.DIR_LEFT.equals(this.f14933n)) {
                int i8 = i4 * 2;
                if (this.f14922c != null) {
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i8 + 10, -1);
                    layoutParams3.leftMargin = 150;
                    this.f14922c.setLayoutParams(layoutParams3);
                    this.f14922c.setArcHeight(i8);
                    this.f14922c.setArcDirection(2);
                }
                if (this.f14921b != null) {
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((i8 + 10) / 2, -1);
                    layoutParams4.leftMargin = 150;
                    this.f14921b.setLayoutParams(layoutParams4);
                }
                if (this.f14939t != null) {
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams5.leftMargin = (this.f14936q - ((i8 + 10) / 2)) - 150;
                    layoutParams5.height = -1;
                    layoutParams5.width = i8 + 150;
                    this.f14939t.setLayoutParams(layoutParams5);
                }
            } else if (ScrollClickView.DIR_RIGHT.equals(this.f14933n)) {
                int i9 = i4 * 2;
                if (this.f14922c != null) {
                    this.f14922c.setLayoutParams(new FrameLayout.LayoutParams(i9 + 10, -1));
                    this.f14922c.setArcHeight(i9);
                    this.f14922c.setArcDirection(1);
                }
                if (this.f14921b != null) {
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i9, -1);
                    layoutParams6.leftMargin = i9 / 4;
                    this.f14921b.setLayoutParams(layoutParams6);
                }
                if (this.f14939t != null) {
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams7.leftMargin = (-(i9 + 10)) / 2;
                    layoutParams7.height = -1;
                    layoutParams7.width = i9 + 150;
                    this.f14939t.setLayoutParams(layoutParams7);
                }
            } else if ("all".equals(this.f14933n)) {
                if (this.f14922c != null) {
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i4, i5);
                    layoutParams8.gravity = 17;
                    this.f14922c.setLayoutParams(layoutParams8);
                    this.f14922c.setArcDirection(4);
                }
                if (this.f14939t != null) {
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams9.height = i5 + 200;
                    int i10 = i4 + 200;
                    layoutParams9.width = i10;
                    layoutParams9.leftMargin = i6 - (i10 / 2);
                    layoutParams9.topMargin = i7 - 100;
                    this.f14939t.setLayoutParams(layoutParams9);
                }
            }
            a();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            ScrollArcView scrollArcView = this.f14922c;
            if (scrollArcView == null) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(scrollArcView, "alpha", 0.3f, 0.45f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "alpha", 0.45f, 0.3f);
            objectAnimatorOfFloat.setDuration(700L);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            objectAnimatorOfFloat2.setDuration(300L);
            objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            this.f14927h = animatorSet;
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
            if ("up".equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "scaleX", 1.0f, 1.1f, 1.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "scaleY", 1.0f, 1.1f, 1.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f14933n) || ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "scaleX", 1.1f, 1.0f, 1.1f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "scaleY", 1.1f, 1.0f, 1.1f);
            } else if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f14933n) || "all".equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "scaleX", 1.0f, 1.1f, 1.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "scaleY", 1.0f, 1.1f, 1.0f);
            } else {
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
            this.f14925f = animatorSet;
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f14925f.setDuration(1000L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            if ("up".equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "translationY", 0.0f, 80.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "translationY", 80.0f, 0.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "translationY", 80.0f, 0.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "translationY", 0.0f, 80.0f);
            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "translationX", -80.0f, 0.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "translationX", 0.0f, -80.0f);
            } else if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f14933n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f14922c, "translationX", 0.0f, 80.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f14922c, "translationX", 80.0f, 0.0f);
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
            this.f14926g = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception unused) {
        }
    }

    private void h() {
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f14931l;
            if (scrollClickBean == null) {
                return;
            }
            int randomClickNum = scrollClickBean.getRandomClickNum();
            int randomClickTime = this.f14931l.getRandomClickTime();
            if (((Boolean) a(randomClickNum).second).booleanValue()) {
                d9.a(new a(), randomClickTime + (((Integer) r0.first).intValue() * 10));
            }
        } catch (Exception unused) {
        }
    }

    public void c() {
        try {
            b();
            this.f14920a = null;
            this.f14939t = null;
        } catch (Exception unused) {
        }
    }

    public void i() {
        try {
            this.f14922c.post(new b());
        } catch (Exception unused) {
        }
    }

    public View a(View view) {
        try {
            this.f14938s = view;
            if (ScrollClickView.DIR_DOWN.equals(this.f14933n)) {
                this.f14939t = LayoutInflater.from(this.f14920a).inflate(R.layout.beizi_scroll_slide_view_down, (ViewGroup) null);
            } else if (ScrollClickView.DIR_LEFT.equals(this.f14933n)) {
                this.f14939t = LayoutInflater.from(this.f14920a).inflate(R.layout.beizi_scroll_slide_view_left, (ViewGroup) null);
            } else if (ScrollClickView.DIR_RIGHT.equals(this.f14933n)) {
                this.f14939t = LayoutInflater.from(this.f14920a).inflate(R.layout.beizi_scroll_slide_view_right, (ViewGroup) null);
            } else if ("all".equals(this.f14933n)) {
                this.f14939t = LayoutInflater.from(this.f14920a).inflate(R.layout.beizi_scroll_slide_view_all, (ViewGroup) null);
            }
            this.f14922c = (ScrollArcView) this.f14939t.findViewById(R.id.slide_arc);
            this.f14921b = (FrameLayout) this.f14939t.findViewById(R.id.slide_text_container);
            this.f14923d = (TextView) this.f14939t.findViewById(R.id.slide_title);
            this.f14924e = (TextView) this.f14939t.findViewById(R.id.slide_detail);
            d();
            return this.f14939t;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(d dVar) {
        this.f14930k = dVar;
    }

    public void a(AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean, boolean z2, boolean z3, int i2, int i3) {
        this.f14931l = scrollClickBean;
        this.f14934o = z2;
        this.f14935p = z3;
        this.f14936q = i2;
        this.f14937r = i3;
        if (i2 <= 0) {
            this.f14936q = vo.j(this.f14920a);
        }
        if (this.f14937r <= 0) {
            this.f14937r = vo.g(this.f14920a);
        }
        if (this.f14931l != null) {
            this.f14932m = vo.a(this.f14920a, r1.getScrollDistance());
            this.f14933n = this.f14931l.getScrollDirection();
            this.f14941v = this.f14931l.getSupportClick() == 1;
            this.f14942w = this.f14931l.getRegionalSlide();
        }
        if ("all".equals(this.f14933n)) {
            this.f14934o = true;
        }
        h();
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
            View view = this.f14938s;
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
            if (this.f14922c == null) {
                return false;
            }
            Rect rect = new Rect();
            this.f14922c.getGlobalVisibleRect(rect);
            return rect.contains((int) f2, (int) f3);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        try {
            d dVar = this.f14930k;
            if (dVar == null) {
                return;
            }
            this.f14940u = true;
            dVar.a(str, str2, str3, str4, str5, str6, str7, str8);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
