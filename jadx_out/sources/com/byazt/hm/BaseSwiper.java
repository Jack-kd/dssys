package com.byazt.hm;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.Scroller;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.byazt.ds.BaseIndicator;
import com.byazt.ds.DotIndicator;
import com.byazt.ds.RectangleIndicator;
import com.byazt.mc.ViewPager;
import com.byazt.mr.j;
import com.byazt.mr.jx;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 787, 987})
/* loaded from: classes2.dex */
public abstract class BaseSwiper<T> extends FrameLayout implements ViewPager.j {
    public static final Interpolator hq = new Interpolator() { // from class: com.byazt.hm.BaseSwiper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public int f20734a;

    /* renamed from: b, reason: collision with root package name */
    public BaseIndicator f20735b;
    public FrameLayout cx;

    /* renamed from: d, reason: collision with root package name */
    public Scroller f20736d;
    public hp di;

    /* renamed from: e, reason: collision with root package name */
    public int f20737e;
    public int eb;
    public int ec;
    public String gu;
    public List<T> hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20738j;
    public float jl;
    public Context jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f20739k;

    /* renamed from: l, reason: collision with root package name */
    public ViewPager f20740l;

    /* renamed from: n, reason: collision with root package name */
    public int f20741n;
    public int ns;
    public final Runnable nu;

    /* renamed from: o, reason: collision with root package name */
    public com.byazt.hm.hp f20742o;

    /* renamed from: q, reason: collision with root package name */
    public int f20743q;

    /* renamed from: s, reason: collision with root package name */
    public int f20744s;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f20745u;
    public final Runnable ud;

    /* renamed from: v, reason: collision with root package name */
    public boolean f20746v;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public int f20747w;
    public boolean wv;
    public boolean xs;
    public boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 787, 1772})
    public class SwiperViewPager extends ViewPager {
        public SwiperViewPager(Context context) {
            super(context);
        }

        private MotionEvent hp(MotionEvent motionEvent) {
            float width = getWidth();
            float height = getHeight();
            motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
            return motionEvent;
        }

        @Override // com.byazt.mc.ViewPager, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
            if (!BaseSwiper.this.f20745u) {
                return false;
            }
            try {
                if (BaseSwiper.this.ns != 1) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(hp(motionEvent));
                hp(motionEvent);
                return zOnInterceptTouchEvent;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }

        @Override // com.byazt.mc.ViewPager, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!BaseSwiper.this.f20745u) {
                return false;
            }
            try {
                return BaseSwiper.this.ns == 1 ? super.onTouchEvent(hp(motionEvent)) : super.onTouchEvent(motionEvent);
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 787, 788})
    public class hp extends com.byazt.mc.l {
        public hp() {
        }

        @Override // com.byazt.mc.l
        public int hp(Object obj) {
            return -2;
        }

        @Override // com.byazt.mc.l
        public boolean hp(View view, Object obj) {
            return view == obj;
        }

        @Override // com.byazt.mc.l
        public int hp() {
            if (BaseSwiper.this.f20746v) {
                return 1024;
            }
            return BaseSwiper.this.hp.size();
        }

        @Override // com.byazt.mc.l
        public Object hp(ViewGroup viewGroup, int i2) {
            View viewHp = BaseSwiper.this.hp(i2, com.byazt.hm.l.hp(BaseSwiper.this.f20746v, i2, BaseSwiper.this.hp.size()));
            viewGroup.addView(viewHp);
            return viewHp;
        }

        @Override // com.byazt.mc.l
        public void hp(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // com.byazt.mc.l
        public float hp(int i2) {
            if (BaseSwiper.this.jl <= 0.0f) {
                return 1.0f;
            }
            return 1.0f / BaseSwiper.this.jl;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 787, 2186})
    public class l extends Scroller {
        public l(Context context, Interpolator interpolator) {
            super(context, interpolator);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i2, int i3, int i4, int i5, int i6) {
            super.startScroll(i2, i3, i4, i5, BaseSwiper.this.eb);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i2, int i3, int i4, int i5) {
            super.startScroll(i2, i3, i4, i5, BaseSwiper.this.eb);
        }
    }

    public BaseSwiper(Context context) {
        super(context);
        this.hp = new CopyOnWriteArrayList();
        this.f20738j = -1;
        this.f20747w = 2000;
        this.f20734a = 500;
        this.eb = 500;
        this.f20744s = 0;
        this.f20743q = -1;
        this.f20737e = -1;
        this.gu = PrerollVideoResponse.NORMAL;
        this.jl = 1.0f;
        this.zy = true;
        this.f20739k = true;
        this.f20746v = true;
        this.f20745u = true;
        this.ec = 0;
        this.sz = 0;
        this.f20741n = 0;
        this.ns = 0;
        this.wv = true;
        this.ud = new Runnable() { // from class: com.byazt.hm.BaseSwiper.2
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                int currentItem = BaseSwiper.this.f20740l.getCurrentItem() + 1;
                if (BaseSwiper.this.f20746v) {
                    if (currentItem >= 1024) {
                        BaseSwiper.this.f20740l.hp(512, false);
                        return;
                    } else {
                        BaseSwiper.this.f20740l.hp(currentItem, true);
                        return;
                    }
                }
                com.byazt.mc.l adapter = BaseSwiper.this.f20740l.getAdapter();
                if (adapter != null) {
                    if (currentItem >= adapter.hp()) {
                        BaseSwiper.this.f20740l.hp(0, false);
                    } else {
                        BaseSwiper.this.f20740l.hp(currentItem, true);
                    }
                }
            }
        };
        this.nu = new Runnable() { // from class: com.byazt.hm.BaseSwiper.3
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                if (BaseSwiper.this.f20739k) {
                    BaseSwiper.this.wv = false;
                    int currentItem = BaseSwiper.this.f20740l.getCurrentItem() + 1;
                    if (BaseSwiper.this.f20746v) {
                        if (currentItem >= 1024) {
                            BaseSwiper.this.f20740l.hp(512, false);
                        } else {
                            BaseSwiper.this.f20740l.hp(currentItem, true);
                        }
                        BaseSwiper baseSwiper = BaseSwiper.this;
                        baseSwiper.postDelayed(baseSwiper.nu, BaseSwiper.this.f20747w);
                        return;
                    }
                    com.byazt.mc.l adapter = BaseSwiper.this.f20740l.getAdapter();
                    if (adapter != null) {
                        if (currentItem >= adapter.hp()) {
                            BaseSwiper.this.f20740l.hp(0, false);
                            BaseSwiper baseSwiper2 = BaseSwiper.this;
                            baseSwiper2.postDelayed(baseSwiper2.nu, BaseSwiper.this.f20747w);
                        } else {
                            BaseSwiper.this.f20740l.hp(currentItem, true);
                            BaseSwiper baseSwiper3 = BaseSwiper.this;
                            baseSwiper3.postDelayed(baseSwiper3.nu, BaseSwiper.this.f20747w);
                        }
                    }
                }
            }
        };
        this.jx = context;
        this.cx = new FrameLayout(context);
        this.f20740l = hp();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.cx.addView(this.f20740l, layoutParams);
        addView(this.cx);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f20739k) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                if (!this.xs) {
                    j();
                }
            } else if (action == 0) {
                w();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public BaseSwiper e(int i2) throws Resources.NotFoundException {
        this.f20737e = i2;
        hp(this.gu, this.f20744s, this.f20743q, i2, true);
        return this;
    }

    public com.byazt.mc.l getAdapter() {
        return this.f20740l.getAdapter();
    }

    public int getCurrentItem() {
        return this.f20740l.getCurrentItem();
    }

    public ViewPager getViewPager() {
        return this.f20740l;
    }

    public abstract View gu(int i2);

    public void jl(int i2) {
        int i3;
        if (this.f20742o != null) {
            int iHp = com.byazt.hm.l.hp(this.f20746v, i2, this.hp.size());
            i3 = i2;
            this.f20742o.hp(this.f20746v, iHp, i3, iHp == 0, iHp == this.hp.size() - 1);
        } else {
            i3 = i2;
        }
        if (this.zy) {
            this.f20735b.hp(i3);
        }
    }

    public void k(int i2) throws Resources.NotFoundException {
        hp(this.gu, this.f20744s, this.f20743q, this.f20737e, true);
        if (this.di == null) {
            this.di = new hp();
            this.f20740l.hp((ViewPager.j) this);
            this.f20740l.setAdapter(this.di);
        }
        if (this.f20746v) {
            if (i2 >= 1024) {
                this.f20740l.hp(512, false);
                return;
            } else {
                this.f20740l.hp(i2, true);
                return;
            }
        }
        if (i2 < 0 || i2 >= this.hp.size()) {
            return;
        }
        this.f20740l.hp(i2, true);
    }

    public BaseSwiper<T> q(int i2) throws Resources.NotFoundException {
        this.f20743q = i2;
        hp(this.gu, this.f20744s, i2, this.f20737e, true);
        return this;
    }

    public void setOnPageChangeListener(com.byazt.hm.hp hpVar) {
        this.f20742o = hpVar;
    }

    public void setTwoItems(boolean z2) {
        this.vv = z2;
    }

    public void v(int i2) {
        removeCallbacks(this.ud);
        postDelayed(this.ud, i2);
    }

    public void zy(int i2) {
        if (i2 == 1 && this.xs) {
            w();
        }
        com.byazt.hm.hp hpVar = this.f20742o;
        if (hpVar != null) {
            hpVar.hp(this.f20746v, i2);
        }
    }

    public BaseSwiper a(int i2) {
        this.f20735b.setSelectedColor(i2);
        return this;
    }

    public BaseSwiper eb(int i2) {
        this.f20735b.setUnSelectedColor(i2);
        return this;
    }

    public BaseSwiper j(float f2) {
        this.f20735b.setIndicatorY(f2);
        return this;
    }

    public BaseSwiper jx(float f2) {
        this.f20735b.setIndicatorX(f2);
        return this;
    }

    public BaseSwiper l(float f2) {
        this.f20735b.setIndicatorHeight((int) f2);
        return this;
    }

    public BaseSwiper s(int i2) throws Resources.NotFoundException {
        this.f20744s = i2;
        hp(this.gu, i2, this.f20743q, this.f20737e, true);
        return this;
    }

    public BaseSwiper w(int i2) {
        if (i2 < 0) {
            i2 = this.f20747w;
        }
        this.f20738j = i2;
        j();
        return this;
    }

    public void a() throws Resources.NotFoundException {
        int i2;
        hp(this.gu, this.f20744s, this.f20743q, this.f20737e, true);
        if (this.di == null) {
            this.di = new hp();
            this.f20740l.hp((ViewPager.j) this);
            this.f20740l.setAdapter(this.di);
        }
        int i3 = this.ec;
        if (i3 < 0 || i3 >= this.hp.size()) {
            this.ec = 0;
        }
        if (this.f20746v) {
            i2 = this.ec + 512;
        } else {
            i2 = this.ec;
        }
        this.f20740l.hp(i2, true);
    }

    public void eb() {
        removeCallbacks(this.ud);
    }

    public ViewPager hp() {
        return new SwiperViewPager(getContext());
    }

    public BaseSwiper j(int i2) {
        this.f20747w = i2;
        j();
        return this;
    }

    public BaseSwiper jx(int i2) {
        this.eb = i2;
        if (this.f20736d == null) {
            this.f20736d = new l(this.jx, hq);
        }
        this.f20740l.setScroller(this.f20736d);
        return this;
    }

    public BaseSwiper l() {
        this.f20735b.hp();
        return this;
    }

    private boolean s() {
        return this.hp.size() <= 2 && this.f20746v;
    }

    public BaseSwiper hp(String str) {
        if (TextUtils.equals(str, "rectangle")) {
            this.f20735b = new RectangleIndicator(this.jx);
        } else {
            this.f20735b = new DotIndicator(this.jx);
        }
        addView(this.f20735b, new FrameLayout.LayoutParams(-2, -2));
        return this;
    }

    public BaseSwiper l(String str) {
        this.f20735b.setIndicatorDirection(str);
        return this;
    }

    public BaseSwiper j(boolean z2) throws Resources.NotFoundException {
        this.f20735b.setLoop(z2);
        if (this.f20746v != z2) {
            int iHp = com.byazt.hm.l.hp(z2, this.f20740l.getCurrentItem(), this.hp.size());
            this.f20746v = z2;
            hp hpVar = this.di;
            if (hpVar != null) {
                hpVar.jx();
                this.f20740l.setCurrentItem(iHp);
            }
        }
        return this;
    }

    public BaseSwiper l(int i2) {
        this.f20734a = i2;
        return this;
    }

    public BaseSwiper w(float f2) {
        this.jl = f2;
        return this;
    }

    public BaseSwiper l(boolean z2) {
        this.f20745u = z2;
        return this;
    }

    public BaseSwiper w(boolean z2) {
        this.xs = z2;
        return this;
    }

    public BaseSwiper jx(boolean z2) {
        this.zy = z2;
        return this;
    }

    public void w() {
        removeCallbacks(this.nu);
    }

    public BaseSwiper hp(float f2) {
        this.f20735b.setIndicatorWidth((int) f2);
        return this;
    }

    public BaseSwiper jx(String str) throws Resources.NotFoundException {
        this.gu = str;
        hp(str, this.f20744s, this.f20743q, this.f20737e, true);
        return this;
    }

    public BaseSwiper hp(int i2) {
        this.ns = i2;
        return this;
    }

    public BaseSwiper hp(boolean z2) {
        this.f20739k = z2;
        j();
        return this;
    }

    public void jx() throws Resources.NotFoundException {
        int i2;
        hp(this.gu, this.f20744s, this.f20743q, this.f20737e, true);
        if (this.di == null) {
            this.di = new hp();
            this.f20740l.hp((ViewPager.j) this);
            this.f20740l.setAdapter(this.di);
        }
        int i3 = this.ec;
        if (i3 < 0 || i3 >= this.hp.size()) {
            this.ec = 0;
        }
        if (this.f20746v) {
            i2 = this.ec + 512;
        } else {
            i2 = this.ec;
        }
        this.f20740l.hp(i2, true);
        if (!this.f20746v) {
            jl(i2);
        }
        if (this.f20739k) {
            j();
        }
    }

    public void hp(String str, int i2, int i3, int i4, boolean z2) throws Resources.NotFoundException {
        hp hpVar = this.di;
        if (hpVar != null) {
            hpVar.jx();
        }
        this.f20740l.setPageMargin(i2);
        if (i3 > 0 || i4 > 0) {
            if (this.ns == 1) {
                this.f20740l.setPadding(0, i3 + i2, 0, i4 + i2);
            } else {
                this.f20740l.setPadding(i3 + i2, 0, i4 + i2, 0);
            }
            this.cx.setClipChildren(false);
            this.f20740l.setClipChildren(false);
            this.f20740l.setClipToPadding(false);
        }
        if (this.ns == 1) {
            j jVar = new j();
            jVar.hp(str);
            this.f20740l.hp(true, (ViewPager.w) jVar);
            this.f20740l.setOverScrollMode(2);
        } else if (TextUtils.equals(str, "linear")) {
            this.f20740l.hp(false, (ViewPager.w) new jx());
        } else if (TextUtils.equals(str, "cube")) {
            this.f20740l.hp(false, (ViewPager.w) new com.byazt.mr.hp());
        } else if (TextUtils.equals(str, "fade")) {
            this.f20740l.hp(false, (ViewPager.w) new com.byazt.mr.l());
        } else {
            this.f20740l.hp(false, (ViewPager.w) null);
        }
        this.f20740l.setOffscreenPageLimit((int) this.jl);
    }

    public void j() {
        int i2;
        removeCallbacks(this.nu);
        int i3 = this.f20747w;
        if (this.wv && (i2 = this.f20738j) > 0) {
            i3 = i2;
        }
        postDelayed(this.nu, i3);
    }

    public View hp(int i2, int i3) {
        if (this.hp.size() == 0) {
            return new View(getContext());
        }
        View viewGu = gu(i3);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (viewGu instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (s()) {
            viewGu.setTag("two_items_tag");
        }
        if (viewGu.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewGu.getParent()).removeView(viewGu);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(viewGu, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        if (s()) {
            frameLayout.setTag(Integer.valueOf(i2));
        }
        return frameLayout;
    }

    public BaseSwiper<T> hp(T t2) {
        if (t2 != null) {
            this.hp.add(t2);
            if (this.zy) {
                this.f20735b.l();
            }
        }
        hp hpVar = this.di;
        if (hpVar != null) {
            hpVar.jx();
            this.f20735b.hp(this.ec, this.f20740l.getCurrentItem());
        }
        return this;
    }

    @Override // com.byazt.mc.ViewPager.j
    public void hp(int i2, float f2, int i3) {
        com.byazt.hm.hp hpVar = this.f20742o;
        if (hpVar != null) {
            boolean z2 = this.f20746v;
            hpVar.hp(z2, com.byazt.hm.l.hp(z2, i2, this.hp.size()), f2, i3);
        }
        if (s()) {
            hp(i2, findViewWithTag(Integer.valueOf(i2)));
            if (f2 > 0.0f) {
                int i4 = i2 + 1;
                hp(i4, findViewWithTag(Integer.valueOf(i4)));
            }
        }
    }

    private void hp(int i2, View view) {
        View viewFindViewWithTag;
        if ((view instanceof ViewGroup) && (viewFindViewWithTag = view.findViewWithTag("two_items_tag")) == null) {
            T t2 = this.hp.get(com.byazt.hm.l.hp(true, i2, this.hp.size()));
            if (t2 == null) {
                return;
            }
            if (t2 instanceof com.byazt.xs.jx) {
                viewFindViewWithTag = ((com.byazt.xs.jx) t2).q();
            } else if (t2 instanceof View) {
                viewFindViewWithTag = (View) t2;
            }
            if (viewFindViewWithTag == null) {
                return;
            }
            if (viewFindViewWithTag.getParent() instanceof ViewGroup) {
                ((ViewGroup) viewFindViewWithTag.getParent()).removeView(viewFindViewWithTag);
            }
            ((ViewGroup) view).addView(viewFindViewWithTag);
        }
    }
}
