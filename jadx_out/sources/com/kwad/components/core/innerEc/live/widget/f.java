package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.kwad.components.core.innerEc.live.widget.g;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class f extends LinearLayoutManager {

    @NonNull
    private final RecyclerView YL;
    private boolean YM;
    private int YN;
    private int YO;
    private g YP;
    private boolean YQ;

    @NonNull
    private final Context mContext;
    private int maxHeight;

    public static class a {
        private boolean YM = true;
        private int YU = 250;
        private int YV = 200;

        public a(boolean z2, int i2, int i3) {
        }
    }

    public class b extends LinearSmoothScroller {
        private final Interpolator YW;

        public b(Context context) {
            super(context);
            this.YW = new a(this, (byte) 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0030 A[PHI: r0
          0x0030: PHI (r0v10 float) = (r0v7 float), (r0v8 float) binds: [B:14:0x002e, B:17:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int bd(int r3) {
            /*
                r2 = this;
                com.kwad.components.core.innerEc.live.widget.f r0 = com.kwad.components.core.innerEc.live.widget.f.this
                com.kwad.components.core.innerEc.live.widget.g r0 = com.kwad.components.core.innerEc.live.widget.f.b(r0)
                boolean r0 = r0 instanceof com.kwad.components.core.innerEc.live.widget.g.e
                if (r0 == 0) goto Lf
                int r3 = super.calculateTimeForScrolling(r3)
                return r3
            Lf:
                if (r3 != 0) goto L13
                r3 = 0
                return r3
            L13:
                r0 = 10000(0x2710, float:1.4013E-41)
                if (r3 != r0) goto L1a
                r3 = 4000(0xfa0, float:5.605E-42)
                return r3
            L1a:
                com.kwad.components.core.innerEc.live.widget.f r0 = com.kwad.components.core.innerEc.live.widget.f.this
                android.content.Context r0 = com.kwad.components.core.innerEc.live.widget.f.d(r0)
                float r3 = (float) r3
                int r3 = com.kwad.sdk.c.a.a.px2dip(r0, r3)
                float r3 = (float) r3
                r0 = 1104150528(0x41d00000, float:26.0)
                float r3 = r3 / r0
                r0 = 1079613850(0x4059999a, float:3.4)
                int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                if (r1 >= 0) goto L32
            L30:
                r3 = r0
                goto L39
            L32:
                r0 = 1092616192(0x41200000, float:10.0)
                int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                if (r1 <= 0) goto L39
                goto L30
            L39:
                r0 = 1106247680(0x41f00000, float:30.0)
                float r3 = r3 * r0
                int r3 = (int) r3
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.core.innerEc.live.widget.f.b.bd(int):int");
        }

        private int be(int i2) {
            g gVar = f.this.YP;
            if (!c(gVar)) {
                return bh(i2);
            }
            int iBi = ((g.d) gVar).bi(i2);
            return iBi == 0 ? bh(i2) : iBi;
        }

        private int bf(int i2) {
            if (i2 == 0) {
                com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForNewStrategy, dx == 0");
                return 0;
            }
            int iA = f.this.YP instanceof g.b ? (i2 * 1000) / com.kwad.sdk.c.a.a.a(f.this.mContext, 1000.0f) : f.this.YP instanceof g.e ? f.this.YO == 0 ? super.calculateTimeForScrolling(i2) : (i2 * 1000) / f.this.YO : f.this.YP instanceof g.c ? f.this.YN == 0 ? super.calculateTimeForScrolling(i2) : (i2 * 1000) / f.this.YN : bh(i2);
            int iMax = Math.max(iA, 10);
            com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForNewStrategydx" + i2 + "adjustTime" + iMax + "time" + iA);
            return iMax;
        }

        private int bg(int i2) {
            if (i2 == 0) {
                com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForOptimalStrategy, dx == 0");
                return 0;
            }
            int iSW = f.this.YP instanceof g.f ? ((g.f) f.this.YP).sW() : 0;
            int iBh = iSW == 0 ? bh(i2) : (i2 * 1000) / iSW;
            int iMax = Math.max(iBh, 10);
            com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForNewStrategydx" + i2 + "adjustTime" + iMax + "time" + iBh);
            return iMax;
        }

        private int bh(int i2) {
            return Math.max(super.calculateTimeForScrolling(i2), 10);
        }

        private static boolean c(g gVar) {
            return gVar instanceof g.d;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return f.this.YP instanceof g.e ? 8.0f / displayMetrics.density : super.calculateSpeedPerPixel(displayMetrics);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int calculateTimeForDeceleration(int i2) {
            if (f.this.YP instanceof g.a) {
                return 0;
            }
            return f.this.YP instanceof g.d ? be(i2) : f.this.YP instanceof g.f ? bg(i2) : f.this.YM ? bf(i2) : super.calculateTimeForDeceleration(i2);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int calculateTimeForScrolling(int i2) {
            return f.this.YP instanceof g.a ? ((g.a) f.this.YP).sU() : f.this.YP instanceof g.d ? be(i2) : f.this.YP instanceof g.f ? bg(i2) : f.this.YM ? bf(i2) : bd(i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        @Nullable
        public final PointF computeScrollVectorForPosition(int i2) {
            return f.this.computeScrollVectorForPosition(i2);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
            int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
            if (f.this.YP instanceof g.a) {
                int iSU = ((g.a) f.this.YP).sU();
                if (iSU <= 1) {
                    iSU = 300;
                }
                action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iSU, new com.kwad.components.core.innerEc.live.widget.b(0.42f, 0.0f, 0.58f, 1.0f));
                return;
            }
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible)));
            if (iCalculateTimeForDeceleration > 0) {
                action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iCalculateTimeForDeceleration, c(f.this.YP) ? this.YW : this.mDecelerateInterpolator);
            }
        }

        public class a implements Interpolator {
            private final Interpolator YX;

            private a() {
                this.YX = new DecelerateInterpolator();
            }

            private float a(float f2, List<k> list) {
                k next;
                Iterator<k> it = list.iterator();
                float fTg = 0.0f;
                float fTh = 0.0f;
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (f2 - fTg <= next.tg()) {
                        break;
                    }
                    fTg += next.tg();
                    fTh += next.th();
                }
                if (next == null) {
                    return f2;
                }
                return fTh + (this.YX.getInterpolation((f2 - fTg) / next.tg()) * next.th());
            }

            private float f(float f2) {
                return ((LinearSmoothScroller) b.this).mDecelerateInterpolator.getInterpolation(f2);
            }

            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                g gVar = f.this.YP;
                if (!(gVar instanceof g.d)) {
                    return f(f2);
                }
                List<k> listSV = ((g.d) gVar).sV();
                if (!g.n(listSV)) {
                    return f(f2);
                }
                try {
                    return a(f2, listSV);
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "calculateSegmentInterpolation error" + e2);
                    return f(f2);
                }
            }

            public /* synthetic */ a(b bVar, byte b3) {
                this();
            }
        }
    }

    public f(@NonNull RecyclerView recyclerView) {
        super(recyclerView.getContext(), 1, false);
        this.YP = g.c.YZ;
        this.maxHeight = 0;
        this.YQ = false;
        this.YL = recyclerView;
        this.mContext = recyclerView.getContext();
        setStackFromEnd(true);
    }

    private void sT() {
        this.YL.postDelayed(new Runnable() { // from class: com.kwad.components.core.innerEc.live.widget.f.1
            @Override // java.lang.Runnable
            public final void run() {
                if (f.this.YL.isComputingLayout()) {
                    return;
                }
                final RecyclerView.ItemAnimator itemAnimator = f.this.YL.getItemAnimator();
                f fVar = f.this;
                f.a(itemAnimator);
                f.this.YL.setItemAnimator(null);
                f.this.requestLayout();
                f.this.YL.postDelayed(new Runnable() { // from class: com.kwad.components.core.innerEc.live.widget.f.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.this.YL.setItemAnimator(itemAnimator);
                    }
                }, 48L);
            }
        }, 32L);
    }

    public final void aL(boolean z2) {
        this.YQ = z2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final int getExtraLayoutSpace(RecyclerView.State state) {
        if (!this.YQ) {
            return super.getExtraLayoutSpace(state);
        }
        if (this.maxHeight < getHeight()) {
            this.maxHeight = getHeight();
        }
        int i2 = this.maxHeight;
        return Math.max(i2 << 2, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IllegalArgumentException e2) {
            com.kwad.sdk.core.d.c.e("LiveCommentLinearLayoutManager", "onLayoutChildrenException", e2);
            a(recycler);
            sT();
        }
    }

    public final g sS() {
        return this.YP;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
        b bVar = new b(recyclerView.getContext());
        bVar.setTargetPosition(i2);
        startSmoothScroll(bVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public final void b(g gVar) {
        com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "setScrollStrategyscrollStrategy" + gVar);
        this.YP = gVar;
    }

    public final void a(@Nullable a aVar) {
        this.YM = aVar.YM;
        this.YN = aVar.YU;
        this.YO = aVar.YV;
        com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, setLiveCommentScrollConfigmEnableNewSpeedStrategy" + this.YM + "mFastScrollSpeedPx" + this.YN + "mSlowScrollSpeedPx" + this.YO);
    }

    private void a(RecyclerView.Recycler recycler) {
        a(this.YL.getItemAnimator());
        this.YL.stopScroll();
        this.YL.stopNestedScroll();
        detachAndScrapAttachedViews(recycler);
        removeAndRecycleAllViews(recycler);
        if (this.YL.getAdapter() != null) {
            this.YL.scrollToPosition(r2.getAdapter().getItemCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(@Nullable RecyclerView.ItemAnimator itemAnimator) {
        if (itemAnimator != null) {
            int i2 = 0;
            while (i2 < 10 && itemAnimator.isRunning()) {
                i2++;
                try {
                    itemAnimator.endAnimations();
                } catch (IllegalArgumentException e2) {
                    com.kwad.sdk.core.d.c.e("LiveCommentLinearLayoutManager", "resetRecyclerState, clearCount: " + i2, e2);
                }
            }
        }
    }
}
