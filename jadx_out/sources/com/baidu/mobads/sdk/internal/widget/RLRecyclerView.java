package com.baidu.mobads.sdk.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* loaded from: classes2.dex */
public class RLRecyclerView extends SwipeRefreshLayout {

    /* renamed from: a, reason: collision with root package name */
    private RecyclerView f11622a;

    /* renamed from: b, reason: collision with root package name */
    private int[] f11623b;

    /* renamed from: c, reason: collision with root package name */
    private int[] f11624c;

    /* renamed from: d, reason: collision with root package name */
    private int[] f11625d;

    public static class NormalItemDecoration extends RecyclerView.ItemDecoration {

        /* renamed from: a, reason: collision with root package name */
        private final int f11626a;

        /* renamed from: b, reason: collision with root package name */
        private final int f11627b;

        /* renamed from: c, reason: collision with root package name */
        private final int f11628c;

        /* renamed from: d, reason: collision with root package name */
        private final int f11629d;

        public NormalItemDecoration(int i2, int i3, int i4, int i5) {
            this.f11626a = i2;
            this.f11627b = i3;
            this.f11628c = i4;
            this.f11629d = i5;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.left = this.f11626a;
            rect.top = this.f11627b;
            rect.right = this.f11628c;
            rect.bottom = this.f11629d;
        }
    }

    public RLRecyclerView(Context context) {
        super(context);
        this.f11624c = new int[2];
        this.f11625d = new int[2];
        a(context);
    }

    private void a(Context context) {
        this.f11622a = new RecyclerView(context);
        addView(this.f11622a, new ViewGroup.LayoutParams(-1, -1));
    }

    private int b(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return -1;
        }
        int i2 = iArr[0];
        for (int i3 : iArr) {
            if (i3 > i2) {
                i2 = i3;
            }
        }
        return i2;
    }

    public void addOnScrollListener(RecyclerView.OnScrollListener onScrollListener) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(onScrollListener);
        }
    }

    public int[] findVisibleItemPositions() {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView == null) {
            return null;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            this.f11625d[0] = gridLayoutManager.findFirstVisibleItemPosition();
            this.f11625d[1] = gridLayoutManager.findLastVisibleItemPosition();
            return this.f11625d;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            this.f11625d[0] = linearLayoutManager.findFirstVisibleItemPosition();
            this.f11625d[1] = linearLayoutManager.findLastVisibleItemPosition();
            return this.f11625d;
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return null;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        if (this.f11623b == null) {
            this.f11623b = new int[staggeredGridLayoutManager.getSpanCount()];
        }
        staggeredGridLayoutManager.findFirstVisibleItemPositions(this.f11623b);
        this.f11625d[0] = a(this.f11623b);
        staggeredGridLayoutManager.findLastVisibleItemPositions(this.f11623b);
        this.f11625d[1] = b(this.f11623b);
        return this.f11625d;
    }

    public int getChildAdapterPosition(View view) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            return recyclerView.getChildAdapterPosition(view);
        }
        return -1;
    }

    public int[] getLayoutManagerCounts() {
        RecyclerView.LayoutManager layoutManager;
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return null;
        }
        this.f11624c[0] = layoutManager.getItemCount();
        this.f11624c[1] = layoutManager.getChildCount();
        return this.f11624c;
    }

    public View getRvChildAt(int i2) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            return recyclerView.getChildAt(i2);
        }
        return null;
    }

    public int getRvChildCount() {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            return recyclerView.getChildCount();
        }
        return 0;
    }

    public int indexOfRvChild(View view) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            return recyclerView.indexOfChild(view);
        }
        return -1;
    }

    public void scrollToPosition(int i2) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            recyclerView.scrollToPosition(i2);
        }
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            recyclerView.setAdapter(adapter);
        }
    }

    public void setItemDecoration(int i2, int i3, int i4, int i5) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(new NormalItemDecoration(i2, i3, i4, i5));
        }
    }

    public void setLayoutManager(int i2, int i3, int i4) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            if (1 == i2) {
                recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            } else if (2 == i2) {
                recyclerView.setLayoutManager(new GridLayoutManager(getContext(), i3));
            } else if (3 == i2) {
                recyclerView.setLayoutManager(new StaggeredGridLayoutManager(i3, i4));
            }
        }
    }

    public void setRecyclerViewPadding(int i2, int i3, int i4, int i5) {
        RecyclerView recyclerView = this.f11622a;
        if (recyclerView != null) {
            recyclerView.setPadding(i2, i3, i4, i5);
        }
    }

    private int a(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return -1;
        }
        int i2 = iArr[0];
        for (int i3 : iArr) {
            if (i3 < i2) {
                i2 = i3;
            }
        }
        return i2;
    }

    public RLRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11624c = new int[2];
        this.f11625d = new int[2];
        a(context);
    }
}
