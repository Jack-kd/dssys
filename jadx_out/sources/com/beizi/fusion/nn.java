package com.beizi.fusion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollClickView;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class nn {

    /* renamed from: a, reason: collision with root package name */
    private Context f15353a;

    /* renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f15354b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f15355c;

    /* renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickPositionBean f15356d;

    /* renamed from: f, reason: collision with root package name */
    private View f15358f;

    /* renamed from: g, reason: collision with root package name */
    private String f15359g;

    /* renamed from: l, reason: collision with root package name */
    private int f15364l;

    /* renamed from: m, reason: collision with root package name */
    private ValueAnimator f15365m;

    /* renamed from: n, reason: collision with root package name */
    private int f15366n;

    /* renamed from: o, reason: collision with root package name */
    private ImageView f15367o;

    /* renamed from: p, reason: collision with root package name */
    private ImageView f15368p;

    /* renamed from: q, reason: collision with root package name */
    private ImageView f15369q;

    /* renamed from: u, reason: collision with root package name */
    private LinearLayout f15373u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f15374v;

    /* renamed from: e, reason: collision with root package name */
    private d f15357e = null;

    /* renamed from: h, reason: collision with root package name */
    private String f15360h = "up";

    /* renamed from: i, reason: collision with root package name */
    private String f15361i = ScrollClickView.DIR_DOWN;

    /* renamed from: j, reason: collision with root package name */
    private String f15362j = ScrollClickView.DIR_LEFT;

    /* renamed from: k, reason: collision with root package name */
    private String f15363k = ScrollClickView.DIR_RIGHT;

    /* renamed from: r, reason: collision with root package name */
    private String f15370r = "#9CBBFF";

    /* renamed from: s, reason: collision with root package name */
    private String f15371s = "#C1D4FF";

    /* renamed from: t, reason: collision with root package name */
    private String f15372t = "#FFFFFF";

    public class a implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f15375a;

        /* renamed from: b, reason: collision with root package name */
        float f15376b;

        /* renamed from: c, reason: collision with root package name */
        float f15377c;

        /* renamed from: d, reason: collision with root package name */
        float f15378d;

        /* renamed from: e, reason: collision with root package name */
        float f15379e;

        /* renamed from: f, reason: collision with root package name */
        float f15380f;

        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f15375a = motionEvent.getX();
                this.f15376b = motionEvent.getY();
                this.f15377c = motionEvent.getX();
                this.f15378d = motionEvent.getY();
                this.f15379e = motionEvent.getRawX();
                this.f15380f = motionEvent.getRawY();
            } else if (action == 1) {
                nh.d("BeiZisAd", "mCurPosX = " + this.f15377c + ",mCurPosY = " + this.f15378d + ",mPosX = " + this.f15375a + ",mPosY = " + this.f15376b);
                float f2 = this.f15378d - this.f15376b;
                if (f2 <= 0.0f || Math.abs(f2) <= nn.this.f15364l) {
                    float f3 = this.f15378d - this.f15376b;
                    if (f3 >= 0.0f || Math.abs(f3) <= nn.this.f15364l) {
                        float f4 = this.f15377c - this.f15375a;
                        if (f4 >= 0.0f || Math.abs(f4) <= nn.this.f15364l) {
                            float f5 = this.f15377c - this.f15375a;
                            if (f5 <= 0.0f || Math.abs(f5) <= nn.this.f15364l) {
                                if (Math.abs(this.f15377c - this.f15375a) <= 15.0f && Math.abs(this.f15378d - this.f15376b) <= 15.0f && nn.this.f15357e != null) {
                                    nn.this.f15357e.a(this.f15375a + "", this.f15376b + "", this.f15379e + "", this.f15380f + "", this.f15375a + "", this.f15376b + "", this.f15379e + "", this.f15380f + "");
                                }
                            } else if ((nn.this.f15363k.equalsIgnoreCase(nn.this.f15359g) || nn.this.f15374v) && nn.this.f15357e != null) {
                                nn.this.f15357e.b(this.f15375a + "", this.f15376b + "", this.f15379e + "", this.f15380f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                            }
                        } else if ((nn.this.f15362j.equalsIgnoreCase(nn.this.f15359g) || nn.this.f15374v) && nn.this.f15357e != null) {
                            nn.this.f15357e.b(this.f15375a + "", this.f15376b + "", this.f15379e + "", this.f15380f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        }
                    } else if ((nn.this.f15360h.equalsIgnoreCase(nn.this.f15359g) || nn.this.f15374v) && nn.this.f15357e != null) {
                        nn.this.f15357e.b(this.f15375a + "", this.f15376b + "", this.f15379e + "", this.f15380f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                    }
                } else if ((nn.this.f15361i.equalsIgnoreCase(nn.this.f15359g) || nn.this.f15374v) && nn.this.f15357e != null) {
                    nn.this.f15357e.b(this.f15375a + "", this.f15376b + "", this.f15379e + "", this.f15380f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                }
            } else if (action == 2) {
                this.f15377c = motionEvent.getX();
                this.f15378d = motionEvent.getY();
            }
            return true;
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            nh.c("ScrollUtil", "addScrollViewViewAnimation onAnimationEnd");
            try {
                nn.p(nn.this);
                if (nn.this.f15360h.equals(nn.this.f15359g) || nn.this.f15362j.equals(nn.this.f15359g)) {
                    if (nn.this.f15366n == 1) {
                        nn.this.f15367o.setColorFilter(Color.parseColor(nn.this.f15371s));
                        nn.this.f15368p.setColorFilter(Color.parseColor(nn.this.f15372t));
                        nn.this.f15369q.setColorFilter(Color.parseColor(nn.this.f15370r));
                    } else if (nn.this.f15366n == 2) {
                        nn.this.f15367o.setColorFilter(Color.parseColor(nn.this.f15372t));
                        nn.this.f15368p.setColorFilter(Color.parseColor(nn.this.f15370r));
                        nn.this.f15369q.setColorFilter(Color.parseColor(nn.this.f15371s));
                    } else if (nn.this.f15366n == 3) {
                        nn.this.f15367o.setColorFilter(Color.parseColor(nn.this.f15370r));
                        nn.this.f15368p.setColorFilter(Color.parseColor(nn.this.f15371s));
                        nn.this.f15369q.setColorFilter(Color.parseColor(nn.this.f15372t));
                    }
                } else if (nn.this.f15361i.equals(nn.this.f15359g) || nn.this.f15363k.equals(nn.this.f15359g)) {
                    if (nn.this.f15366n == 1) {
                        nn.this.f15367o.setColorFilter(Color.parseColor(nn.this.f15370r));
                        nn.this.f15368p.setColorFilter(Color.parseColor(nn.this.f15372t));
                        nn.this.f15369q.setColorFilter(Color.parseColor(nn.this.f15371s));
                    } else if (nn.this.f15366n == 2) {
                        nn.this.f15367o.setColorFilter(Color.parseColor(nn.this.f15371s));
                        nn.this.f15368p.setColorFilter(Color.parseColor(nn.this.f15370r));
                        nn.this.f15369q.setColorFilter(Color.parseColor(nn.this.f15372t));
                    } else if (nn.this.f15366n == 3) {
                        nn.this.f15367o.setColorFilter(Color.parseColor(nn.this.f15372t));
                        nn.this.f15368p.setColorFilter(Color.parseColor(nn.this.f15371s));
                        nn.this.f15369q.setColorFilter(Color.parseColor(nn.this.f15370r));
                    }
                }
                if (nn.this.f15366n >= 3) {
                    nn.this.f15366n = 0;
                }
                if (nn.this.f15365m != null) {
                    nn.this.f15365m.start();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface d {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);

        void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public nn(Context context, AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean, String str, String str2) {
        try {
            this.f15353a = context;
            this.f15354b = scrollClickBean;
            AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanA = a(scrollClickBean.getOrderData(), str2);
            if (orderDataScrollViewOrderBeanA != null && orderDataScrollViewOrderBeanA.getScrollClick() != null) {
                this.f15355c = orderDataScrollViewOrderBeanA.getScrollClick();
            }
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean2 = this.f15355c;
            if (scrollClickBean2 != null) {
                this.f15359g = scrollClickBean2.getScrollDirection();
                this.f15364l = this.f15355c.getScrollDistance();
                this.f15356d = this.f15355c.getPosition();
            } else {
                AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean3 = this.f15354b;
                if (scrollClickBean3 != null) {
                    this.f15359g = scrollClickBean3.getScrollDirection();
                    this.f15364l = this.f15354b.getScrollDistance();
                    this.f15356d = this.f15354b.getPosition();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ int p(nn nnVar) {
        int i2 = nnVar.f15366n;
        nnVar.f15366n = i2 + 1;
        return i2;
    }

    private void c() {
        View view = this.f15358f;
        if (view == null) {
            return;
        }
        view.setOnTouchListener(new a());
    }

    private void d() {
        this.f15373u.setGravity(17);
        int i2 = this.f15373u.getLayoutParams().width;
        int i3 = this.f15373u.getLayoutParams().height;
        this.f15367o = new ImageView(this.f15353a);
        this.f15368p = new ImageView(this.f15353a);
        this.f15369q = new ImageView(this.f15353a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (this.f15360h.equals(this.f15359g)) {
            this.f15373u.setOrientation(1);
            this.f15367o.setImageResource(R.mipmap.beizi_interaction_icon_arrow_up);
            this.f15368p.setImageResource(R.mipmap.beizi_interaction_icon_arrow_up);
            this.f15369q.setImageResource(R.mipmap.beizi_interaction_icon_arrow_up);
            this.f15367o.setColorFilter(Color.parseColor(this.f15370r));
            this.f15368p.setColorFilter(Color.parseColor(this.f15371s));
            this.f15369q.setColorFilter(Color.parseColor(this.f15372t));
            layoutParams.width = i2;
            layoutParams.height = i3 / 3;
        } else if (this.f15361i.equals(this.f15359g)) {
            this.f15373u.setOrientation(1);
            this.f15367o.setImageResource(R.mipmap.beizi_interaction_icon_arrow_down);
            this.f15368p.setImageResource(R.mipmap.beizi_interaction_icon_arrow_down);
            this.f15369q.setImageResource(R.mipmap.beizi_interaction_icon_arrow_down);
            this.f15367o.setColorFilter(Color.parseColor(this.f15372t));
            this.f15368p.setColorFilter(Color.parseColor(this.f15371s));
            this.f15369q.setColorFilter(Color.parseColor(this.f15370r));
            layoutParams.width = i2;
            layoutParams.height = i3 / 3;
        } else if (this.f15362j.equals(this.f15359g)) {
            this.f15373u.setOrientation(0);
            this.f15367o.setImageResource(R.mipmap.beizi_interaction_icon_arrow_left);
            this.f15368p.setImageResource(R.mipmap.beizi_interaction_icon_arrow_left);
            this.f15369q.setImageResource(R.mipmap.beizi_interaction_icon_arrow_left);
            this.f15367o.setColorFilter(Color.parseColor(this.f15370r));
            this.f15368p.setColorFilter(Color.parseColor(this.f15371s));
            this.f15369q.setColorFilter(Color.parseColor(this.f15372t));
            layoutParams.width = i2 / 3;
            layoutParams.height = i3;
        } else if (this.f15363k.equals(this.f15359g)) {
            this.f15373u.setOrientation(0);
            this.f15367o.setImageResource(R.mipmap.beizi_interaction_icon_arrow_right);
            this.f15368p.setImageResource(R.mipmap.beizi_interaction_icon_arrow_right);
            this.f15369q.setImageResource(R.mipmap.beizi_interaction_icon_arrow_right);
            this.f15367o.setColorFilter(Color.parseColor(this.f15372t));
            this.f15368p.setColorFilter(Color.parseColor(this.f15371s));
            this.f15369q.setColorFilter(Color.parseColor(this.f15370r));
            layoutParams.width = i2 / 3;
            layoutParams.height = i3;
        }
        this.f15373u.addView(this.f15367o, layoutParams);
        this.f15373u.addView(this.f15368p, layoutParams);
        this.f15373u.addView(this.f15369q, layoutParams);
    }

    public void b(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f15353a == null) {
                    return;
                }
                this.f15373u = new LinearLayout(this.f15353a);
                int[] iArrA = a(viewGroup);
                if (viewGroup instanceof RelativeLayout) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    int i2 = iArrA[0];
                    if (i2 > 0) {
                        layoutParams.width = i2;
                    }
                    int i3 = iArrA[1];
                    if (i3 > 0) {
                        layoutParams.height = i3;
                    }
                    layoutParams.leftMargin = iArrA[2];
                    layoutParams.topMargin = iArrA[3];
                    layoutParams.addRule(17);
                    viewGroup.addView(this.f15373u, layoutParams);
                } else if (viewGroup instanceof FrameLayout) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    int i4 = iArrA[0];
                    if (i4 > 0) {
                        layoutParams2.width = i4;
                    }
                    int i5 = iArrA[1];
                    if (i5 > 0) {
                        layoutParams2.height = i5;
                    }
                    layoutParams2.leftMargin = iArrA[2];
                    layoutParams2.topMargin = iArrA[3];
                    viewGroup.addView(this.f15373u, layoutParams2);
                } else if (viewGroup instanceof LinearLayout) {
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                    int i6 = iArrA[0];
                    if (i6 > 0) {
                        layoutParams3.width = i6;
                    }
                    int i7 = iArrA[1];
                    if (i7 > 0) {
                        layoutParams3.height = i7;
                    }
                    layoutParams3.leftMargin = iArrA[2];
                    layoutParams3.topMargin = iArrA[3];
                    viewGroup.addView(this.f15373u, layoutParams3);
                } else {
                    ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                    int i8 = iArrA[0];
                    if (i8 > 0) {
                        layoutParams4.width = i8;
                    }
                    int i9 = iArrA[1];
                    if (i9 > 0) {
                        layoutParams4.height = i9;
                    }
                    viewGroup.addView(this.f15373u, layoutParams4);
                }
                d();
                a();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(boolean z2) {
        this.f15374v = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0177 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:4:0x0010, B:7:0x001c, B:10:0x003e, B:16:0x0049, B:18:0x004f, B:21:0x0056, B:23:0x0073, B:24:0x0079, B:27:0x00b7, B:30:0x00be, B:32:0x00c4, B:35:0x00cb, B:37:0x00d1, B:42:0x00ed, B:44:0x00f3, B:49:0x010f, B:51:0x0117, B:56:0x0133, B:58:0x0139, B:63:0x0155, B:65:0x0177, B:67:0x017b, B:68:0x017d, B:60:0x014a, B:62:0x0150, B:52:0x0127, B:54:0x012d, B:45:0x0103, B:47:0x0109, B:38:0x00e1, B:40:0x00e7, B:70:0x01be), top: B:74:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017b A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:4:0x0010, B:7:0x001c, B:10:0x003e, B:16:0x0049, B:18:0x004f, B:21:0x0056, B:23:0x0073, B:24:0x0079, B:27:0x00b7, B:30:0x00be, B:32:0x00c4, B:35:0x00cb, B:37:0x00d1, B:42:0x00ed, B:44:0x00f3, B:49:0x010f, B:51:0x0117, B:56:0x0133, B:58:0x0139, B:63:0x0155, B:65:0x0177, B:67:0x017b, B:68:0x017d, B:60:0x014a, B:62:0x0150, B:52:0x0127, B:54:0x012d, B:45:0x0103, B:47:0x0109, B:38:0x00e1, B:40:0x00e7, B:70:0x01be), top: B:74:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] a(android.view.ViewGroup r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.nn.a(android.view.ViewGroup):int[]");
    }

    public void b() {
        try {
            this.f15358f = null;
            this.f15357e = null;
            this.f15355c = null;
            this.f15354b = null;
            ValueAnimator valueAnimator = this.f15365m;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
                this.f15365m.removeAllListeners();
            }
            this.f15365m = null;
            this.f15367o = null;
            this.f15368p = null;
            this.f15369q = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(View view, d dVar) {
        this.f15358f = view;
        this.f15357e = dVar;
        c();
    }

    private void a() {
        try {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(10, 0);
            this.f15365m = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(500L);
            this.f15365m.addUpdateListener(new b());
            this.f15365m.addListener(new c());
            ValueAnimator valueAnimator = this.f15365m;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBean = (AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean) it.next();
                List<String> orderList = orderDataScrollViewOrderBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataScrollViewOrderBean;
                }
            }
        }
        return null;
    }
}
