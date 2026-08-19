package com.baidu.mobads.sdk.internal.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.internal.concrete.ViewCompatDelegate;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class ViewPager2 extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public static final int f11652a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f11653b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f11654c = 0;

    /* renamed from: d, reason: collision with root package name */
    public static final int f11655d = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final int f11656e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f11657f = -1;

    /* renamed from: g, reason: collision with root package name */
    static boolean f11658g = true;

    /* renamed from: A, reason: collision with root package name */
    private boolean f11659A;

    /* renamed from: B, reason: collision with root package name */
    private int f11660B;

    /* renamed from: h, reason: collision with root package name */
    int f11661h;

    /* renamed from: i, reason: collision with root package name */
    boolean f11662i;

    /* renamed from: j, reason: collision with root package name */
    RecyclerView f11663j;

    /* renamed from: k, reason: collision with root package name */
    ScrollEventAdapter f11664k;

    /* renamed from: l, reason: collision with root package name */
    AccessibilityProvider f11665l;

    /* renamed from: m, reason: collision with root package name */
    private final Rect f11666m;

    /* renamed from: n, reason: collision with root package name */
    private final Rect f11667n;

    /* renamed from: o, reason: collision with root package name */
    private final int[] f11668o;

    /* renamed from: p, reason: collision with root package name */
    private CompositeOnPageChangeCallback f11669p;

    /* renamed from: q, reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f11670q;

    /* renamed from: r, reason: collision with root package name */
    private LinearLayoutManager f11671r;

    /* renamed from: s, reason: collision with root package name */
    private int f11672s;

    /* renamed from: t, reason: collision with root package name */
    private Parcelable f11673t;

    /* renamed from: u, reason: collision with root package name */
    private PagerSnapHelper f11674u;

    /* renamed from: v, reason: collision with root package name */
    private CompositeOnPageChangeCallback f11675v;

    /* renamed from: w, reason: collision with root package name */
    private FakeDrag f11676w;

    /* renamed from: x, reason: collision with root package name */
    private PageTransformerAdapter f11677x;

    /* renamed from: y, reason: collision with root package name */
    private RecyclerView.ItemAnimator f11678y;

    /* renamed from: z, reason: collision with root package name */
    private boolean f11679z;

    public abstract class AccessibilityProvider {
        private AccessibilityProvider() {
        }

        public void a(@NonNull AccessibilityEvent accessibilityEvent) {
        }

        public void b(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }

        public void f() {
        }

        public void g() {
        }

        public boolean handlesLmPerformAccessibilityAction(int i2) {
            return false;
        }

        public boolean handlesRvGetAccessibilityClassName() {
            return false;
        }

        public void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        public boolean onLmPerformAccessibilityAction(int i2) {
            throw new IllegalStateException("Not implemented.");
        }

        public CharSequence onRvGetAccessibilityClassName() {
            throw new IllegalStateException("Not implemented.");
        }

        public void a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        public String b() {
            throw new IllegalStateException("Not implemented.");
        }

        public void a(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        public boolean b(int i2, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        public void a(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
        }

        public boolean a() {
            return false;
        }

        public boolean a(int i2, Bundle bundle) {
            return false;
        }
    }

    public class BasicAccessibilityProvider extends AccessibilityProvider {
        public BasicAccessibilityProvider() {
            super();
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public boolean handlesLmPerformAccessibilityAction(int i2) {
            return (i2 == 8192 || i2 == 4096) && !ViewPager2.this.isUserInputEnabled();
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public boolean handlesRvGetAccessibilityClassName() {
            return true;
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.setScrollable(false);
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public boolean onLmPerformAccessibilityAction(int i2) {
            if (handlesLmPerformAccessibilityAction(i2)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public CharSequence onRvGetAccessibilityClassName() {
            if (handlesRvGetAccessibilityClassName()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    public static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i2, int i3, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i3, @Nullable Object obj) {
            onChanged();
        }
    }

    public class LinearLayoutManagerImpl extends LinearLayoutManager {
        public LinearLayoutManagerImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public int getExtraLayoutSpace(RecyclerView.State state) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            return offscreenPageLimit == -1 ? super.getExtraLayoutSpace(state) : ViewPager2.this.b() * offscreenPageLimit;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.f11665l.onLmInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i2, @Nullable Bundle bundle) {
            return ViewPager2.this.f11665l.handlesLmPerformAccessibilityAction(i2) ? ViewPager2.this.f11665l.onLmPerformAccessibilityAction(i2) : super.performAccessibilityAction(recycler, state, i2, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z2, boolean z3) {
            return false;
        }
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    public @interface OffscreenPageLimit {
    }

    public interface OnOverScrollListener {
        void onOverScrollEnd();

        void onOverScrollStart();
    }

    public static abstract class OnPageChangeCallback {
        public void onPageScrollStateChanged(int i2) {
        }

        public void onPageScrolled(int i2, float f2, @Px int i3) {
        }

        public void onPageSelected(int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public interface PageTransformer {
        void transformPage(@NonNull View view, float f2);
    }

    public class PagerSnapHelperImpl extends PagerSnapHelper {
        public PagerSnapHelperImpl() {
        }

        @Override // com.baidu.mobads.sdk.internal.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            if (ViewPager2.this.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(layoutManager);
        }
    }

    public class RecyclerViewImpl extends RecyclerView {
        public RecyclerViewImpl(@NonNull Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, androidx.core.view.NestedScrollingChild2
        public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
            ViewPager2.this.f11668o[1] = ViewPager2.this.f11668o[0];
            if (1 == ViewPager2.this.getOrientation()) {
                ViewPager2.this.f11668o[0] = i5;
            } else {
                ViewPager2.this.f11668o[0] = i4;
            }
            return super.dispatchNestedScroll(i2, i3, i4, i5, iArr, i6);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @RequiresApi(23)
        public CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f11665l.handlesRvGetAccessibilityClassName() ? ViewPager2.this.f11665l.onRvGetAccessibilityClassName() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f11661h);
            accessibilityEvent.setToIndex(ViewPager2.this.f11661h);
            ViewPager2.this.f11665l.a(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    public static class SmoothScrollToPosition implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final int f11698a;

        /* renamed from: b, reason: collision with root package name */
        private final RecyclerView f11699b;

        public SmoothScrollToPosition(int i2, RecyclerView recyclerView) {
            this.f11698a = i2;
            this.f11699b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11699b.smoothScrollToPosition(this.f11698a);
        }
    }

    public ViewPager2(@NonNull Context context) throws IllegalStateException {
        super(context);
        this.f11666m = new Rect();
        this.f11667n = new Rect();
        this.f11668o = new int[2];
        this.f11669p = new CompositeOnPageChangeCallback(3);
        this.f11662i = false;
        this.f11670q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f11662i = true;
                viewPager2.f11664k.a();
            }
        };
        this.f11672s = -1;
        this.f11678y = null;
        this.f11679z = false;
        this.f11659A = true;
        this.f11660B = -1;
        a(context, (AttributeSet) null);
    }

    private void b(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f11670q);
        }
    }

    private RecyclerView.OnChildAttachStateChangeListener e() {
        return new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(@NonNull View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(@NonNull View view) {
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        RecyclerView.Adapter adapter;
        if (this.f11672s == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f11673t;
        if (parcelable != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).restoreState(parcelable);
            }
            this.f11673t = null;
        }
        int iMax = Math.max(0, Math.min(this.f11672s, adapter.getItemCount() - 1));
        this.f11661h = iMax;
        this.f11672s = -1;
        this.f11663j.scrollToPosition(iMax);
        this.f11665l.c();
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f11663j.addItemDecoration(itemDecoration);
    }

    public boolean beginFakeDrag() {
        return this.f11676w.b();
    }

    public boolean c() {
        return this.f11671r.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        return this.f11663j.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        return this.f11663j.canScrollVertically(i2);
    }

    public void d() {
        View viewFindSnapView = this.f11674u.findSnapView(this.f11671r);
        if (viewFindSnapView == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = this.f11674u.calculateDistanceToFinalSnap(this.f11671r, viewFindSnapView);
        int i2 = iArrCalculateDistanceToFinalSnap[0];
        if (i2 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.f11663j.smoothScrollBy(i2, iArrCalculateDistanceToFinalSnap[1]);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).f11695a;
            sparseArray.put(this.f11663j.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        f();
    }

    public boolean endFakeDrag() {
        return this.f11676w.c();
    }

    public boolean fakeDragBy(@Px @SuppressLint({"SupportAnnotationUsage"}) float f2) {
        return this.f11676w.a(f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(23)
    public CharSequence getAccessibilityClassName() {
        return this.f11665l.a() ? this.f11665l.b() : super.getAccessibilityClassName();
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.f11663j.getAdapter();
    }

    public int getCurrentItem() {
        return this.f11661h;
    }

    @NonNull
    public RecyclerView.ItemDecoration getItemDecorationAt(int i2) {
        return this.f11663j.getItemDecorationAt(i2);
    }

    public int getItemDecorationCount() {
        return this.f11663j.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f11660B;
    }

    public int getOrientation() {
        return this.f11671r.getOrientation();
    }

    public int getOverScrolledDirection() {
        int[] iArr = this.f11668o;
        int i2 = iArr[0];
        return i2 == 0 ? iArr[1] : i2;
    }

    public int getScrollState() {
        return this.f11664k.d();
    }

    public void invalidateItemDecorations() {
        this.f11663j.invalidateItemDecorations();
    }

    public boolean isFakeDragging() {
        return this.f11676w.a();
    }

    public boolean isUserInputEnabled() {
        return this.f11659A;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f11665l.a(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.f11663j.getMeasuredWidth();
        int measuredHeight = this.f11663j.getMeasuredHeight();
        this.f11666m.left = getPaddingLeft();
        this.f11666m.right = (i4 - i2) - getPaddingRight();
        this.f11666m.top = getPaddingTop();
        this.f11666m.bottom = (i5 - i3) - getPaddingBottom();
        Gravity.apply(BadgeDrawable.TOP_START, measuredWidth, measuredHeight, this.f11666m, this.f11667n);
        RecyclerView recyclerView = this.f11663j;
        Rect rect = this.f11667n;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f11662i) {
            a();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        measureChild(this.f11663j, i2, i3);
        int measuredWidth = this.f11663j.getMeasuredWidth();
        int measuredHeight = this.f11663j.getMeasuredHeight();
        int measuredState = this.f11663j.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, measuredState), View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f11672s = savedState.f11696b;
        this.f11673t = savedState.f11697c;
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11695a = this.f11663j.getId();
        int i2 = this.f11672s;
        if (i2 == -1) {
            i2 = this.f11661h;
        }
        savedState.f11696b = i2;
        Parcelable parcelable = this.f11673t;
        if (parcelable != null) {
            savedState.f11697c = parcelable;
            return savedState;
        }
        Object adapter = this.f11663j.getAdapter();
        if (adapter instanceof StatefulAdapter) {
            savedState.f11697c = ((StatefulAdapter) adapter).saveState();
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    @RequiresApi(16)
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        return this.f11665l.a(i2, bundle) ? this.f11665l.b(i2, bundle) : super.performAccessibilityAction(i2, bundle);
    }

    public void registerOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f11669p.a(onPageChangeCallback);
    }

    public void removeItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f11663j.removeItemDecoration(itemDecoration);
    }

    public void removeItemDecorationAt(int i2) {
        this.f11663j.removeItemDecorationAt(i2);
    }

    public void requestTransform() {
        if (this.f11677x.a() == null) {
            return;
        }
        double dH = this.f11664k.h();
        int i2 = (int) dH;
        float f2 = (float) (dH - i2);
        this.f11677x.onPageScrolled(i2, f2, Math.round(b() * f2));
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f11663j.getAdapter();
        this.f11665l.b(adapter2);
        b(adapter2);
        this.f11663j.setAdapter(adapter);
        this.f11661h = 0;
        f();
        this.f11665l.a((RecyclerView.Adapter<?>) adapter);
        a((RecyclerView.Adapter<?>) adapter);
    }

    public void setCurrentItem(int i2) {
        setCurrentItem(i2, true);
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.f11665l.g();
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1 && i2 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f11660B = i2;
        this.f11663j.requestLayout();
    }

    public void setOnOverScrollListener(final OnOverScrollListener onOverScrollListener) {
        if (onOverScrollListener == null) {
            return;
        }
        registerOnPageChangeCallback(new OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.5

            /* renamed from: a, reason: collision with root package name */
            boolean f11684a = false;

            /* renamed from: b, reason: collision with root package name */
            boolean f11685b = false;

            /* renamed from: c, reason: collision with root package name */
            boolean f11686c = false;

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i2) {
                if (i2 != 0) {
                    if (i2 == 1) {
                        this.f11686c = true;
                        return;
                    } else {
                        if (i2 != 2) {
                            return;
                        }
                        this.f11684a = false;
                        this.f11685b = false;
                        return;
                    }
                }
                RecyclerView.Adapter adapter = ViewPager2.this.getAdapter();
                if (adapter == null || adapter.getItemCount() <= 0 || !this.f11686c) {
                    return;
                }
                if (1 == ViewPager2.this.getOrientation()) {
                    if (!ViewPager2.this.canScrollVertically(-1) && ViewPager2.this.getOverScrolledDirection() < 0) {
                        onOverScrollListener.onOverScrollStart();
                    } else if (!ViewPager2.this.canScrollVertically(1) && ViewPager2.this.getOverScrolledDirection() > 0) {
                        onOverScrollListener.onOverScrollEnd();
                    }
                } else if (ViewPager2.this.getOrientation() == 0) {
                    if (!ViewPager2.this.canScrollHorizontally(-1) && ViewPager2.this.getOverScrolledDirection() < 0) {
                        onOverScrollListener.onOverScrollStart();
                    } else if (!ViewPager2.this.canScrollHorizontally(1) && ViewPager2.this.getOverScrolledDirection() > 0) {
                        onOverScrollListener.onOverScrollEnd();
                    }
                }
                this.f11686c = false;
            }
        });
    }

    public void setOrientation(int i2) {
        this.f11671r.setOrientation(i2);
        this.f11665l.d();
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.f11679z) {
                this.f11678y = this.f11663j.getItemAnimator();
                this.f11679z = true;
            }
            this.f11663j.setItemAnimator(null);
        } else if (this.f11679z) {
            this.f11663j.setItemAnimator(this.f11678y);
            this.f11678y = null;
            this.f11679z = false;
        }
        if (pageTransformer == this.f11677x.a()) {
            return;
        }
        this.f11677x.a(pageTransformer);
        requestTransform();
    }

    public void setUserInputEnabled(boolean z2) {
        this.f11659A = z2;
        this.f11665l.f();
    }

    public void unregisterOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f11669p.b(onPageChangeCallback);
    }

    public static class SavedState extends View.BaseSavedState {

        /* renamed from: d, reason: collision with root package name */
        public static final Parcelable.Creator<SavedState> f11694d = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }
        };

        /* renamed from: a, reason: collision with root package name */
        int f11695a;

        /* renamed from: b, reason: collision with root package name */
        int f11696b;

        /* renamed from: c, reason: collision with root package name */
        Parcelable f11697c;

        @RequiresApi(24)
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f11695a = parcel.readInt();
            this.f11696b = parcel.readInt();
            this.f11697c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f11695a);
            parcel.writeInt(this.f11696b);
            parcel.writeParcelable(this.f11697c, i2);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            a(parcel, null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    private void a(Context context, AttributeSet attributeSet) throws IllegalStateException {
        this.f11665l = new BasicAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.f11663j = recyclerViewImpl;
        recyclerViewImpl.setId(ViewCompatDelegate.generateViewId());
        this.f11663j.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.f11671r = linearLayoutManagerImpl;
        this.f11663j.setLayoutManager(linearLayoutManagerImpl);
        this.f11663j.setScrollingTouchSlop(1);
        setOrientation(0);
        this.f11663j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f11663j.addOnChildAttachStateChangeListener(e());
        ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
        this.f11664k = scrollEventAdapter;
        this.f11676w = new FakeDrag(this, scrollEventAdapter, this.f11663j);
        PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
        this.f11674u = pagerSnapHelperImpl;
        pagerSnapHelperImpl.attachToRecyclerView(this.f11663j);
        this.f11663j.addOnScrollListener(this.f11664k);
        CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback(3);
        this.f11675v = compositeOnPageChangeCallback;
        this.f11664k.a(compositeOnPageChangeCallback);
        OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.2
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i2) {
                if (i2 == 0) {
                    ViewPager2.this.a();
                }
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i2) {
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.f11661h != i2) {
                    viewPager2.f11661h = i2;
                    viewPager2.f11665l.e();
                }
            }
        };
        OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.3
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i2) {
                ViewPager2.this.clearFocus();
                if (ViewPager2.this.hasFocus()) {
                    ViewPager2.this.f11663j.requestFocus(2);
                }
            }
        };
        this.f11675v.a(onPageChangeCallback);
        this.f11675v.a(onPageChangeCallback2);
        this.f11665l.a(this.f11675v, this.f11663j);
        this.f11675v.a(this.f11669p);
        PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.f11671r);
        this.f11677x = pageTransformerAdapter;
        this.f11675v.a(pageTransformerAdapter);
        RecyclerView recyclerView = this.f11663j;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration, int i2) {
        this.f11663j.addItemDecoration(itemDecoration, i2);
    }

    public int b() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f11663j;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public void setCurrentItem(int i2, boolean z2) {
        if (isFakeDragging()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        a(i2, z2);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet) throws IllegalStateException {
        super(context, attributeSet);
        this.f11666m = new Rect();
        this.f11667n = new Rect();
        this.f11668o = new int[2];
        this.f11669p = new CompositeOnPageChangeCallback(3);
        this.f11662i = false;
        this.f11670q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f11662i = true;
                viewPager2.f11664k.a();
            }
        };
        this.f11672s = -1;
        this.f11678y = null;
        this.f11679z = false;
        this.f11659A = true;
        this.f11660B = -1;
        a(context, attributeSet);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) throws IllegalStateException {
        super(context, attributeSet, i2);
        this.f11666m = new Rect();
        this.f11667n = new Rect();
        this.f11668o = new int[2];
        this.f11669p = new CompositeOnPageChangeCallback(3);
        this.f11662i = false;
        this.f11670q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f11662i = true;
                viewPager2.f11664k.a();
            }
        };
        this.f11672s = -1;
        this.f11678y = null;
        this.f11679z = false;
        this.f11659A = true;
        this.f11660B = -1;
        a(context, attributeSet);
    }

    private void a(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f11670q);
        }
    }

    public void a() {
        PagerSnapHelper pagerSnapHelper = this.f11674u;
        if (pagerSnapHelper != null) {
            View viewFindSnapView = pagerSnapHelper.findSnapView(this.f11671r);
            if (viewFindSnapView == null) {
                return;
            }
            int position = this.f11671r.getPosition(viewFindSnapView);
            if (position != this.f11661h && getScrollState() == 0) {
                this.f11675v.onPageSelected(position);
            }
            this.f11662i = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    public void a(int i2, boolean z2) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f11672s != -1) {
                this.f11672s = Math.max(i2, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i2, 0), adapter.getItemCount() - 1);
        if (iMin == this.f11661h && this.f11664k.e()) {
            return;
        }
        int i3 = this.f11661h;
        if (iMin == i3 && z2) {
            return;
        }
        double dH = i3;
        this.f11661h = iMin;
        this.f11665l.e();
        if (!this.f11664k.e()) {
            dH = this.f11664k.h();
        }
        this.f11664k.a(iMin, z2);
        if (!z2) {
            this.f11663j.scrollToPosition(iMin);
            return;
        }
        double d2 = iMin;
        if (Math.abs(d2 - dH) > 3.0d) {
            this.f11663j.scrollToPosition(d2 > dH ? iMin - 3 : iMin + 3);
            RecyclerView recyclerView = this.f11663j;
            recyclerView.post(new SmoothScrollToPosition(iMin, recyclerView));
            return;
        }
        this.f11663j.smoothScrollToPosition(iMin);
    }

    @RequiresApi(21)
    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) throws IllegalStateException {
        super(context, attributeSet, i2, i3);
        this.f11666m = new Rect();
        this.f11667n = new Rect();
        this.f11668o = new int[2];
        this.f11669p = new CompositeOnPageChangeCallback(3);
        this.f11662i = false;
        this.f11670q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f11662i = true;
                viewPager2.f11664k.a();
            }
        };
        this.f11672s = -1;
        this.f11678y = null;
        this.f11679z = false;
        this.f11659A = true;
        this.f11660B = -1;
        a(context, attributeSet);
    }
}
