package com.octopus.ad.e;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.widget.ScrollClickView;
import com.octopus.ad.R;
import com.octopus.ad.d.b.f;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class a extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    ImageView f34092a;

    /* renamed from: b, reason: collision with root package name */
    ImageView f34093b;

    /* renamed from: c, reason: collision with root package name */
    TextView f34094c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f34095d;

    /* renamed from: e, reason: collision with root package name */
    private String f34096e;

    /* renamed from: f, reason: collision with root package name */
    private int f34097f;

    /* renamed from: g, reason: collision with root package name */
    private String f34098g;

    /* renamed from: h, reason: collision with root package name */
    private int f34099h;

    /* renamed from: i, reason: collision with root package name */
    private int f34100i;

    /* renamed from: j, reason: collision with root package name */
    private ValueAnimator f34101j;

    /* renamed from: k, reason: collision with root package name */
    private Context f34102k;

    /* renamed from: l, reason: collision with root package name */
    private FrameLayout f34103l;

    /* renamed from: m, reason: collision with root package name */
    private FrameLayout f34104m;

    /* renamed from: n, reason: collision with root package name */
    private LinearLayout f34105n;

    public a(Context context) {
        super(context);
        this.f34095d = false;
        this.f34097f = 12;
        this.f34098g = "up";
        this.f34099h = 45;
        this.f34100i = 180;
        this.f34105n = null;
        a(context);
    }

    private void e() {
        this.f34092a.post(new Runnable() { // from class: com.octopus.ad.e.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f34103l == null || a.this.f34104m == null) {
                    f.b("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
                    return;
                }
                if (a.this.f34092a.getLayoutParams() == null) {
                    return;
                }
                final int i2 = a.this.f34092a.getLayoutParams().height;
                a aVar = a.this;
                aVar.f34101j = ValueAnimator.ofInt(i2, aVar.f34100i);
                ViewGroup.LayoutParams layoutParams = a.this.f34093b.getLayoutParams();
                f.b("ScrollClickUtil", "handHeight = " + i2);
                if (layoutParams != null) {
                    layoutParams.height = a.this.f34100i;
                }
                a.this.f34101j.setDuration(1000L);
                a.this.f34101j.setRepeatCount(-1);
                a.this.f34101j.setRepeatMode(1);
                a.this.f34101j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.octopus.ad.e.a.2.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        ViewGroup.LayoutParams layoutParams2 = a.this.f34103l.getLayoutParams();
                        if (layoutParams2 != null) {
                            layoutParams2.height = iIntValue;
                        }
                        ViewGroup.LayoutParams layoutParams3 = a.this.f34104m.getLayoutParams();
                        if (layoutParams3 != null) {
                            layoutParams3.height = iIntValue - (i2 / 3);
                        }
                        a.this.f34103l.requestLayout();
                    }
                });
            }
        });
    }

    public void setHandWidth(int i2) {
        this.f34099h = i2;
    }

    public void setScrollDirection(String str) {
        this.f34098g = str;
    }

    public void setScrollbarHeight(int i2) {
        this.f34100i = i2;
    }

    public void setTitleFont(int i2) {
        this.f34097f = i2;
    }

    public void setTitleText(String str) {
        this.f34096e = str;
    }

    private void d() {
        this.f34092a.post(new Runnable() { // from class: com.octopus.ad.e.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f34103l == null || a.this.f34104m == null) {
                    f.b("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
                    return;
                }
                if (a.this.f34092a.getLayoutParams() == null) {
                    return;
                }
                final int i2 = a.this.f34092a.getLayoutParams().height;
                a aVar = a.this;
                aVar.f34101j = ValueAnimator.ofInt(i2, aVar.f34100i);
                f.b("ScrollClickUtil", "handHeight = " + i2 + ",scrollbarHeight = " + a.this.f34100i);
                ViewGroup.LayoutParams layoutParams = a.this.f34093b.getLayoutParams();
                StringBuilder sb = new StringBuilder();
                sb.append("handHeight = ");
                sb.append(i2);
                f.b("ScrollClickUtil", sb.toString());
                if (layoutParams != null) {
                    layoutParams.height = a.this.f34100i;
                }
                a.this.f34101j.setDuration(1000L);
                a.this.f34101j.setRepeatCount(-1);
                a.this.f34101j.setRepeatMode(1);
                a.this.f34101j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.octopus.ad.e.a.1.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        ViewGroup.LayoutParams layoutParams2 = a.this.f34092a.getLayoutParams();
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams2).topMargin = a.this.f34100i - iIntValue;
                        }
                        ViewGroup.LayoutParams layoutParams3 = a.this.f34104m.getLayoutParams();
                        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
                            layoutParams3.height = iIntValue - (i2 / 3);
                            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                            layoutParams4.topMargin = a.this.f34100i - layoutParams4.height;
                        }
                        a.this.f34103l.requestLayout();
                    }
                });
            }
        });
    }

    public void b() {
        ValueAnimator valueAnimator = this.f34101j;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.f34101j.cancel();
        }
    }

    public void c() {
        try {
            if ("up".equalsIgnoreCase(this.f34098g)) {
                this.f34105n = (LinearLayout) LayoutInflater.from(this.f34102k).inflate(R.layout.oct_layout_scrollview_up, this);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f34098g)) {
                this.f34105n = (LinearLayout) LayoutInflater.from(this.f34102k).inflate(R.layout.oct_layout_scrollview_down, this);
            }
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
            if ("up".equalsIgnoreCase(this.f34098g)) {
                this.f34105n = (LinearLayout) LayoutInflater.from(this.f34102k.getApplicationContext()).inflate(R.layout.oct_layout_scrollview_up, this);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f34098g)) {
                this.f34105n = (LinearLayout) LayoutInflater.from(this.f34102k.getApplicationContext()).inflate(R.layout.oct_layout_scrollview_down, this);
            }
        }
        LinearLayout linearLayout = this.f34105n;
        if (linearLayout == null) {
            return;
        }
        this.f34092a = (ImageView) linearLayout.findViewById(R.id.hand);
        this.f34093b = (ImageView) this.f34105n.findViewById(R.id.scrollbar);
        this.f34094c = (TextView) this.f34105n.findViewById(R.id.title);
        this.f34103l = (FrameLayout) this.f34105n.findViewById(R.id.scroll_container);
        this.f34104m = (FrameLayout) this.f34105n.findViewById(R.id.scrollbar_container);
        this.f34099h = ViewUtil.dip2px(this.f34102k, this.f34099h);
        this.f34100i = ViewUtil.dip2px(this.f34102k, this.f34100i) + this.f34099h;
        TextView textView = this.f34094c;
        if (textView != null) {
            textView.setText(this.f34096e);
            this.f34094c.setTextSize(2, this.f34097f);
        }
        ImageView imageView = this.f34092a;
        if (imageView == null || this.f34093b == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = this.f34093b.getLayoutParams();
        if (layoutParams != null) {
            int i2 = this.f34099h;
            layoutParams.width = i2;
            layoutParams.height = i2;
            if (layoutParams2 != null) {
                layoutParams2.height = this.f34100i;
                layoutParams2.width = (int) (i2 * 0.55f);
            }
        }
        if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f34098g)) {
            e();
        } else if ("up".equalsIgnoreCase(this.f34098g)) {
            d();
        } else {
            if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f34098g)) {
                return;
            }
            ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f34098g);
        }
    }

    public void a() {
        StringBuilder sb = new StringBuilder();
        sb.append("startAnim animator != null ? ");
        sb.append(this.f34101j != null);
        f.b("ScrollClickUtil", sb.toString());
        ValueAnimator valueAnimator = this.f34101j;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void a(Context context) {
        if (this.f34095d) {
            return;
        }
        this.f34102k = context;
        this.f34095d = true;
    }
}
