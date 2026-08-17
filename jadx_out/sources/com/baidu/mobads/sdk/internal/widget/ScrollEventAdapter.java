package com.baidu.mobads.sdk.internal.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* loaded from: classes2.dex */
final class ScrollEventAdapter extends RecyclerView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    private static final int f11630a = 0;

    /* renamed from: b, reason: collision with root package name */
    private static final int f11631b = 1;

    /* renamed from: c, reason: collision with root package name */
    private static final int f11632c = 2;

    /* renamed from: d, reason: collision with root package name */
    private static final int f11633d = 3;

    /* renamed from: e, reason: collision with root package name */
    private static final int f11634e = 4;

    /* renamed from: f, reason: collision with root package name */
    private static final int f11635f = -1;

    /* renamed from: g, reason: collision with root package name */
    private ViewPager2.OnPageChangeCallback f11636g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    private final ViewPager2 f11637h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    private final RecyclerView f11638i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    private final LinearLayoutManager f11639j;

    /* renamed from: k, reason: collision with root package name */
    private int f11640k;

    /* renamed from: l, reason: collision with root package name */
    private int f11641l;

    /* renamed from: m, reason: collision with root package name */
    private ScrollEventValues f11642m;

    /* renamed from: n, reason: collision with root package name */
    private int f11643n;

    /* renamed from: o, reason: collision with root package name */
    private int f11644o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f11645p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f11646q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f11647r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f11648s;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdapterState {
    }

    public static final class ScrollEventValues {

        /* renamed from: a, reason: collision with root package name */
        int f11649a;

        /* renamed from: b, reason: collision with root package name */
        float f11650b;

        /* renamed from: c, reason: collision with root package name */
        int f11651c;

        public void a() {
            this.f11649a = -1;
            this.f11650b = 0.0f;
            this.f11651c = 0;
        }
    }

    public ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.f11637h = viewPager2;
        RecyclerView recyclerView = viewPager2.f11663j;
        this.f11638i = recyclerView;
        this.f11639j = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f11642m = new ScrollEventValues();
        i();
    }

    private void a(boolean z2) {
        this.f11648s = z2;
        this.f11640k = z2 ? 4 : 1;
        int i2 = this.f11644o;
        if (i2 != -1) {
            this.f11643n = i2;
            this.f11644o = -1;
        } else if (this.f11643n == -1) {
            this.f11643n = l();
        }
        a(1);
    }

    private void i() {
        this.f11640k = 0;
        this.f11641l = 0;
        this.f11642m.a();
        this.f11643n = -1;
        this.f11644o = -1;
        this.f11645p = false;
        this.f11646q = false;
        this.f11648s = false;
        this.f11647r = false;
    }

    private void j() {
        int top;
        ScrollEventValues scrollEventValues = this.f11642m;
        int iFindFirstVisibleItemPosition = this.f11639j.findFirstVisibleItemPosition();
        scrollEventValues.f11649a = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            scrollEventValues.a();
            return;
        }
        View viewFindViewByPosition = this.f11639j.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            scrollEventValues.a();
            return;
        }
        int leftDecorationWidth = this.f11639j.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.f11639j.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.f11639j.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.f11639j.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.f11639j.getOrientation() == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - this.f11638i.getPaddingLeft();
            if (this.f11637h.c()) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - this.f11638i.getPaddingTop();
        }
        int i2 = -top;
        scrollEventValues.f11651c = i2;
        if (i2 >= 0) {
            scrollEventValues.f11650b = height == 0 ? 0.0f : i2 / height;
        } else {
            if (!new AnimateLayoutChangeDetector(this.f11639j).a()) {
                throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.f11651c)));
            }
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    private boolean k() {
        int i2 = this.f11640k;
        return i2 == 1 || i2 == 4;
    }

    private int l() {
        return this.f11639j.findFirstVisibleItemPosition();
    }

    public void b() {
        this.f11640k = 4;
        a(true);
    }

    public void c() {
        if (!f() || this.f11648s) {
            this.f11648s = false;
            j();
            ScrollEventValues scrollEventValues = this.f11642m;
            if (scrollEventValues.f11651c != 0) {
                a(2);
                return;
            }
            int i2 = scrollEventValues.f11649a;
            if (i2 != this.f11643n) {
                b(i2);
            }
            a(0);
            i();
        }
    }

    public int d() {
        return this.f11641l;
    }

    public boolean e() {
        return this.f11641l == 0;
    }

    public boolean f() {
        return this.f11641l == 1;
    }

    public boolean g() {
        return this.f11648s;
    }

    public double h() {
        j();
        ScrollEventValues scrollEventValues = this.f11642m;
        return scrollEventValues.f11649a + scrollEventValues.f11650b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
        if (!(this.f11640k == 1 && this.f11641l == 1) && i2 == 1) {
            a(false);
            return;
        }
        if (k() && i2 == 2) {
            if (this.f11646q) {
                a(2);
                this.f11645p = true;
                return;
            }
            return;
        }
        if (k() && i2 == 0) {
            j();
            if (this.f11646q) {
                ScrollEventValues scrollEventValues = this.f11642m;
                if (scrollEventValues.f11651c == 0) {
                    int i3 = this.f11643n;
                    int i4 = scrollEventValues.f11649a;
                    if (i3 != i4) {
                        b(i4);
                    }
                }
            } else {
                int i5 = this.f11642m.f11649a;
                if (i5 != -1) {
                    a(i5, 0.0f, 0);
                }
            }
            a(0);
            i();
        }
        if (this.f11640k == 2 && i2 == 0 && this.f11647r) {
            j();
            ScrollEventValues scrollEventValues2 = this.f11642m;
            if (scrollEventValues2.f11651c == 0) {
                int i6 = this.f11644o;
                int i7 = scrollEventValues2.f11649a;
                if (i6 != i7) {
                    if (i7 == -1) {
                        i7 = 0;
                    }
                    b(i7);
                }
                a(0);
                i();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
        /*
            r3 = this;
            r4 = 1
            r3.f11646q = r4
            r3.j()
            boolean r0 = r3.f11645p
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L37
            r3.f11645p = r2
            if (r6 > 0) goto L1f
            if (r6 != 0) goto L29
            if (r5 >= 0) goto L16
            r5 = r4
            goto L17
        L16:
            r5 = r2
        L17:
            com.baidu.mobads.sdk.internal.widget.ViewPager2 r6 = r3.f11637h
            boolean r6 = r6.c()
            if (r5 != r6) goto L29
        L1f:
            com.baidu.mobads.sdk.internal.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f11642m
            int r6 = r5.f11651c
            if (r6 == 0) goto L29
            int r5 = r5.f11649a
            int r5 = r5 + r4
            goto L2d
        L29:
            com.baidu.mobads.sdk.internal.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f11642m
            int r5 = r5.f11649a
        L2d:
            r3.f11644o = r5
            int r6 = r3.f11643n
            if (r6 == r5) goto L45
            r3.b(r5)
            goto L45
        L37:
            int r5 = r3.f11640k
            if (r5 != 0) goto L45
            com.baidu.mobads.sdk.internal.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f11642m
            int r5 = r5.f11649a
            if (r5 != r1) goto L42
            r5 = r2
        L42:
            r3.b(r5)
        L45:
            com.baidu.mobads.sdk.internal.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f11642m
            int r6 = r5.f11649a
            if (r6 != r1) goto L4c
            r6 = r2
        L4c:
            float r0 = r5.f11650b
            int r5 = r5.f11651c
            r3.a(r6, r0, r5)
            com.baidu.mobads.sdk.internal.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f11642m
            int r6 = r5.f11649a
            int r0 = r3.f11644o
            if (r6 == r0) goto L5d
            if (r0 != r1) goto L6b
        L5d:
            int r5 = r5.f11651c
            if (r5 != 0) goto L6b
            int r5 = r3.f11641l
            if (r5 == r4) goto L6b
            r3.a(r2)
            r3.i()
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    private void b(int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f11636g;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i2);
        }
    }

    public void a() {
        this.f11647r = true;
    }

    public void a(int i2, boolean z2) {
        this.f11640k = z2 ? 2 : 3;
        this.f11648s = false;
        boolean z3 = this.f11644o != i2;
        this.f11644o = i2;
        a(2);
        if (z3) {
            b(i2);
        }
    }

    public void a(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f11636g = onPageChangeCallback;
    }

    private void a(int i2) {
        if ((this.f11640k == 3 && this.f11641l == 0) || this.f11641l == i2) {
            return;
        }
        this.f11641l = i2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f11636g;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i2);
        }
    }

    private void a(int i2, float f2, int i3) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f11636g;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i2, f2, i3);
        }
    }
}
