package com.byazt.mc;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 793, 1838})
/* loaded from: classes3.dex */
public class ViewPager extends ViewGroup {
    public int an;
    public int as;

    /* renamed from: b, reason: collision with root package name */
    public boolean f22925b;
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public int f22926d;
    public boolean di;
    public int dy;

    /* renamed from: e, reason: collision with root package name */
    public int f22927e;
    public j ea;
    public final ArrayList<l> eb;
    public int ec;

    /* renamed from: f, reason: collision with root package name */
    public boolean f22928f;
    public ArrayList<View> fi;
    public Parcelable gu;
    public boolean hd;
    public int hp;
    public boolean hq;

    /* renamed from: j, reason: collision with root package name */
    public int f22929j;
    public ClassLoader jl;
    public com.byazt.mc.l jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f22930k;
    public int kg;
    public float ky;
    public float lv;

    /* renamed from: m, reason: collision with root package name */
    public int f22931m;
    public int mp;

    /* renamed from: ms, reason: collision with root package name */
    public VelocityTracker f22932ms;

    /* renamed from: n, reason: collision with root package name */
    public float f22933n;
    public boolean nd;
    public int ns;
    public int nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f22934o;
    public int pc;
    public float pu;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f22935q;
    public w qu;

    /* renamed from: r, reason: collision with root package name */
    public float f22936r;
    public final Runnable rk;
    public List<Object> rv;
    public EdgeEffect rz;

    /* renamed from: s, reason: collision with root package name */
    public final l f22937s;
    public j su;
    public float sz;

    /* renamed from: u, reason: collision with root package name */
    public int f22938u;
    public int ud;

    /* renamed from: v, reason: collision with root package name */
    public a f22939v;
    public List<j> vq;
    public int vv;
    public int wt;
    public boolean wv;
    public int xh;
    public Drawable xs;

    /* renamed from: y, reason: collision with root package name */
    public int f22940y;
    public EdgeEffect yr;
    public boolean zx;
    public Scroller zy;

    /* renamed from: l, reason: collision with root package name */
    public static final int[] f22923l = {R.attr.layout_gravity};

    /* renamed from: w, reason: collision with root package name */
    public static final Comparator<l> f22924w = new Comparator<l>() { // from class: com.byazt.mc.ViewPager.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(l lVar, l lVar2) {
            return lVar.f22948l - lVar2.f22948l;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public static final Interpolator f22922a = new Interpolator() { // from class: com.byazt.mc.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    public static final s nr = new s();

    @com.byazt.kj.hp(hp = {0, 1, 793, 1400})
    public class a extends DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws Resources.NotFoundException {
            ViewPager.this.l();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() throws Resources.NotFoundException {
            ViewPager.this.l();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 793, 1611})
    public static class eb extends com.byazt.mc.hp {
        public static final Parcelable.Creator<eb> CREATOR = new Parcelable.ClassLoaderCreator<eb>() { // from class: com.byazt.mc.ViewPager.eb.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public eb createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new eb(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public eb createFromParcel(Parcel parcel) {
                return new eb(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public eb[] newArray(int i2) {
                return new eb[i2];
            }
        };

        /* renamed from: j, reason: collision with root package name */
        public ClassLoader f22941j;
        public Parcelable jx;

        /* renamed from: l, reason: collision with root package name */
        public int f22942l;

        public eb(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f22942l + "}";
        }

        @Override // com.byazt.mc.hp, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f22942l);
            parcel.writeParcelable(this.jx, i2);
        }

        public eb(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f22942l = parcel.readInt();
            this.jx = parcel.readParcelable(classLoader);
            this.f22941j = classLoader;
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface hp {
    }

    public interface j {
        void hp(int i2, float f2, int i3);

        void jl(int i2);

        void zy(int i2);
    }

    @com.byazt.kj.hp(hp = {0, 1, 793, 1401})
    public static class l {
        public Object hp;

        /* renamed from: j, reason: collision with root package name */
        public float f22947j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public int f22948l;

        /* renamed from: w, reason: collision with root package name */
        public float f22949w;
    }

    @com.byazt.kj.hp(hp = {0, 1, 793, 1403})
    public static class s implements Comparator<View> {
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            jx jxVar = (jx) view.getLayoutParams();
            jx jxVar2 = (jx) view2.getLayoutParams();
            boolean z2 = jxVar.hp;
            return z2 != jxVar2.hp ? z2 ? 1 : -1 : jxVar.f22946w - jxVar2.f22946w;
        }
    }

    public interface w {
        void hp(View view, float f2);
    }

    public ViewPager(Context context) {
        super(context);
        this.eb = new ArrayList<>();
        this.f22937s = new l();
        this.f22935q = new Rect();
        this.f22927e = -1;
        this.gu = null;
        this.jl = null;
        this.sz = -3.4028235E38f;
        this.f22933n = Float.MAX_VALUE;
        this.f22926d = 1;
        this.xh = -1;
        this.nd = true;
        this.hd = false;
        this.rk = new Runnable() { // from class: com.byazt.mc.ViewPager.3
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                ViewPager.this.setScrollState(0);
                ViewPager.this.jx();
            }
        };
        this.wt = 0;
        hp();
    }

    private void a() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            if (!((jx) getChildAt(i2).getLayoutParams()).hp) {
                removeViewAt(i2);
                i2--;
            }
            i2++;
        }
    }

    private void e() {
        this.wv = false;
        this.hq = false;
        VelocityTracker velocityTracker = this.f22932ms;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f22932ms = null;
        }
    }

    private void eb() {
        if (this.pc != 0) {
            ArrayList<View> arrayList = this.fi;
            if (arrayList == null) {
                this.fi = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.fi.add(getChildAt(i2));
            }
            Collections.sort(this.fi, nr);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private boolean j(int i2) {
        if (this.eb.size() == 0) {
            if (this.nd) {
                return false;
            }
            this.zx = false;
            hp(0, 0.0f, 0);
            if (this.zx) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        l lVarQ = q();
        int clientWidth = getClientWidth();
        int i3 = this.f22938u;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = lVarQ.f22948l;
        float f3 = ((i2 / f2) - lVarQ.f22949w) / (lVarQ.f22947j + (i3 / f2));
        this.zx = false;
        hp(i5, f3, (int) (i4 * f3));
        if (this.zx) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private l q() {
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.f22938u / clientWidth : 0.0f;
        int i3 = 0;
        boolean z2 = true;
        l lVar = null;
        int i4 = -1;
        float f4 = 0.0f;
        while (i3 < this.eb.size()) {
            l lVar2 = this.eb.get(i3);
            if (!z2 && lVar2.f22948l != (i2 = i4 + 1)) {
                lVar2 = this.f22937s;
                lVar2.f22949w = f2 + f4 + f3;
                lVar2.f22948l = i2;
                lVar2.f22947j = this.jx.hp(i2);
                i3--;
            }
            l lVar3 = lVar2;
            f2 = lVar3.f22949w;
            float f5 = lVar3.f22947j + f2 + f3;
            if (!z2 && scrollX < f2) {
                break;
            }
            if (scrollX < f5 || i3 == this.eb.size() - 1) {
                return lVar3;
            }
            int i5 = lVar3.f22948l;
            float f6 = lVar3.f22947j;
            i3++;
            i4 = i5;
            f4 = f6;
            lVar = lVar3;
            z2 = false;
        }
        return lVar;
    }

    private boolean s() {
        this.xh = -1;
        e();
        this.yr.onRelease();
        this.rz.onRelease();
        return this.yr.isFinished() || this.rz.isFinished();
    }

    private void setScrollingCacheEnabled(boolean z2) {
        if (this.di != z2) {
            this.di = z2;
        }
    }

    private void w(int i2) {
        j jVar = this.ea;
        if (jVar != null) {
            jVar.jl(i2);
        }
        List<j> list = this.vq;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                j jVar2 = this.vq.get(i3);
                if (jVar2 != null) {
                    jVar2.jl(i2);
                }
            }
        }
        j jVar3 = this.su;
        if (jVar3 != null) {
            jVar3.jl(i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        l lVarHp;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (lVarHp = hp(childAt)) != null && lVarHp.f22948l == this.f22929j) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        l lVarHp;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (lVarHp = hp(childAt)) != null && lVarHp.f22948l == this.f22929j) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        jx jxVar = (jx) layoutParams;
        boolean zJx = jxVar.hp | jx(view);
        jxVar.hp = zJx;
        if (!this.f22925b) {
            super.addView(view, i2, layoutParams);
        } else {
            if (zJx) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            jxVar.f22944j = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.jx == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.sz)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.f22933n));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof jx) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f22930k = true;
        if (this.zy.isFinished() || !this.zy.computeScrollOffset()) {
            hp(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.zy.getCurrX();
        int currY = this.zy.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!j(currX)) {
                this.zy.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || hp(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        l lVarHp;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (lVarHp = hp(childAt)) != null && lVarHp.f22948l == this.f22929j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        com.byazt.mc.l lVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (lVar = this.jx) != null && lVar.hp() > 1)) {
            if (!this.yr.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.sz * width);
                this.yr.setSize(height, width);
                zDraw = this.yr.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.rz.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f22933n + 1.0f)) * width2);
                this.rz.setSize(height2, width2);
                zDraw |= this.rz.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.yr.finish();
            this.rz.finish();
        }
        if (zDraw) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.xs;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new jx();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public com.byazt.mc.l getAdapter() {
        return this.jx;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        if (this.pc == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((jx) this.fi.get(i3).getLayoutParams()).f22943a;
    }

    public int getCurrentItem() {
        return this.f22929j;
    }

    public int getOffscreenPageLimit() {
        return this.f22926d;
    }

    public int getPageMargin() {
        return this.f22938u;
    }

    public void hp() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.zy = new Scroller(context, f22922a);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.dy = viewConfiguration.getScaledPagingTouchSlop();
        this.as = (int) (400.0f * f2);
        this.kg = viewConfiguration.getScaledMaximumFlingVelocity();
        this.yr = new EdgeEffect(context);
        this.rz = new EdgeEffect(context);
        this.mp = (int) (25.0f * f2);
        this.f22931m = (int) (2.0f * f2);
        this.ud = (int) (f2 * 16.0f);
    }

    public void jx() throws Resources.NotFoundException {
        hp(this.f22929j);
    }

    public void l() throws Resources.NotFoundException {
        int iHp = this.jx.hp();
        this.hp = iHp;
        boolean z2 = this.eb.size() < (this.f22926d * 2) + 1 && this.eb.size() < iHp;
        int iMax = this.f22929j;
        int i2 = 0;
        while (i2 < this.eb.size()) {
            l lVar = this.eb.get(i2);
            int iHp2 = this.jx.hp(lVar.hp);
            if (iHp2 != -1) {
                if (iHp2 == -2) {
                    this.eb.remove(i2);
                    i2--;
                    this.jx.hp((ViewGroup) this, lVar.f22948l, lVar.hp);
                    int i3 = this.f22929j;
                    if (i3 == lVar.f22948l) {
                        iMax = Math.max(0, Math.min(i3, iHp - 1));
                    }
                } else {
                    int i4 = lVar.f22948l;
                    if (i4 != iHp2) {
                        if (i4 == this.f22929j) {
                            iMax = iHp2;
                        }
                        lVar.f22948l = iHp2;
                    }
                }
                z2 = true;
            }
            i2++;
        }
        Collections.sort(this.eb, f22924w);
        if (z2) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                jx jxVar = (jx) getChildAt(i5).getLayoutParams();
                if (!jxVar.hp) {
                    jxVar.jx = 0.0f;
                }
            }
            hp(iMax, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.nd = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.rk);
        Scroller scroller = this.zy;
        if (scroller != null && !scroller.isFinished()) {
            this.zy.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        float f2;
        int i3;
        super.onDraw(canvas);
        if (this.f22938u <= 0 || this.xs == null || this.eb.size() <= 0 || this.jx == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f3 = this.f22938u / width;
        int i4 = 0;
        l lVar = this.eb.get(0);
        float f4 = lVar.f22949w;
        int size = this.eb.size();
        int i5 = lVar.f22948l;
        int i6 = this.eb.get(size - 1).f22948l;
        while (i5 < i6) {
            while (true) {
                i2 = lVar.f22948l;
                if (i5 <= i2 || i4 >= size) {
                    break;
                }
                i4++;
                lVar = this.eb.get(i4);
            }
            if (i5 == i2) {
                float f5 = lVar.f22949w;
                float f6 = lVar.f22947j;
                f2 = (f5 + f6) * width;
                f4 = f5 + f6 + f3;
            } else {
                float fHp = this.jx.hp(i5);
                f2 = (f4 + fHp) * width;
                f4 += fHp + f3;
            }
            if (this.f22938u + f2 > scrollX) {
                i3 = scrollX;
                this.xs.setBounds(Math.round(f2), this.vv, Math.round(this.f22938u + f2), this.ec);
                this.xs.draw(canvas);
            } else {
                i3 = scrollX;
            }
            if (f2 > i3 + r2) {
                return;
            }
            i5++;
            scrollX = i3;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int iFindPointerIndex;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            s();
            return false;
        }
        if (action != 0) {
            if (this.wv) {
                return true;
            }
            if (this.hq) {
                return false;
            }
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.pu = x2;
            this.lv = x2;
            float y2 = motionEvent.getY();
            this.ky = y2;
            this.f22936r = y2;
            this.xh = motionEvent.getPointerId(0);
            this.hq = false;
            this.f22930k = true;
            this.zy.computeScrollOffset();
            if (this.wt != 2 || Math.abs(this.zy.getFinalX() - this.zy.getCurrX()) <= this.f22931m) {
                hp(false);
                this.wv = false;
            } else {
                this.zy.abortAnimation();
                this.f22934o = false;
                jx();
                this.wv = true;
                jx(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.xh;
            if (i2 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i2)) != -1) {
                float x3 = motionEvent.getX(iFindPointerIndex);
                float f2 = x3 - this.lv;
                float fAbs = Math.abs(f2);
                float y3 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y3 - this.ky);
                if (f2 != 0.0f && !hp(this.lv, f2) && hp(this, false, (int) f2, (int) x3, (int) y3)) {
                    this.lv = x3;
                    this.f22936r = y3;
                    this.hq = true;
                    return false;
                }
                int i3 = this.dy;
                if (fAbs > i3 && fAbs * 0.5f > fAbs2) {
                    this.wv = true;
                    jx(true);
                    setScrollState(1);
                    this.lv = f2 > 0.0f ? this.pu + this.dy : this.pu - this.dy;
                    this.f22936r = y3;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i3) {
                    this.hq = true;
                }
                if (this.wv && l(x3)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            hp(motionEvent);
        }
        if (this.f22932ms == null) {
            this.f22932ms = VelocityTracker.obtain();
        }
        this.f22932ms.addMovement(motionEvent);
        return this.wv;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.mc.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) throws Resources.NotFoundException {
        jx jxVar;
        jx jxVar2;
        int i4;
        setMeasuredDimension(View.getDefaultSize(0, i2), View.getDefaultSize(0, i3));
        int measuredWidth = getMeasuredWidth();
        this.nu = Math.min(measuredWidth / 10, this.ud);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            boolean z2 = true;
            int i6 = C.ENCODING_PCM_32BIT;
            if (i5 >= childCount) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8 && (jxVar2 = (jx) childAt.getLayoutParams()) != null && jxVar2.hp) {
                int i7 = jxVar2.f22945l;
                int i8 = i7 & 7;
                int i9 = i7 & 112;
                boolean z3 = i9 == 48 || i9 == 80;
                if (i8 != 3 && i8 != 5) {
                    z2 = false;
                }
                int i10 = Integer.MIN_VALUE;
                if (z3) {
                    i4 = Integer.MIN_VALUE;
                    i10 = 1073741824;
                } else {
                    i4 = z2 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i11 = ((ViewGroup.LayoutParams) jxVar2).width;
                if (i11 != -2) {
                    if (i11 == -1) {
                        i11 = paddingLeft;
                    }
                    i10 = 1073741824;
                } else {
                    i11 = paddingLeft;
                }
                int i12 = ((ViewGroup.LayoutParams) jxVar2).height;
                if (i12 == -2) {
                    i12 = measuredHeight;
                    i6 = i4;
                } else if (i12 == -1) {
                    i12 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i10), View.MeasureSpec.makeMeasureSpec(i12, i6));
                if (z3) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z2) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i5++;
        }
        this.ns = View.MeasureSpec.makeMeasureSpec(paddingLeft, C.ENCODING_PCM_32BIT);
        this.cx = View.MeasureSpec.makeMeasureSpec(measuredHeight, C.ENCODING_PCM_32BIT);
        this.f22925b = true;
        jx();
        this.f22925b = false;
        int childCount2 = getChildCount();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8 && ((jxVar = (jx) childAt2.getLayoutParams()) == null || !jxVar.hp)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * jxVar.jx), C.ENCODING_PCM_32BIT), this.cx);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int i5;
        l lVarHp;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i5 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
            i5 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (lVarHp = hp(childAt)) != null && lVarHp.f22948l == this.f22929j && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i5;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof eb)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        eb ebVar = (eb) parcelable;
        super.onRestoreInstanceState(ebVar.hp());
        if (this.jx != null) {
            hp(ebVar.f22942l, false, true);
            return;
        }
        this.f22927e = ebVar.f22942l;
        this.gu = ebVar.jx;
        this.jl = ebVar.f22941j;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        eb ebVar = new eb(super.onSaveInstanceState());
        ebVar.f22942l = this.f22929j;
        com.byazt.mc.l lVar = this.jx;
        if (lVar != null) {
            ebVar.jx = lVar.l();
        }
        return ebVar;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.f22938u;
            hp(i2, i4, i6, i6);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        com.byazt.mc.l lVar;
        int iFindPointerIndex;
        if (this.f22928f) {
            return true;
        }
        boolean zS = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (lVar = this.jx) == null || lVar.hp() == 0) {
            return false;
        }
        if (this.f22932ms == null) {
            this.f22932ms = VelocityTracker.obtain();
        }
        this.f22932ms.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.zy.abortAnimation();
            this.f22934o = false;
            jx();
            float x2 = motionEvent.getX();
            this.pu = x2;
            this.lv = x2;
            float y2 = motionEvent.getY();
            this.ky = y2;
            this.f22936r = y2;
            this.xh = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (actionIndex != -1) {
                            this.lv = motionEvent.getX(actionIndex);
                            this.xh = motionEvent.getPointerId(actionIndex);
                        }
                    } else if (action == 6) {
                        hp(motionEvent);
                        int iFindPointerIndex2 = motionEvent.findPointerIndex(this.xh);
                        if (iFindPointerIndex2 != -1) {
                            this.lv = motionEvent.getX(iFindPointerIndex2);
                        }
                    }
                } else if (this.wv) {
                    hp(this.f22929j, true, 0, false);
                    zS = s();
                }
            } else if (!this.wv) {
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.xh);
                if (iFindPointerIndex3 == -1) {
                    zS = s();
                } else {
                    float x3 = motionEvent.getX(iFindPointerIndex3);
                    float fAbs = Math.abs(x3 - this.lv);
                    float y3 = motionEvent.getY(iFindPointerIndex3);
                    float fAbs2 = Math.abs(y3 - this.f22936r);
                    if (fAbs > this.dy && fAbs > fAbs2) {
                        this.wv = true;
                        jx(true);
                        float f2 = this.pu;
                        this.lv = x3 - f2 > 0.0f ? f2 + this.dy : f2 - this.dy;
                        this.f22936r = y3;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.wv) {
                        zS = l(motionEvent.getX(iFindPointerIndex));
                    }
                }
            } else if (this.wv && (iFindPointerIndex = motionEvent.findPointerIndex(this.xh)) != -1) {
                zS = l(motionEvent.getX(iFindPointerIndex));
            }
        } else if (this.wv) {
            VelocityTracker velocityTracker = this.f22932ms;
            velocityTracker.computeCurrentVelocity(1000, this.kg);
            int xVelocity = (int) velocityTracker.getXVelocity(this.xh);
            this.f22934o = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            l lVarQ = q();
            float f3 = clientWidth;
            int i2 = lVarQ.f22948l;
            float f4 = ((scrollX / f3) - lVarQ.f22949w) / (lVarQ.f22947j + (this.f22938u / f3));
            int iFindPointerIndex4 = motionEvent.findPointerIndex(this.xh);
            if (iFindPointerIndex4 != -1) {
                hp(hp(i2, f4, xVelocity, (int) (motionEvent.getX(iFindPointerIndex4) - this.pu)), true, true, xVelocity);
                zS = s();
            }
        }
        if (zS) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f22925b) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(com.byazt.mc.l lVar) throws Resources.NotFoundException {
        com.byazt.mc.l lVar2 = this.jx;
        if (lVar2 != null) {
            lVar2.hp((DataSetObserver) null);
            for (int i2 = 0; i2 < this.eb.size(); i2++) {
                l lVar3 = this.eb.get(i2);
                this.jx.hp((ViewGroup) this, lVar3.f22948l, lVar3.hp);
            }
            this.eb.clear();
            a();
            this.f22929j = 0;
            scrollTo(0, 0);
        }
        this.jx = lVar;
        this.hp = 0;
        if (lVar != null) {
            if (this.f22939v == null) {
                this.f22939v = new a();
            }
            this.jx.hp((DataSetObserver) this.f22939v);
            this.f22934o = false;
            boolean z2 = this.nd;
            this.nd = true;
            this.hp = this.jx.hp();
            int i3 = this.f22927e;
            if (i3 >= 0) {
                hp(i3, false, true);
                this.f22927e = -1;
                this.gu = null;
                this.jl = null;
            } else if (z2) {
                requestLayout();
            } else {
                jx();
            }
        }
        List<Object> list = this.rv;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.rv.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.rv.get(i4);
        }
    }

    public void setCurrentItem(int i2) throws Resources.NotFoundException {
        this.f22934o = false;
        hp(i2, !this.nd, false);
    }

    public void setOffscreenPageLimit(int i2) throws Resources.NotFoundException {
        if (i2 <= 0) {
            i2 = 1;
        }
        if (i2 != this.f22926d) {
            this.f22926d = i2;
            jx();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(j jVar) {
        this.ea = jVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.f22938u;
        this.f22938u = i2;
        int width = getWidth();
        hp(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.xs = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i2) {
        if (this.wt == i2) {
            return;
        }
        this.wt = i2;
        if (this.qu != null) {
            l(i2 != 0);
        }
        a(i2);
    }

    public void setScroller(Scroller scroller) {
        this.zy = scroller;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.xs;
    }

    @com.byazt.kj.hp(hp = {0, 1, 793, 1580})
    public static class jx extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f22943a;
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f22944j;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public int f22945l;

        /* renamed from: w, reason: collision with root package name */
        public int f22946w;

        public jx() {
            super(-1, -1);
            this.jx = 0.0f;
        }

        public jx(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.jx = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f22923l);
            this.f22945l = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean jx(View view) {
        return view.getClass().getAnnotation(hp.class) != null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new jx(getContext(), attributeSet);
    }

    private void jx(boolean z2) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z2);
        }
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i2));
    }

    private void a(int i2) {
        j jVar = this.ea;
        if (jVar != null) {
            jVar.zy(i2);
        }
        List<j> list = this.vq;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                j jVar2 = this.vq.get(i3);
                if (jVar2 != null) {
                    jVar2.zy(i2);
                }
            }
        }
        j jVar3 = this.su;
        if (jVar3 != null) {
            jVar3.zy(i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean jx(int r5) throws android.content.res.Resources.NotFoundException {
        /*
            r4 = this;
            android.view.View r0 = r4.findFocus()
            r1 = 0
            if (r0 != r4) goto L9
        L7:
            r0 = r1
            goto L60
        L9:
            if (r0 == 0) goto L60
            android.view.ViewParent r2 = r0.getParent()
        Lf:
            boolean r3 = r2 instanceof android.view.ViewGroup
            if (r3 == 0) goto L1b
            if (r2 != r4) goto L16
            goto L60
        L16:
            android.view.ViewParent r2 = r2.getParent()
            goto Lf
        L1b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
        L2f:
            boolean r3 = r0 instanceof android.view.ViewGroup
            if (r3 == 0) goto L48
            java.lang.String r3 = " => "
            r2.append(r3)
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
            goto L2f
        L48:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.<init>(r3)
            java.lang.String r2 = r2.toString()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "ViewPager"
            com.byazt.ymw.u.l(r2, r0)
            goto L7
        L60:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r1 = r1.findNextFocus(r4, r0, r5)
            r2 = 66
            r3 = 17
            if (r1 == 0) goto Lab
            if (r1 == r0) goto Lab
            if (r5 != r3) goto L90
            android.graphics.Rect r2 = r4.f22935q
            android.graphics.Rect r2 = r4.hp(r2, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r4.f22935q
            android.graphics.Rect r3 = r4.hp(r3, r0)
            int r3 = r3.left
            if (r0 == 0) goto L8b
            if (r2 < r3) goto L8b
            boolean r0 = r4.j()
            goto Lc2
        L8b:
            boolean r0 = r1.requestFocus()
            goto Lc2
        L90:
            if (r5 != r2) goto Lb7
            android.graphics.Rect r2 = r4.f22935q
            android.graphics.Rect r2 = r4.hp(r2, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r4.f22935q
            android.graphics.Rect r3 = r4.hp(r3, r0)
            int r3 = r3.left
            if (r0 == 0) goto La6
            if (r2 <= r3) goto Lb9
        La6:
            boolean r0 = r1.requestFocus()
            goto Lc2
        Lab:
            if (r5 == r3) goto Lbe
            r0 = 1
            if (r5 != r0) goto Lb1
            goto Lbe
        Lb1:
            if (r5 == r2) goto Lb9
            r0 = 2
            if (r5 != r0) goto Lb7
            goto Lb9
        Lb7:
            r0 = 0
            goto Lc2
        Lb9:
            boolean r0 = r4.w()
            goto Lc2
        Lbe:
            boolean r0 = r4.j()
        Lc2:
            if (r0 == 0) goto Lcb
            int r5 = android.view.SoundEffectConstants.getContantForFocusDirection(r5)
            r4.playSoundEffect(r5)
        Lcb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.mc.ViewPager.jx(int):boolean");
    }

    public boolean w() throws Resources.NotFoundException {
        com.byazt.mc.l lVar = this.jx;
        if (lVar == null || this.f22929j >= lVar.hp() - 1) {
            return false;
        }
        hp(this.f22929j + 1, true);
        return true;
    }

    public void hp(int i2, boolean z2) throws Resources.NotFoundException {
        this.f22934o = false;
        hp(i2, z2, false);
    }

    public boolean j() throws Resources.NotFoundException {
        int i2 = this.f22929j;
        if (i2 <= 0) {
            return false;
        }
        hp(i2 - 1, true);
        return true;
    }

    public void hp(int i2, boolean z2, boolean z3) throws Resources.NotFoundException {
        hp(i2, z2, z3, 0);
    }

    public void hp(int i2, boolean z2, boolean z3, int i3) throws Resources.NotFoundException {
        com.byazt.mc.l lVar = this.jx;
        if (lVar != null && lVar.hp() > 0) {
            if (!z3 && this.f22929j == i2 && this.eb.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 >= this.jx.hp()) {
                i2 = this.jx.hp() - 1;
            }
            int i4 = this.f22926d;
            int i5 = this.f22929j;
            if (i2 > i5 + i4 || i2 < i5 - i4) {
                for (int i6 = 0; i6 < this.eb.size(); i6++) {
                    this.eb.get(i6).jx = true;
                }
            }
            boolean z4 = this.f22929j != i2;
            if (this.nd) {
                this.f22929j = i2;
                if (z4) {
                    w(i2);
                }
                requestLayout();
                return;
            }
            hp(i2);
            hp(i2, z2, i3, z4);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    public l l(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return hp(view);
            }
        }
    }

    public l l(int i2) {
        for (int i3 = 0; i3 < this.eb.size(); i3++) {
            l lVar = this.eb.get(i3);
            if (lVar.f22948l == i2) {
                return lVar;
            }
        }
        return null;
    }

    private void l(int i2, float f2, int i3) {
        j jVar = this.ea;
        if (jVar != null) {
            jVar.hp(i2, f2, i3);
        }
        List<j> list = this.vq;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                j jVar2 = this.vq.get(i4);
                if (jVar2 != null) {
                    jVar2.hp(i2, f2, i3);
                }
            }
        }
        j jVar3 = this.su;
        if (jVar3 != null) {
            jVar3.hp(i2, f2, i3);
        }
    }

    private void hp(int i2, boolean z2, int i3, boolean z3) throws Resources.NotFoundException {
        l lVarL = l(i2);
        int clientWidth = lVarL != null ? (int) (getClientWidth() * Math.max(this.sz, Math.min(lVarL.f22949w, this.f22933n))) : 0;
        if (z2) {
            hp(clientWidth, 0, i3);
            if (z3) {
                w(i2);
                return;
            }
            return;
        }
        if (z3) {
            w(i2);
        }
        hp(false);
        scrollTo(clientWidth, 0);
        j(clientWidth);
    }

    private void l(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z2 ? this.an : 0, null);
        }
    }

    private boolean l(float f2) {
        boolean z2;
        boolean z3;
        float f3 = this.lv - f2;
        this.lv = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.sz * clientWidth;
        float f5 = this.f22933n * clientWidth;
        boolean z4 = false;
        l lVar = this.eb.get(0);
        ArrayList<l> arrayList = this.eb;
        l lVar2 = arrayList.get(arrayList.size() - 1);
        if (lVar.f22948l != 0) {
            f4 = lVar.f22949w * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (lVar2.f22948l != this.jx.hp() - 1) {
            f5 = lVar2.f22949w * clientWidth;
            z3 = false;
        } else {
            z3 = true;
        }
        if (scrollX < f4) {
            if (z2) {
                this.yr.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z4 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z3) {
                this.rz.onPull(Math.abs(scrollX - f5) / clientWidth);
                z4 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.lv += scrollX - i2;
        scrollTo(i2, getScrollY());
        j(i2);
        return z4;
    }

    public void hp(j jVar) {
        if (this.vq == null) {
            this.vq = new ArrayList();
        }
        this.vq.add(jVar);
    }

    public void hp(boolean z2, w wVar) throws Resources.NotFoundException {
        hp(z2, wVar, 2);
    }

    public void hp(boolean z2, w wVar, int i2) throws Resources.NotFoundException {
        boolean z3 = wVar != null;
        boolean z4 = z3 != (this.qu != null);
        this.qu = wVar;
        setChildrenDrawingOrderEnabled(z3);
        if (z3) {
            this.pc = z2 ? 2 : 1;
            this.an = i2;
        } else {
            this.pc = 0;
        }
        if (z4) {
            jx();
        }
    }

    public float hp(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    public void hp(int i2, int i3, int i4) throws Resources.NotFoundException {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.zy;
        if (scroller != null && !scroller.isFinished()) {
            scrollX = this.f22930k ? this.zy.getCurrX() : this.zy.getStartX();
            this.zy.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i5 = scrollX;
        int scrollY = getScrollY();
        int i6 = i2 - i5;
        int i7 = i3 - scrollY;
        if (i6 == 0 && i7 == 0) {
            hp(false);
            jx();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i8 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i8;
        float fHp = f3 + (hp(Math.min(1.0f, (Math.abs(i6) * 1.0f) / f2)) * f3);
        int iAbs2 = Math.abs(i4);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fHp / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i6) / ((f2 * this.jx.hp(this.f22929j)) + this.f22938u)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.f22930k = false;
        this.zy.startScroll(i5, scrollY, i6, i7, iMin);
        postInvalidateOnAnimation();
    }

    public l hp(int i2, int i3) {
        l lVar = new l();
        lVar.f22948l = i2;
        lVar.hp = this.jx.hp((ViewGroup) this, i2);
        lVar.f22947j = this.jx.hp(i2);
        if (i3 >= 0 && i3 < this.eb.size()) {
            this.eb.add(i3, lVar);
            return lVar;
        }
        this.eb.add(lVar);
        return lVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c6 A[PHI: r7 r10 r15
      0x00c6: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:63:0x00ea, B:60:0x00d4, B:52:0x00bb] A[DONT_GENERATE, DONT_INLINE]
      0x00c6: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:63:0x00ea, B:60:0x00d4, B:52:0x00bb] A[DONT_GENERATE, DONT_INLINE]
      0x00c6: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:63:0x00ea, B:60:0x00d4, B:52:0x00bb] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r18) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.mc.ViewPager.hp(int):void");
    }

    private void hp(l lVar, int i2, l lVar2) {
        int i3;
        int i4;
        l lVar3;
        l lVar4;
        int iHp = this.jx.hp();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.f22938u / clientWidth : 0.0f;
        if (lVar2 != null) {
            int i5 = lVar2.f22948l;
            int i6 = lVar.f22948l;
            if (i5 < i6) {
                float fHp = lVar2.f22949w + lVar2.f22947j + f2;
                int i7 = i5 + 1;
                int i8 = 0;
                while (i7 <= lVar.f22948l && i8 < this.eb.size()) {
                    l lVar5 = this.eb.get(i8);
                    while (true) {
                        lVar4 = lVar5;
                        if (i7 <= lVar4.f22948l || i8 >= this.eb.size() - 1) {
                            break;
                        }
                        i8++;
                        lVar5 = this.eb.get(i8);
                    }
                    while (i7 < lVar4.f22948l) {
                        fHp += this.jx.hp(i7) + f2;
                        i7++;
                    }
                    lVar4.f22949w = fHp;
                    fHp += lVar4.f22947j + f2;
                    i7++;
                }
            } else if (i5 > i6) {
                int size = this.eb.size() - 1;
                float fHp2 = lVar2.f22949w;
                while (true) {
                    i5--;
                    if (i5 < lVar.f22948l || size < 0) {
                        break;
                    }
                    l lVar6 = this.eb.get(size);
                    while (true) {
                        lVar3 = lVar6;
                        if (i5 >= lVar3.f22948l || size <= 0) {
                            break;
                        }
                        size--;
                        lVar6 = this.eb.get(size);
                    }
                    while (i5 > lVar3.f22948l) {
                        fHp2 -= this.jx.hp(i5) + f2;
                        i5--;
                    }
                    fHp2 -= lVar3.f22947j + f2;
                    lVar3.f22949w = fHp2;
                }
            }
        }
        int size2 = this.eb.size();
        float fHp3 = lVar.f22949w;
        int i9 = lVar.f22948l;
        int i10 = i9 - 1;
        this.sz = i9 == 0 ? fHp3 : -3.4028235E38f;
        int i11 = iHp - 1;
        this.f22933n = i9 == i11 ? (lVar.f22947j + fHp3) - 1.0f : Float.MAX_VALUE;
        int i12 = i2 - 1;
        while (i12 >= 0) {
            l lVar7 = this.eb.get(i12);
            while (true) {
                i4 = lVar7.f22948l;
                if (i10 <= i4) {
                    break;
                }
                fHp3 -= this.jx.hp(i10) + f2;
                i10--;
            }
            fHp3 -= lVar7.f22947j + f2;
            lVar7.f22949w = fHp3;
            if (i4 == 0) {
                this.sz = fHp3;
            }
            i12--;
            i10--;
        }
        float fHp4 = lVar.f22949w + lVar.f22947j + f2;
        int i13 = lVar.f22948l + 1;
        int i14 = i2 + 1;
        while (i14 < size2) {
            l lVar8 = this.eb.get(i14);
            while (true) {
                i3 = lVar8.f22948l;
                if (i13 >= i3) {
                    break;
                }
                fHp4 += this.jx.hp(i13) + f2;
                i13++;
            }
            if (i3 == i11) {
                this.f22933n = (lVar8.f22947j + fHp4) - 1.0f;
            }
            lVar8.f22949w = fHp4;
            fHp4 += lVar8.f22947j + f2;
            i14++;
            i13++;
        }
        this.hd = false;
    }

    public l hp(View view) {
        for (int i2 = 0; i2 < this.eb.size(); i2++) {
            l lVar = this.eb.get(i2);
            if (this.jx.hp(view, lVar.hp)) {
                return lVar;
            }
        }
        return null;
    }

    private void hp(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.eb.isEmpty()) {
            if (!this.zy.isFinished()) {
                this.zy.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        l lVarL = l(this.f22929j);
        int iMin = (int) ((lVarL != null ? Math.min(lVarL.f22949w, this.f22933n) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            hp(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.f22940y
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r1
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            com.byazt.mc.ViewPager$jx r9 = (com.byazt.mc.ViewPager.jx) r9
            boolean r10 = r9.hp
            if (r10 == 0) goto L68
            int r9 = r9.f22945l
            r9 = r9 & 7
            if (r9 == r2) goto L4f
            r10 = 3
            if (r9 == r10) goto L49
            r10 = 5
            if (r9 == r10) goto L39
            r9 = r3
            goto L5c
        L39:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
        L45:
            r11 = r9
            r9 = r3
            r3 = r11
            goto L5c
        L49:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4f:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
            goto L45
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            r12.l(r13, r14, r15)
            com.byazt.mc.ViewPager$w r13 = r12.qu
            if (r13 == 0) goto L9e
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L7a:
            if (r1 >= r14) goto L9e
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            com.byazt.mc.ViewPager$jx r0 = (com.byazt.mc.ViewPager.jx) r0
            boolean r0 = r0.hp
            if (r0 != 0) goto L9b
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            com.byazt.mc.ViewPager$w r3 = r12.qu
            r3.hp(r15, r0)
        L9b:
            int r1 = r1 + 1
            goto L7a
        L9e:
            r12.zx = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.mc.ViewPager.hp(int, float, int):void");
    }

    private void hp(boolean z2) {
        boolean z3 = this.wt == 2;
        if (z3) {
            setScrollingCacheEnabled(false);
            if (!this.zy.isFinished()) {
                this.zy.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.zy.getCurrX();
                int currY = this.zy.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        j(currX);
                    }
                }
            }
        }
        this.f22934o = false;
        for (int i2 = 0; i2 < this.eb.size(); i2++) {
            l lVar = this.eb.get(i2);
            if (lVar.jx) {
                lVar.jx = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z2) {
                postOnAnimation(this.rk);
            } else {
                this.rk.run();
            }
        }
    }

    private boolean hp(float f2, float f3) {
        if (f2 >= this.nu || f3 <= 0.0f) {
            return f2 > ((float) (getWidth() - this.nu)) && f3 < 0.0f;
        }
        return true;
    }

    private int hp(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.mp || Math.abs(i3) <= this.as) {
            i2 += (int) (f2 + (i2 >= this.f22929j ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        if (this.eb.size() <= 0) {
            return i2;
        }
        return Math.max(this.eb.get(0).f22948l, Math.min(i2, this.eb.get(r4.size() - 1).f22948l));
    }

    private void hp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.xh) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.lv = motionEvent.getX(i2);
            this.xh = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.f22932ms;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean hp(View view, boolean z2, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && hp(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z2 && view.canScrollHorizontally(-i2);
    }

    public boolean hp(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 21) {
            if (keyEvent.hasModifiers(2)) {
                return j();
            }
            return jx(17);
        }
        if (keyCode == 22) {
            if (keyEvent.hasModifiers(2)) {
                return w();
            }
            return jx(66);
        }
        if (keyCode != 61) {
            return false;
        }
        if (keyEvent.hasNoModifiers()) {
            return jx(2);
        }
        if (keyEvent.hasModifiers(1)) {
            return jx(1);
        }
        return false;
    }

    private Rect hp(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
