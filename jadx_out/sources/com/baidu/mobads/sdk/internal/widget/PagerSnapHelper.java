package com.baidu.mobads.sdk.internal.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.baidu.mobads.sdk.internal.av;

/* loaded from: classes2.dex */
public class PagerSnapHelper extends SnapHelper {

    /* renamed from: a, reason: collision with root package name */
    private static final int f11613a = 100;

    /* renamed from: b, reason: collision with root package name */
    private static final float f11614b = 100.0f;

    /* renamed from: g, reason: collision with root package name */
    private static final boolean f11615g = av.a((Class<?>) OrientationHelper.class, "getLayoutManager", (Class<?>[]) new Class[0]);

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private OrientationHelper f11616c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private RecyclerView.LayoutManager f11617d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private OrientationHelper f11618e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private RecyclerView.LayoutManager f11619f;

    /* renamed from: h, reason: collision with root package name */
    private RecyclerView f11620h;

    @Nullable
    private OrientationHelper b(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return c(layoutManager);
        }
        if (layoutManager.canScrollHorizontally()) {
            return d(layoutManager);
        }
        return null;
    }

    @NonNull
    private OrientationHelper c(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.f11616c == null || this.f11617d != layoutManager) {
            this.f11617d = layoutManager;
            this.f11616c = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.f11616c;
    }

    @NonNull
    private OrientationHelper d(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.f11618e == null || this.f11619f != layoutManager) {
            this.f11619f = layoutManager;
            this.f11618e = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.f11618e;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        super.attachToRecyclerView(recyclerView);
        if (this.f11620h == recyclerView) {
            return;
        }
        this.f11620h = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @NonNull
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = a(layoutManager, view, d(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = a(layoutManager, view, c(layoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public LinearSmoothScroller createSnapScroller(RecyclerView.LayoutManager layoutManager) {
        RecyclerView recyclerView;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (recyclerView = this.f11620h) == null) {
            return null;
        }
        return new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.baidu.mobads.sdk.internal.widget.PagerSnapHelper.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateTimeForScrolling(int i2) {
                return Math.min(100, super.calculateTimeForScrolling(i2));
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public void onStop() {
                RecyclerView.LayoutManager layoutManager2;
                super.onStop();
                if (!PagerSnapHelper.f11615g || PagerSnapHelper.this.f11620h == null || PagerSnapHelper.this.f11620h.getScrollState() == 0 || (layoutManager2 = PagerSnapHelper.this.f11620h.getLayoutManager()) == null || layoutManager2.getChildCount() > 1) {
                    return;
                }
                PagerSnapHelper.this.f11620h.stopScroll();
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                if (PagerSnapHelper.this.f11620h == null || PagerSnapHelper.this.f11620h.getLayoutManager() == null) {
                    return;
                }
                PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
                int[] iArrCalculateDistanceToFinalSnap = pagerSnapHelper.calculateDistanceToFinalSnap(pagerSnapHelper.f11620h.getLayoutManager(), view);
                int i2 = iArrCalculateDistanceToFinalSnap[0];
                int i3 = iArrCalculateDistanceToFinalSnap[1];
                int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i2), Math.abs(i3)));
                if (iCalculateTimeForDeceleration > 0) {
                    action.update(i2, i3, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                }
            }
        };
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return a(layoutManager, c(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return a(layoutManager, d(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
        OrientationHelper orientationHelperB;
        int itemCount = layoutManager.getItemCount();
        if (itemCount == 0 || (orientationHelperB = b(layoutManager)) == null) {
            return -1;
        }
        int childCount = layoutManager.getChildCount();
        View view = null;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = layoutManager.getChildAt(i6);
            if (childAt != null) {
                int iA = a(layoutManager, childAt, orientationHelperB);
                if (iA <= 0 && iA > i5) {
                    view2 = childAt;
                    i5 = iA;
                }
                if (iA >= 0 && iA < i4) {
                    view = childAt;
                    i4 = iA;
                }
            }
        }
        boolean zA = a(layoutManager, i2, i3);
        if (zA && view != null) {
            return layoutManager.getPosition(view);
        }
        if (!zA && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (zA) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = layoutManager.getPosition(view) + (a(layoutManager) == zA ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }

    private boolean a(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
        return layoutManager.canScrollHorizontally() ? i2 > 0 : i3 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a(RecyclerView.LayoutManager layoutManager) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f;
    }

    private int a(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2)) - (orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2));
    }

    @Nullable
    private View a(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int startAfterPadding = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = layoutManager.getChildAt(i3);
            int iAbs = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - startAfterPadding);
            if (iAbs < i2) {
                view = childAt;
                i2 = iAbs;
            }
        }
        return view;
    }
}
