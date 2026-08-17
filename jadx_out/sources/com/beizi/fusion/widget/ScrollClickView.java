package com.beizi.fusion.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.mh;
import com.beizi.fusion.vo;

/* loaded from: classes2.dex */
public class ScrollClickView extends LinearLayout {
    public static final String DIR_DOWN = "down";
    public static final String DIR_LEFT = "left";
    public static final String DIR_RIGHT = "right";
    public static final String DIR_UP = "up";

    /* renamed from: a, reason: collision with root package name */
    private boolean f17145a;

    /* renamed from: b, reason: collision with root package name */
    ImageView f17146b;

    /* renamed from: c, reason: collision with root package name */
    ImageView f17147c;

    /* renamed from: d, reason: collision with root package name */
    TextView f17148d;

    /* renamed from: e, reason: collision with root package name */
    TextView f17149e;

    /* renamed from: f, reason: collision with root package name */
    private String f17150f;

    /* renamed from: g, reason: collision with root package name */
    private String f17151g;

    /* renamed from: h, reason: collision with root package name */
    private int f17152h;

    /* renamed from: i, reason: collision with root package name */
    private int f17153i;

    /* renamed from: j, reason: collision with root package name */
    private String f17154j;

    /* renamed from: k, reason: collision with root package name */
    private int f17155k;

    /* renamed from: l, reason: collision with root package name */
    private int f17156l;

    /* renamed from: m, reason: collision with root package name */
    private ValueAnimator f17157m;

    /* renamed from: n, reason: collision with root package name */
    private Context f17158n;

    /* renamed from: o, reason: collision with root package name */
    private FrameLayout f17159o;

    /* renamed from: p, reason: collision with root package name */
    private FrameLayout f17160p;

    /* renamed from: q, reason: collision with root package name */
    private LinearLayout f17161q;

    public class a implements Runnable {

        /* renamed from: com.beizi.fusion.widget.ScrollClickView$a$a, reason: collision with other inner class name */
        public class C0177a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f17163a;

            public C0177a(int i2) {
                this.f17163a = i2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = ScrollClickView.this.f17146b.getLayoutParams();
                    if (layoutParams instanceof FrameLayout.LayoutParams) {
                        ((FrameLayout.LayoutParams) layoutParams).topMargin = ScrollClickView.this.f17156l - iIntValue;
                    }
                    ViewGroup.LayoutParams layoutParams2 = ScrollClickView.this.f17160p.getLayoutParams();
                    if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                        layoutParams2.height = iIntValue - (this.f17163a / 3);
                        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) layoutParams2;
                        layoutParams3.topMargin = ScrollClickView.this.f17156l - layoutParams3.height;
                    }
                    ScrollClickView.this.f17159o.requestLayout();
                } catch (Exception unused) {
                }
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (ScrollClickView.this.f17159o != null && ScrollClickView.this.f17160p != null) {
                    if (ScrollClickView.this.f17146b.getLayoutParams() == null) {
                        return;
                    }
                    int i2 = ScrollClickView.this.f17146b.getLayoutParams().height;
                    ScrollClickView scrollClickView = ScrollClickView.this;
                    scrollClickView.f17157m = ValueAnimator.ofInt(i2, scrollClickView.f17156l);
                    mh.c("ScrollClickUtil", "handHeight = " + i2 + ",scrollbarHeight = " + ScrollClickView.this.f17156l);
                    ViewGroup.LayoutParams layoutParams = ScrollClickView.this.f17147c.getLayoutParams();
                    StringBuilder sb = new StringBuilder();
                    sb.append("handHeight = ");
                    sb.append(i2);
                    mh.c("ScrollClickUtil", sb.toString());
                    if (layoutParams != null) {
                        layoutParams.height = ScrollClickView.this.f17156l;
                    }
                    ScrollClickView.this.f17157m.setDuration(1000L);
                    ScrollClickView.this.f17157m.setRepeatCount(-1);
                    ScrollClickView.this.f17157m.setRepeatMode(1);
                    ScrollClickView.this.f17157m.addUpdateListener(new C0177a(i2));
                    return;
                }
                mh.c("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
            } catch (Exception unused) {
            }
        }
    }

    public class b implements Runnable {

        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f17166a;

            public a(int i2) {
                this.f17166a = i2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = ScrollClickView.this.f17159o.getLayoutParams();
                    if (layoutParams != null) {
                        layoutParams.height = iIntValue;
                    }
                    ViewGroup.LayoutParams layoutParams2 = ScrollClickView.this.f17160p.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.height = iIntValue - (this.f17166a / 3);
                    }
                    ScrollClickView.this.f17159o.requestLayout();
                } catch (Exception unused) {
                }
            }
        }

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (ScrollClickView.this.f17159o != null && ScrollClickView.this.f17160p != null) {
                    if (ScrollClickView.this.f17146b.getLayoutParams() == null) {
                        return;
                    }
                    int i2 = ScrollClickView.this.f17146b.getLayoutParams().height;
                    ScrollClickView scrollClickView = ScrollClickView.this;
                    scrollClickView.f17157m = ValueAnimator.ofInt(i2, scrollClickView.f17156l);
                    ViewGroup.LayoutParams layoutParams = ScrollClickView.this.f17147c.getLayoutParams();
                    mh.c("ScrollClickUtil", "handHeight = " + i2);
                    if (layoutParams != null) {
                        layoutParams.height = ScrollClickView.this.f17156l;
                    }
                    ScrollClickView.this.f17157m.setDuration(1000L);
                    ScrollClickView.this.f17157m.setRepeatCount(-1);
                    ScrollClickView.this.f17157m.setRepeatMode(1);
                    ScrollClickView.this.f17157m.addUpdateListener(new a(i2));
                    return;
                }
                mh.c("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
            } catch (Exception unused) {
            }
        }
    }

    public ScrollClickView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17145a = false;
        this.f17154j = "up";
        this.f17155k = 45;
        this.f17156l = 180;
        this.f17161q = null;
        init(context);
    }

    public void buildRealView() {
        try {
            if ("up".equalsIgnoreCase(this.f17154j)) {
                this.f17161q = (LinearLayout) LayoutInflater.from(this.f17158n).inflate(R.layout.beizi_layout_scrollview_up, this);
            } else if (DIR_DOWN.equalsIgnoreCase(this.f17154j)) {
                this.f17161q = (LinearLayout) LayoutInflater.from(this.f17158n).inflate(R.layout.beizi_layout_scrollview_down, this);
            }
        } catch (Throwable unused) {
            if ("up".equalsIgnoreCase(this.f17154j)) {
                this.f17161q = (LinearLayout) LayoutInflater.from(this.f17158n.getApplicationContext()).inflate(R.layout.beizi_layout_scrollview_up, this);
            } else if (DIR_DOWN.equalsIgnoreCase(this.f17154j)) {
                this.f17161q = (LinearLayout) LayoutInflater.from(this.f17158n.getApplicationContext()).inflate(R.layout.beizi_layout_scrollview_down, this);
            }
        }
        try {
            LinearLayout linearLayout = this.f17161q;
            if (linearLayout == null) {
                return;
            }
            this.f17146b = (ImageView) linearLayout.findViewById(R.id.hand);
            this.f17147c = (ImageView) this.f17161q.findViewById(R.id.scrollbar);
            this.f17148d = (TextView) this.f17161q.findViewById(R.id.title);
            this.f17149e = (TextView) this.f17161q.findViewById(R.id.details);
            this.f17159o = (FrameLayout) this.f17161q.findViewById(R.id.scroll_container);
            this.f17160p = (FrameLayout) this.f17161q.findViewById(R.id.scrollbar_container);
            this.f17155k = vo.a(this.f17158n, this.f17155k);
            this.f17156l = vo.a(this.f17158n, this.f17156l) + this.f17155k;
            TextView textView = this.f17148d;
            if (textView != null) {
                textView.setText(this.f17150f);
                this.f17148d.setTextSize(2, this.f17152h);
            }
            TextView textView2 = this.f17149e;
            if (textView2 != null) {
                textView2.setText(this.f17151g);
                this.f17149e.setTextSize(2, this.f17153i);
            }
            ImageView imageView = this.f17146b;
            if (imageView == null || this.f17147c == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = this.f17147c.getLayoutParams();
            if (layoutParams != null) {
                int i2 = this.f17155k;
                layoutParams.width = i2;
                layoutParams.height = i2;
                if (layoutParams2 != null) {
                    layoutParams2.height = this.f17156l;
                    layoutParams2.width = (int) (i2 * 0.55f);
                }
            }
            if (DIR_DOWN.equalsIgnoreCase(this.f17154j)) {
                a();
            } else if ("up".equalsIgnoreCase(this.f17154j)) {
                b();
            } else {
                if (DIR_LEFT.equalsIgnoreCase(this.f17154j)) {
                    return;
                }
                DIR_RIGHT.equalsIgnoreCase(this.f17154j);
            }
        } catch (Exception unused2) {
        }
    }

    public void init(Context context) {
        if (this.f17145a) {
            return;
        }
        this.f17158n = context;
        this.f17145a = true;
    }

    public void setDetailText(String str) {
        this.f17151g = str;
    }

    public void setDetailsFont(int i2) {
        this.f17153i = i2;
    }

    public void setHandWidth(int i2) {
        this.f17155k = i2;
    }

    public void setScrollDirection(String str) {
        this.f17154j = str;
    }

    public void setScrollbarHeight(int i2) {
        this.f17156l = i2;
    }

    public void setTitleFont(int i2) {
        this.f17152h = i2;
    }

    public void setTitleText(String str) {
        this.f17150f = str;
    }

    public void startAnim() {
        StringBuilder sb = new StringBuilder();
        sb.append("startAnim animator != null ? ");
        sb.append(this.f17157m != null);
        mh.c("ScrollClickUtil", sb.toString());
        try {
            ValueAnimator valueAnimator = this.f17157m;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        } catch (Exception unused) {
        }
    }

    public void stopAnim() {
        try {
            ValueAnimator valueAnimator = this.f17157m;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
                this.f17157m.cancel();
            }
        } catch (Exception unused) {
        }
    }

    private void b() {
        try {
            this.f17146b.post(new a());
        } catch (Exception unused) {
        }
    }

    private void a() {
        try {
            this.f17146b.post(new b());
        } catch (Exception unused) {
        }
    }

    public ScrollClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17145a = false;
        this.f17154j = "up";
        this.f17155k = 45;
        this.f17156l = 180;
        this.f17161q = null;
        init(context);
    }

    public ScrollClickView(Context context) {
        super(context);
        this.f17145a = false;
        this.f17154j = "up";
        this.f17155k = 45;
        this.f17156l = 180;
        this.f17161q = null;
        init(context);
    }
}
