package com.beizi.fusion.widget.dialog.dislike;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FlowLayoutManager extends RecyclerView.LayoutManager {

    /* renamed from: b, reason: collision with root package name */
    protected int f17241b;

    /* renamed from: c, reason: collision with root package name */
    protected int f17242c;

    /* renamed from: d, reason: collision with root package name */
    private int f17243d;

    /* renamed from: e, reason: collision with root package name */
    private int f17244e;

    /* renamed from: f, reason: collision with root package name */
    private int f17245f;

    /* renamed from: g, reason: collision with root package name */
    private int f17246g;

    /* renamed from: a, reason: collision with root package name */
    final FlowLayoutManager f17240a = this;

    /* renamed from: h, reason: collision with root package name */
    private int f17247h = 0;

    /* renamed from: i, reason: collision with root package name */
    protected int f17248i = 0;

    /* renamed from: j, reason: collision with root package name */
    private b f17249j = new b();

    /* renamed from: k, reason: collision with root package name */
    private List f17250k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    private SparseArray f17251l = new SparseArray();

    public class a {

        /* renamed from: a, reason: collision with root package name */
        int f17252a;

        /* renamed from: b, reason: collision with root package name */
        View f17253b;

        /* renamed from: c, reason: collision with root package name */
        Rect f17254c;

        public a(int i2, View view, Rect rect) {
            this.f17252a = i2;
            this.f17253b = view;
            this.f17254c = rect;
        }

        public void a(Rect rect) {
            this.f17254c = rect;
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        float f17256a;

        /* renamed from: b, reason: collision with root package name */
        float f17257b;

        /* renamed from: c, reason: collision with root package name */
        List f17258c = new ArrayList();

        public b() {
        }

        public void a(float f2) {
            this.f17256a = f2;
        }

        public void b(float f2) {
            this.f17257b = f2;
        }

        public void a(a aVar) {
            this.f17258c.add(aVar);
        }
    }

    private void a(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout() || getItemCount() == 0) {
            return;
        }
        new Rect(getPaddingLeft(), getPaddingTop() + this.f17247h, getWidth() - getPaddingRight(), this.f17247h + (getHeight() - getPaddingBottom()));
        for (int i2 = 0; i2 < this.f17250k.size(); i2++) {
            b bVar = (b) this.f17250k.get(i2);
            float f2 = bVar.f17256a;
            List list = bVar.f17258c;
            for (int i3 = 0; i3 < list.size(); i3++) {
                View view = ((a) list.get(i3)).f17253b;
                measureChildWithMargins(view, 0, 0);
                addView(view);
                Rect rect = ((a) list.get(i3)).f17254c;
                int i4 = rect.left;
                int i5 = rect.top;
                int i6 = this.f17247h;
                layoutDecoratedWithMargins(view, i4, i5 - i6, rect.right, rect.bottom - i6);
            }
        }
    }

    private int b() {
        return (this.f17240a.getHeight() - this.f17240a.getPaddingBottom()) - this.f17240a.getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f17248i = 0;
        int i2 = this.f17244e;
        this.f17249j = new b();
        this.f17250k.clear();
        this.f17251l.clear();
        removeAllViews();
        if (getItemCount() == 0) {
            detachAndScrapAttachedViews(recycler);
            this.f17247h = 0;
            return;
        }
        if (getChildCount() == 0 && state.isPreLayout()) {
            return;
        }
        detachAndScrapAttachedViews(recycler);
        if (getChildCount() == 0) {
            this.f17241b = getWidth();
            this.f17242c = getHeight();
            this.f17243d = getPaddingLeft();
            this.f17245f = getPaddingRight();
            this.f17244e = getPaddingTop();
            this.f17246g = (this.f17241b - this.f17243d) - this.f17245f;
        }
        int i3 = 0;
        int iMax = 0;
        for (int i4 = 0; i4 < getItemCount(); i4++) {
            View viewForPosition = recycler.getViewForPosition(i4);
            if (8 != viewForPosition.getVisibility()) {
                measureChildWithMargins(viewForPosition, 0, 0);
                int decoratedMeasuredWidth = getDecoratedMeasuredWidth(viewForPosition);
                int decoratedMeasuredHeight = getDecoratedMeasuredHeight(viewForPosition);
                int i5 = i3 + decoratedMeasuredWidth;
                if (i5 <= this.f17246g) {
                    int i6 = this.f17243d + i3;
                    Rect rect = (Rect) this.f17251l.get(i4);
                    if (rect == null) {
                        rect = new Rect();
                    }
                    rect.set(i6, i2, decoratedMeasuredWidth + i6, i2 + decoratedMeasuredHeight);
                    this.f17251l.put(i4, rect);
                    iMax = Math.max(iMax, decoratedMeasuredHeight);
                    this.f17249j.a(new a(decoratedMeasuredHeight, viewForPosition, rect));
                    this.f17249j.a(i2);
                    this.f17249j.b(iMax);
                    i3 = i5;
                } else {
                    a();
                    i2 += iMax;
                    this.f17248i += iMax;
                    int i7 = this.f17243d;
                    Rect rect2 = (Rect) this.f17251l.get(i4);
                    if (rect2 == null) {
                        rect2 = new Rect();
                    }
                    rect2.set(i7, i2, i7 + decoratedMeasuredWidth, i2 + decoratedMeasuredHeight);
                    this.f17251l.put(i4, rect2);
                    this.f17249j.a(new a(decoratedMeasuredHeight, viewForPosition, rect2));
                    this.f17249j.a(i2);
                    this.f17249j.b(decoratedMeasuredHeight);
                    i3 = decoratedMeasuredWidth;
                    iMax = decoratedMeasuredHeight;
                }
                if (i4 == getItemCount() - 1) {
                    a();
                    this.f17248i += iMax;
                }
            }
        }
        this.f17248i = Math.max(this.f17248i, b());
        a(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i3 = this.f17247h;
        int i4 = i3 + i2;
        if (i4 < 0) {
            i2 = -i3;
        } else if (i4 > this.f17248i - b()) {
            i2 = (this.f17248i - b()) - this.f17247h;
        }
        this.f17247h += i2;
        offsetChildrenVertical(-i2);
        a(recycler, state);
        return i2;
    }

    private void a() {
        List list = this.f17249j.f17258c;
        for (int i2 = 0; i2 < list.size(); i2++) {
            a aVar = (a) list.get(i2);
            int position = getPosition(aVar.f17253b);
            float f2 = ((Rect) this.f17251l.get(position)).top;
            b bVar = this.f17249j;
            if (f2 < bVar.f17256a + ((bVar.f17257b - ((a) list.get(i2)).f17252a) / 2.0f)) {
                Rect rect = (Rect) this.f17251l.get(position);
                if (rect == null) {
                    rect = new Rect();
                }
                int i3 = ((Rect) this.f17251l.get(position)).left;
                b bVar2 = this.f17249j;
                int i4 = (int) (bVar2.f17256a + ((bVar2.f17257b - ((a) list.get(i2)).f17252a) / 2.0f));
                int i5 = ((Rect) this.f17251l.get(position)).right;
                b bVar3 = this.f17249j;
                rect.set(i3, i4, i5, (int) (bVar3.f17256a + ((bVar3.f17257b - ((a) list.get(i2)).f17252a) / 2.0f) + getDecoratedMeasuredHeight(r3)));
                this.f17251l.put(position, rect);
                aVar.a(rect);
                list.set(i2, aVar);
            }
        }
        b bVar4 = this.f17249j;
        bVar4.f17258c = list;
        this.f17250k.add(bVar4);
        this.f17249j = new b();
    }
}
