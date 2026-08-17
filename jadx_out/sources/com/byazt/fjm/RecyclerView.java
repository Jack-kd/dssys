package com.byazt.fjm;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.location.LocationRequestCompat;
import com.byazt.fjm.hp;
import com.byazt.fjm.j;
import com.byazt.fjm.k;
import com.byazt.fjm.l;
import com.byazt.fjm.zy;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1476})
/* loaded from: classes2.dex */
public class RecyclerView extends ViewGroup implements com.byazt.ln.jx {
    public static final Interpolator ky;
    public static final Class<?>[] mp;

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.fjm.hp f19894a;
    public EdgeEffect an;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19895b;
    public float bu;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f19896c;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public com.byazt.fjm.j f19897d;
    public boolean df;
    public a di;
    public boolean dy;

    /* renamed from: e, reason: collision with root package name */
    public final Runnable f19898e;
    public int ea;
    public com.byazt.fjm.l eb;
    public boolean ec;
    public a.hp ed;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f19899f;
    public EdgeEffect fi;
    public final int[] gb;
    public int gd;
    public final Rect gu;
    public boolean hd;
    public final sz hq;
    public int jd;
    public final RectF jl;

    /* renamed from: k, reason: collision with root package name */
    public q f19900k;
    public com.byazt.ln.j ku;
    public j lp;
    public final int[] lv;

    /* renamed from: m, reason: collision with root package name */
    public final vv f19901m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f19902n;
    public int nd;
    public int nr;
    public boolean ns;
    public boolean nu;

    /* renamed from: o, reason: collision with root package name */
    public final ns f19903o;
    public final int[] ov;
    public EdgeEffect pc;
    public final k.l pg;
    public List<k> pi;
    public final List<cx> pu;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19904q;
    public jl qh;
    public EdgeEffect qu;

    /* renamed from: r, reason: collision with root package name */
    public final int[] f19905r;
    public int rk;
    public int ru;
    public w rv;
    public zy rz;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.fjm.k f19906s;
    public int su;
    public boolean sz;

    /* renamed from: t, reason: collision with root package name */
    public final int f19907t;
    public int tw;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList<s> f19908u;
    public boolean ud;
    public k ux;

    /* renamed from: v, reason: collision with root package name */
    public xs f19909v;
    public List<gu> vq;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public final u f19910w;
    public VelocityTracker wt;
    public j.hp wv;

    /* renamed from: x, reason: collision with root package name */
    public final int f19911x;
    public boolean xs;
    public Runnable xv;

    /* renamed from: y, reason: collision with root package name */
    public final AccessibilityManager f19912y;
    public int yj;
    public final ArrayList<zy> yr;
    public float zb;
    public int zx;
    public hp zy;
    public static final int[] xh = {R.attr.nestedScrollingEnabled};

    /* renamed from: ms, reason: collision with root package name */
    public static final int[] f19893ms = {R.attr.clipToPadding};
    public static final boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static final boolean f19892l = true;
    public static final boolean jx = true;

    /* renamed from: j, reason: collision with root package name */
    public static final boolean f19891j = true;
    public static final boolean as = false;
    public static final boolean kg = false;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1208})
    public static abstract class a {
        public hp hp = null;

        /* renamed from: l, reason: collision with root package name */
        public ArrayList<Object> f19915l = new ArrayList<>();
        public long jx = 120;

        /* renamed from: j, reason: collision with root package name */
        public long f19914j = 120;

        /* renamed from: w, reason: collision with root package name */
        public long f19916w = 250;

        /* renamed from: a, reason: collision with root package name */
        public long f19913a = 250;

        public interface hp {
            void hp(cx cxVar);
        }

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1729})
        public static class l {
            public int hp;

            /* renamed from: j, reason: collision with root package name */
            public int f19917j;
            public int jx;

            /* renamed from: l, reason: collision with root package name */
            public int f19918l;

            public l hp(cx cxVar) {
                return hp(cxVar, 0);
            }

            public l hp(cx cxVar, int i2) {
                View view = cxVar.hp;
                this.hp = view.getLeft();
                this.f19918l = view.getTop();
                this.jx = view.getRight();
                this.f19917j = view.getBottom();
                return this;
            }
        }

        public long a() {
            return this.jx;
        }

        public l e() {
            return new l();
        }

        public boolean eb(cx cxVar) {
            return true;
        }

        public abstract void hp();

        public void hp(hp hpVar) {
            this.hp = hpVar;
        }

        public abstract boolean hp(cx cxVar, l lVar, l lVar2);

        public abstract boolean hp(cx cxVar, cx cxVar2, l lVar, l lVar2);

        public abstract void j();

        public abstract void j(cx cxVar);

        public abstract boolean jx(cx cxVar, l lVar, l lVar2);

        public abstract boolean l();

        public abstract boolean l(cx cxVar, l lVar, l lVar2);

        public final void q() {
            int size = this.f19915l.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f19915l.get(i2);
            }
            this.f19915l.clear();
        }

        public long s() {
            return this.f19913a;
        }

        public long w() {
            return this.f19916w;
        }

        public static int w(cx cxVar) {
            int i2 = cxVar.f19920e;
            int i3 = i2 & 14;
            if (cxVar.k()) {
                return 4;
            }
            if ((i2 & 4) == 0) {
                int iA = cxVar.a();
                int iW = cxVar.w();
                if (iA != -1 && iW != -1 && iA != iW) {
                    return i3 | 2048;
                }
            }
            return i3;
        }

        public final void a(cx cxVar) {
            hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(cxVar);
            }
        }

        public long eb() {
            return this.f19914j;
        }

        public l hp(sz szVar, cx cxVar, int i2, List<Object> list) {
            return e().hp(cxVar);
        }

        public l hp(sz szVar, cx cxVar) {
            return e().hp(cxVar);
        }

        public boolean hp(cx cxVar, List<Object> list) {
            return eb(cxVar);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2385})
    public class eb implements a.hp {
        public eb() {
        }

        @Override // com.byazt.fjm.RecyclerView.a.hp
        public void hp(cx cxVar) {
            cxVar.hp(true);
            if (cxVar.f19925s != null && cxVar.f19924q == null) {
                cxVar.f19925s = null;
            }
            cxVar.f19924q = null;
            if (cxVar.b() || RecyclerView.this.hp(cxVar.hp) || !cxVar.vv()) {
                return;
            }
            RecyclerView.this.removeDetachedView(cxVar.hp, false);
        }
    }

    public interface gu {
        void hp(View view);

        void l(View view);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2390})
    public static abstract class hp<VH extends cx> {
        public final l hp = new l();

        /* renamed from: l, reason: collision with root package name */
        public boolean f19940l = false;

        public abstract int hp();

        public int hp(int i2) {
            return 0;
        }

        public abstract VH hp(ViewGroup viewGroup, int i2);

        public abstract void hp(VH vh, int i2);

        public final void jx() {
            this.hp.hp();
        }

        public long l(int i2) {
            return -1L;
        }

        public void hp(VH vh) {
        }

        public boolean l(VH vh) {
            return false;
        }

        public void hp(VH vh, int i2, List<Object> list) {
            hp((hp<VH>) vh, i2);
        }

        public final VH l(ViewGroup viewGroup, int i2) {
            try {
                com.byazt.hx.hp.hp("RV CreateView");
                VH vh = (VH) hp(viewGroup, i2);
                if (vh.hp.getParent() == null) {
                    vh.f19919a = i2;
                    return vh;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } finally {
                com.byazt.hx.hp.hp();
            }
        }

        public void hp(jx jxVar) {
            this.hp.registerObserver(jxVar);
        }

        public final void hp(int i2, Object obj) {
            this.hp.hp(i2, 1, obj);
        }

        public final void hp(int i2, int i3) {
            this.hp.hp(i2, i3);
        }

        public final void l(VH vh, int i2) {
            vh.jx = i2;
            if (l()) {
                vh.f19928w = l(i2);
            }
            vh.hp(1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX);
            com.byazt.hx.hp.hp("RV OnBindView");
            hp(vh, i2, vh.n());
            vh.sz();
            ViewGroup.LayoutParams layoutParams = vh.hp.getLayoutParams();
            if (layoutParams instanceof e) {
                ((e) layoutParams).jx = true;
            }
            com.byazt.hx.hp.hp();
        }

        public final boolean l() {
            return this.f19940l;
        }

        public void l(jx jxVar) {
            this.hp.unregisterObserver(jxVar);
        }
    }

    public interface j {
        int hp(int i2, int i3);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2407})
    public static abstract class jl {
        public abstract boolean hp(int i2, int i3);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2408})
    public static abstract class jx {
        public void hp() {
        }

        public void hp(int i2, int i3, Object obj) {
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1193})
    public static abstract class k {
        public void hp(RecyclerView recyclerView, int i2) {
        }

        public void hp(RecyclerView recyclerView, int i2, int i3) {
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1195})
    public static abstract class n {
        public abstract View hp(u uVar, int i2, int i3);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2420})
    public class ns implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public boolean f19941a;
        public boolean eb;
        public OverScroller hp;

        /* renamed from: j, reason: collision with root package name */
        public int f19942j;

        /* renamed from: l, reason: collision with root package name */
        public Interpolator f19943l;

        /* renamed from: w, reason: collision with root package name */
        public int f19944w;

        public ns() {
            Interpolator interpolator = RecyclerView.ky;
            this.f19943l = interpolator;
            this.f19941a = false;
            this.eb = false;
            this.hp = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private void j() {
            this.f19941a = false;
            if (this.eb) {
                hp();
            }
        }

        private void jx() {
            this.eb = false;
            this.f19941a = true;
        }

        public void hp() {
            if (this.f19941a) {
                this.eb = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                com.byazt.ln.eb.hp(RecyclerView.this, this);
            }
        }

        public void l(int i2, int i3) {
            hp(i2, i3, 0, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00f8  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 419
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.ns.run():void");
        }

        private int l(int i2, int i3, int i4, int i5) {
            int iRound;
            int iAbs = Math.abs(i2);
            int iAbs2 = Math.abs(i3);
            boolean z2 = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt((i4 * i4) + (i5 * i5));
            int iSqrt2 = (int) Math.sqrt((i2 * i2) + (i3 * i3));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z2 ? recyclerView.getWidth() : recyclerView.getHeight();
            int i6 = width / 2;
            float f2 = width;
            float f3 = i6;
            float fHp = f3 + (hp(Math.min(1.0f, (iSqrt2 * 1.0f) / f2)) * f3);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fHp / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z2) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f2) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, 2000);
        }

        public void hp(int i2, int i3) {
            RecyclerView.this.setScrollState(2);
            this.f19944w = 0;
            this.f19942j = 0;
            this.hp.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            hp();
        }

        public void hp(int i2, int i3, int i4, int i5) {
            hp(i2, i3, l(i2, i3, i4, i5));
        }

        private float hp(float f2) {
            return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
        }

        public void hp(int i2, int i3, int i4) {
            hp(i2, i3, i4, RecyclerView.ky);
        }

        public void hp(int i2, int i3, Interpolator interpolator) {
            int iL = l(i2, i3, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.ky;
            }
            hp(i2, i3, iL, interpolator);
        }

        public void l() {
            RecyclerView.this.removeCallbacks(this);
            this.hp.abortAnimation();
        }

        public void hp(int i2, int i3, int i4, Interpolator interpolator) {
            if (this.f19943l != interpolator) {
                this.f19943l = interpolator;
                this.hp = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f19944w = 0;
            this.f19942j = 0;
            this.hp.startScroll(0, 0, i2, i3, i4);
            hp();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1196})
    public static abstract class q {

        /* renamed from: a, reason: collision with root package name */
        public int f19945a;

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.fjm.zy f19946e;
        public int eb;
        public com.byazt.fjm.zy gu;
        public final zy.l hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f19947j;
        public ec jl;
        public boolean jx;

        /* renamed from: k, reason: collision with root package name */
        public boolean f19948k;

        /* renamed from: l, reason: collision with root package name */
        public final zy.l f19949l;

        /* renamed from: q, reason: collision with root package name */
        public RecyclerView f19950q;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.fjm.l f19951s;

        /* renamed from: u, reason: collision with root package name */
        public int f19952u;

        /* renamed from: v, reason: collision with root package name */
        public boolean f19953v;
        public int vv;

        /* renamed from: w, reason: collision with root package name */
        public int f19954w;
        public boolean xs;
        public boolean zy;

        public interface hp {
            void l(int i2, int i3);
        }

        public q() {
            zy.l lVar = new zy.l() { // from class: com.byazt.fjm.RecyclerView.q.1
                @Override // com.byazt.fjm.zy.l
                public View hp(int i2) {
                    return q.this.s(i2);
                }

                @Override // com.byazt.fjm.zy.l
                public int l() {
                    return q.this.ns() - q.this.o();
                }

                @Override // com.byazt.fjm.zy.l
                public int hp() {
                    return q.this.b();
                }

                @Override // com.byazt.fjm.zy.l
                public int l(View view) {
                    return q.this.q(view) + ((ViewGroup.MarginLayoutParams) ((e) view.getLayoutParams())).rightMargin;
                }

                @Override // com.byazt.fjm.zy.l
                public int hp(View view) {
                    return q.this.eb(view) - ((ViewGroup.MarginLayoutParams) ((e) view.getLayoutParams())).leftMargin;
                }
            };
            this.hp = lVar;
            zy.l lVar2 = new zy.l() { // from class: com.byazt.fjm.RecyclerView.q.2
                @Override // com.byazt.fjm.zy.l
                public View hp(int i2) {
                    return q.this.s(i2);
                }

                @Override // com.byazt.fjm.zy.l
                public int l() {
                    return q.this.cx() - q.this.d();
                }

                @Override // com.byazt.fjm.zy.l
                public int hp() {
                    return q.this.di();
                }

                @Override // com.byazt.fjm.zy.l
                public int l(View view) {
                    return q.this.e(view) + ((ViewGroup.MarginLayoutParams) ((e) view.getLayoutParams())).bottomMargin;
                }

                @Override // com.byazt.fjm.zy.l
                public int hp(View view) {
                    return q.this.s(view) - ((ViewGroup.MarginLayoutParams) ((e) view.getLayoutParams())).topMargin;
                }
            };
            this.f19949l = lVar2;
            this.f19946e = new com.byazt.fjm.zy(lVar);
            this.gu = new com.byazt.fjm.zy(lVar2);
            this.zy = false;
            this.f19948k = false;
            this.f19953v = false;
            this.jx = true;
            this.f19947j = true;
        }

        public int a(sz szVar) {
            return 0;
        }

        public int b() {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int cx() {
            return this.vv;
        }

        public int d() {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int di() {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public void dy() {
            ec ecVar = this.jl;
            if (ecVar != null) {
                ecVar.w();
            }
        }

        public void e(int i2) {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                recyclerView.w(i2);
            }
        }

        public int eb(sz szVar) {
            return 0;
        }

        public int ec() {
            com.byazt.fjm.l lVar = this.f19951s;
            if (lVar != null) {
                return lVar.l();
            }
            return 0;
        }

        public void gu(int i2) {
        }

        public int hp(int i2, u uVar, sz szVar) {
            return 0;
        }

        public int hq() {
            RecyclerView recyclerView = this.f19950q;
            hp adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.hp();
            }
            return 0;
        }

        public int j(sz szVar) {
            return 0;
        }

        public boolean jl() {
            return false;
        }

        public int jx(sz szVar) {
            return 0;
        }

        public final boolean k() {
            return this.f19947j;
        }

        public int l(int i2, u uVar, sz szVar) {
            return 0;
        }

        public abstract e l();

        public boolean lv() {
            int iEc = ec();
            for (int i2 = 0; i2 < iEc; i2++) {
                ViewGroup.LayoutParams layoutParams = s(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public int n() {
            return this.f19945a;
        }

        public int ns() {
            return this.eb;
        }

        public int nu() {
            return com.byazt.ln.eb.w(this.f19950q);
        }

        public int o() {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public boolean q() {
            return false;
        }

        public int s(sz szVar) {
            return 0;
        }

        public int sz() {
            return this.f19954w;
        }

        public boolean u() {
            ec ecVar = this.jl;
            return ecVar != null && ecVar.eb();
        }

        public int ud() {
            return com.byazt.ln.eb.j(this.f19950q);
        }

        public boolean v() {
            RecyclerView recyclerView = this.f19950q;
            return recyclerView != null && recyclerView.f19904q;
        }

        public int vv() {
            return -1;
        }

        public int w(sz szVar) {
            return 0;
        }

        public View wv() {
            View focusedChild;
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f19951s.jx(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int xs() {
            return com.byazt.ln.eb.hp(this.f19950q);
        }

        public void zy() {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void a(int i2) {
            if (s(i2) != null) {
                this.f19951s.hp(i2);
            }
        }

        public void eb(int i2) {
            hp(i2, s(i2));
        }

        public int gu(View view) {
            return ((e) view.getLayoutParams()).f19930l.top;
        }

        public View hp(View view, int i2, u uVar, sz szVar) {
            return null;
        }

        public View j(View view, int i2) {
            return null;
        }

        public int jl(View view) {
            return ((e) view.getLayoutParams()).f19930l.bottom;
        }

        public void jx(RecyclerView recyclerView) {
        }

        public int k(View view) {
            return ((e) view.getLayoutParams()).f19930l.right;
        }

        public void l(sz szVar) {
        }

        public void q(int i2) {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                recyclerView.a(i2);
            }
        }

        public View s(int i2) {
            com.byazt.fjm.l lVar = this.f19951s;
            if (lVar != null) {
                return lVar.l(i2);
            }
            return null;
        }

        public int w(View view) {
            Rect rect = ((e) view.getLayoutParams()).f19930l;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int e(View view) {
            return view.getBottom() + jl(view);
        }

        public int eb(View view) {
            return view.getLeft() - zy(view);
        }

        public void hp(int i2, int i3, sz szVar, hp hpVar) {
        }

        public void j(int i2) {
        }

        public boolean jx() {
            return false;
        }

        public void l(int i2, int i3) {
            this.eb = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            this.f19954w = mode;
            if (mode == 0 && !RecyclerView.f19892l) {
                this.eb = 0;
            }
            this.vv = View.MeasureSpec.getSize(i3);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.f19945a = mode2;
            if (mode2 != 0 || RecyclerView.f19892l) {
                return;
            }
            this.vv = 0;
        }

        public int s(View view) {
            return view.getTop() - gu(view);
        }

        public int zy(View view) {
            return ((e) view.getLayoutParams()).f19930l.left;
        }

        public int a(View view) {
            Rect rect = ((e) view.getLayoutParams()).f19930l;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void hp(int i2, hp hpVar) {
        }

        public boolean j() {
            return false;
        }

        public void jx(int i2, int i3) {
            int iEc = ec();
            if (iEc == 0) {
                this.f19950q.w(i2, i3);
                return;
            }
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MAX_VALUE;
            for (int i8 = 0; i8 < iEc; i8++) {
                View viewS = s(i8);
                Rect rect = this.f19950q.gu;
                hp(viewS, rect);
                int i9 = rect.left;
                if (i9 < i7) {
                    i7 = i9;
                }
                int i10 = rect.right;
                if (i10 > i4) {
                    i4 = i10;
                }
                int i11 = rect.top;
                if (i11 < i5) {
                    i5 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i6) {
                    i6 = i12;
                }
            }
            this.f19950q.gu.set(i7, i5, i4, i6);
            hp(this.f19950q.gu, i2, i3);
        }

        public int q(View view) {
            return view.getRight() + k(view);
        }

        public void w(int i2, int i3) {
            this.f19950q.setMeasuredDimension(i2, i3);
        }

        public void hp(RecyclerView recyclerView, u uVar) {
        }

        public int j(View view) {
            return ((e) view.getLayoutParams()).j();
        }

        public boolean hp(e eVar) {
            return eVar != null;
        }

        public void j(int i2, int i3) {
            View viewS = s(i2);
            if (viewS != null) {
                eb(i2);
                jx(viewS, i3);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.f19950q.toString());
            }
        }

        public boolean hp(RecyclerView recyclerView, ArrayList<View> arrayList, int i2, int i3) {
            return false;
        }

        public void hp(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f19950q = null;
                this.f19951s = null;
                this.eb = 0;
                this.vv = 0;
            } else {
                this.f19950q = recyclerView;
                this.f19951s = recyclerView.eb;
                this.eb = recyclerView.getWidth();
                this.vv = recyclerView.getHeight();
            }
            this.f19954w = C.ENCODING_PCM_32BIT;
            this.f19945a = C.ENCODING_PCM_32BIT;
        }

        public void j(RecyclerView recyclerView) {
            l(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), C.ENCODING_PCM_32BIT));
        }

        public void l(RecyclerView recyclerView) {
            this.f19948k = true;
            jx(recyclerView);
        }

        public void l(RecyclerView recyclerView, u uVar) {
            this.f19948k = false;
            hp(recyclerView, uVar);
        }

        public void jx(View view) {
            this.f19951s.hp(view);
        }

        public void l(View view) {
            l(view, -1);
        }

        public void jx(View view, int i2) {
            hp(view, i2, (e) view.getLayoutParams());
        }

        public void l(View view, int i2) {
            hp(view, i2, false);
        }

        public void jx(u uVar) {
            for (int iEc = ec() - 1; iEc >= 0; iEc--) {
                if (!RecyclerView.w(s(iEc)).R_()) {
                    hp(iEc, uVar);
                }
            }
        }

        public View l(int i2) {
            int iEc = ec();
            for (int i3 = 0; i3 < iEc; i3++) {
                View viewS = s(i3);
                cx cxVarW = RecyclerView.w(viewS);
                if (cxVarW != null && cxVarW.j() == i2 && !cxVarW.R_() && (this.f19950q.hq.hp() || !cxVarW.xs())) {
                    return viewS;
                }
            }
            return null;
        }

        public void hp(Rect rect, int i2, int i3) {
            w(hp(i2, rect.width() + b() + o(), ud()), hp(i3, rect.height() + di() + d(), nu()));
        }

        public void l(u uVar) {
            int iW = uVar.w();
            for (int i2 = iW - 1; i2 >= 0; i2--) {
                View viewJ = uVar.j(i2);
                cx cxVarW = RecyclerView.w(viewJ);
                if (!cxVarW.R_()) {
                    cxVarW.hp(false);
                    if (cxVarW.vv()) {
                        this.f19950q.removeDetachedView(viewJ, false);
                    }
                    a aVar = this.f19950q.di;
                    if (aVar != null) {
                        aVar.j(cxVarW);
                    }
                    cxVarW.hp(true);
                    uVar.l(viewJ);
                }
            }
            uVar.a();
            if (iW > 0) {
                this.f19950q.invalidate();
            }
        }

        public static int hp(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i3, i4) : size;
            }
            return Math.min(size, Math.max(i3, i4));
        }

        public void hp(String str) {
            RecyclerView recyclerView = this.f19950q;
            if (recyclerView != null) {
                recyclerView.hp(str);
            }
        }

        public boolean hp() {
            return this.f19953v;
        }

        public void hp(u uVar, sz szVar) {
            com.byazt.ymw.u.l("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public e hp(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof e) {
                return new e((e) layoutParams);
            }
            return layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
        }

        private static boolean l(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            if (i4 > 0 && i2 != i4) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i2;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i2;
            }
            return true;
        }

        public e hp(Context context, AttributeSet attributeSet) {
            return new e(context, attributeSet);
        }

        public void hp(RecyclerView recyclerView, sz szVar, int i2) {
            com.byazt.ymw.u.l("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        private int[] l(RecyclerView recyclerView, View view, Rect rect, boolean z2) {
            int iB = b();
            int iDi = di();
            int iNs = ns() - o();
            int iCx = cx() - d();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i2 = left - iB;
            int iMin = Math.min(0, i2);
            int i3 = top - iDi;
            int iMin2 = Math.min(0, i3);
            int i4 = iWidth - iNs;
            int iMax = Math.max(0, i4);
            int iMax2 = Math.max(0, iHeight - iCx);
            if (xs() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i2, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i4);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i3, iMax2);
            }
            return new int[]{iMax, iMin2};
        }

        public void hp(ec ecVar) {
            ec ecVar2 = this.jl;
            if (ecVar2 != null && ecVar != ecVar2 && ecVar2.eb()) {
                this.jl.w();
            }
            this.jl = ecVar;
            ecVar.hp(this.f19950q, this);
        }

        public void hp(View view) {
            hp(view, -1);
        }

        public void hp(View view, int i2) {
            hp(view, i2, true);
        }

        private void hp(View view, int i2, boolean z2) {
            cx cxVarW = RecyclerView.w(view);
            if (!z2 && !cxVarW.xs()) {
                this.f19950q.f19906s.a(cxVarW);
            } else {
                this.f19950q.f19906s.w(cxVarW);
            }
            e eVar = (e) view.getLayoutParams();
            if (!cxVarW.gu() && !cxVarW.q()) {
                if (view.getParent() == this.f19950q) {
                    int iL = this.f19951s.l(view);
                    if (i2 == -1) {
                        i2 = this.f19951s.l();
                    }
                    if (iL == -1) {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f19950q.indexOfChild(view) + this.f19950q.hp());
                    }
                    if (iL != i2) {
                        this.f19950q.f19900k.j(iL, i2);
                    }
                } else {
                    this.f19951s.hp(view, i2, false);
                    eVar.jx = true;
                    ec ecVar = this.jl;
                    if (ecVar != null && ecVar.eb()) {
                        this.jl.l(view);
                    }
                }
            } else {
                if (cxVarW.q()) {
                    cxVarW.e();
                } else {
                    cxVarW.jl();
                }
                this.f19951s.hp(view, i2, view.getLayoutParams(), false);
            }
            if (eVar.f19929j) {
                cxVarW.hp.invalidate();
                eVar.f19929j = false;
            }
        }

        public void l(ec ecVar) {
            if (this.jl == ecVar) {
                this.jl = null;
            }
        }

        private void hp(int i2, View view) {
            this.f19951s.w(i2);
        }

        public void hp(View view, int i2, e eVar) {
            cx cxVarW = RecyclerView.w(view);
            if (cxVarW.xs()) {
                this.f19950q.f19906s.w(cxVarW);
            } else {
                this.f19950q.f19906s.a(cxVarW);
            }
            this.f19951s.hp(view, i2, eVar, cxVarW.xs());
        }

        public void hp(View view, u uVar) {
            jx(view);
            uVar.hp(view);
        }

        public void hp(int i2, u uVar) {
            View viewS = s(i2);
            a(i2);
            uVar.hp(viewS);
        }

        public void hp(u uVar) {
            for (int iEc = ec() - 1; iEc >= 0; iEc--) {
                hp(uVar, iEc, s(iEc));
            }
        }

        private void hp(u uVar, int i2, View view) {
            cx cxVarW = RecyclerView.w(view);
            if (cxVarW.R_()) {
                return;
            }
            if (cxVarW.k() && !cxVarW.xs() && !this.f19950q.zy.l()) {
                a(i2);
                uVar.l(cxVarW);
            } else {
                eb(i2);
                uVar.jx(view);
                this.f19950q.f19906s.s(cxVarW);
            }
        }

        public boolean hp(View view, int i2, int i3, e eVar) {
            return (!view.isLayoutRequested() && this.jx && l(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) eVar).width) && l(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) eVar).height)) ? false : true;
        }

        public void hp(View view, int i2, int i3) {
            e eVar = (e) view.getLayoutParams();
            Rect rectQ = this.f19950q.q(view);
            int i4 = i2 + rectQ.left + rectQ.right;
            int i5 = i3 + rectQ.top + rectQ.bottom;
            int iHp = hp(ns(), sz(), b() + o() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin + i4, ((ViewGroup.MarginLayoutParams) eVar).width, jx());
            int iHp2 = hp(cx(), n(), di() + d() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) eVar).height, j());
            if (hp(view, iHp, iHp2, eVar)) {
                view.measure(iHp, iHp2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int hp(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r8 == 0) goto L1b
                if (r7 < 0) goto L12
            L10:
                r5 = r3
                goto L2d
            L12:
                if (r7 != r1) goto L18
                if (r5 == r2) goto L20
                if (r5 == r3) goto L20
            L18:
                r5 = r6
                r7 = r5
                goto L2d
            L1b:
                if (r7 < 0) goto L1e
                goto L10
            L1e:
                if (r7 != r1) goto L22
            L20:
                r7 = r4
                goto L2d
            L22:
                if (r7 != r0) goto L18
                if (r5 == r2) goto L2b
                if (r5 == r3) goto L2b
                r7 = r4
                r5 = r6
                goto L2d
            L2b:
                r7 = r4
                r5 = r2
            L2d:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.q.hp(int, int, int, int, boolean):int");
        }

        public void hp(View view, int i2, int i3, int i4, int i5) {
            e eVar = (e) view.getLayoutParams();
            Rect rect = eVar.f19930l;
            view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) eVar).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) eVar).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        }

        public void hp(View view, boolean z2, Rect rect) {
            Matrix matrix;
            if (z2) {
                Rect rect2 = ((e) view.getLayoutParams()).f19930l;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f19950q != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f19950q.jl;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void hp(View view, Rect rect) {
            RecyclerView.hp(view, rect);
        }

        public boolean hp(RecyclerView recyclerView, View view, Rect rect, boolean z2) {
            return hp(recyclerView, view, rect, z2, false);
        }

        public boolean hp(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
            int[] iArrL = l(recyclerView, view, rect, z2);
            int i2 = iArrL[0];
            int i3 = iArrL[1];
            if ((z3 && !hp(recyclerView, i2, i3)) || (i2 == 0 && i3 == 0)) {
                return false;
            }
            if (z2) {
                recyclerView.scrollBy(i2, i3);
            } else {
                recyclerView.hp(i2, i3);
            }
            return true;
        }

        private boolean hp(RecyclerView recyclerView, int i2, int i3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iB = b();
            int iDi = di();
            int iNs = ns() - o();
            int iCx = cx() - d();
            Rect rect = this.f19950q.gu;
            hp(focusedChild, rect);
            return rect.left - i2 < iNs && rect.right - i2 > iB && rect.top - i3 < iCx && rect.bottom - i3 > iDi;
        }

        @Deprecated
        public boolean hp(RecyclerView recyclerView, View view, View view2) {
            return u() || recyclerView.k();
        }

        public boolean hp(RecyclerView recyclerView, sz szVar, View view, View view2) {
            return hp(recyclerView, view, view2);
        }

        public void hp(u uVar, sz szVar, int i2, int i3) {
            this.f19950q.w(i2, i3);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1200})
    public static abstract class s {
        @Deprecated
        public void hp(Rect rect, int i2, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void hp(Rect rect, View view, RecyclerView recyclerView, sz szVar) {
            hp(rect, ((e) view.getLayoutParams()).j(), recyclerView);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1201})
    public final class u {
        public final List<cx> eb;
        public final ArrayList<cx> hp;

        /* renamed from: j, reason: collision with root package name */
        public int f19966j;
        public final ArrayList<cx> jx;

        /* renamed from: l, reason: collision with root package name */
        public ArrayList<cx> f19967l;

        /* renamed from: q, reason: collision with root package name */
        public n f19968q;

        /* renamed from: s, reason: collision with root package name */
        public int f19969s;

        /* renamed from: w, reason: collision with root package name */
        public v f19970w;

        public u() {
            ArrayList<cx> arrayList = new ArrayList<>();
            this.hp = arrayList;
            this.f19967l = null;
            this.jx = new ArrayList<>();
            this.eb = Collections.unmodifiableList(arrayList);
            this.f19969s = 2;
            this.f19966j = 2;
        }

        private void w(cx cxVar) {
            View view = cxVar.hp;
            if (view instanceof ViewGroup) {
                hp((ViewGroup) view, false);
            }
        }

        public void a() {
            this.hp.clear();
            ArrayList<cx> arrayList = this.f19967l;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public void e() {
            int size = this.jx.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = (e) this.jx.get(i2).hp.getLayoutParams();
                if (eVar != null) {
                    eVar.jx = true;
                }
            }
        }

        public v eb() {
            if (this.f19970w == null) {
                this.f19970w = new v();
            }
            return this.f19970w;
        }

        public void hp() {
            this.hp.clear();
            j();
        }

        public void j() {
            for (int size = this.jx.size() - 1; size >= 0; size--) {
                jx(size);
            }
            this.jx.clear();
            if (RecyclerView.f19891j) {
                RecyclerView.this.wv.hp();
            }
        }

        public List<cx> jx() {
            return this.eb;
        }

        public void l() {
            q qVar = RecyclerView.this.f19900k;
            this.f19966j = this.f19969s + (qVar != null ? qVar.f19952u : 0);
            for (int size = this.jx.size() - 1; size >= 0 && this.jx.size() > this.f19966j; size--) {
                jx(size);
            }
        }

        public void q() {
            int size = this.jx.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.jx.get(i2).hp();
            }
            int size2 = this.hp.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.hp.get(i3).hp();
            }
            ArrayList<cx> arrayList = this.f19967l;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    this.f19967l.get(i4).hp();
                }
            }
        }

        public void s() {
            int size = this.jx.size();
            for (int i2 = 0; i2 < size; i2++) {
                cx cxVar = this.jx.get(i2);
                if (cxVar != null) {
                    cxVar.l(6);
                    cxVar.hp((Object) null);
                }
            }
            hp hpVar = RecyclerView.this.zy;
            if (hpVar == null || !hpVar.l()) {
                j();
            }
        }

        public void jx(int i2) {
            hp(this.jx.get(i2), true);
            this.jx.remove(i2);
        }

        public void hp(int i2) {
            this.f19969s = i2;
            l();
        }

        public int w() {
            return this.hp.size();
        }

        public cx w(int i2) {
            int size;
            int iL;
            ArrayList<cx> arrayList = this.f19967l;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i3 = 0; i3 < size; i3++) {
                    cx cxVar = this.f19967l.get(i3);
                    if (!cxVar.gu() && cxVar.j() == i2) {
                        cxVar.l(32);
                        return cxVar;
                    }
                }
                if (RecyclerView.this.zy.l() && (iL = RecyclerView.this.f19894a.l(i2)) > 0 && iL < RecyclerView.this.zy.hp()) {
                    long jL = RecyclerView.this.zy.l(iL);
                    for (int i4 = 0; i4 < size; i4++) {
                        cx cxVar2 = this.f19967l.get(i4);
                        if (!cxVar2.gu() && cxVar2.eb() == jL) {
                            cxVar2.l(32);
                            return cxVar2;
                        }
                    }
                }
            }
            return null;
        }

        public boolean hp(cx cxVar) {
            if (cxVar.xs()) {
                return RecyclerView.this.hq.hp();
            }
            int i2 = cxVar.jx;
            if (i2 >= 0 && i2 < RecyclerView.this.zy.hp()) {
                if (RecyclerView.this.hq.hp() || RecyclerView.this.zy.hp(cxVar.jx) == cxVar.s()) {
                    return !RecyclerView.this.zy.l() || cxVar.eb() == RecyclerView.this.zy.l(cxVar.jx);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + cxVar + RecyclerView.this.hp());
        }

        public void jx(View view) {
            cx cxVarW = RecyclerView.w(view);
            if (!cxVarW.hp(12) && cxVarW.o() && !RecyclerView.this.l(cxVarW)) {
                if (this.f19967l == null) {
                    this.f19967l = new ArrayList<>();
                }
                cxVarW.hp(this, true);
                this.f19967l.add(cxVarW);
                return;
            }
            if (cxVarW.k() && !cxVarW.xs() && !RecyclerView.this.zy.l()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.hp());
            }
            cxVarW.hp(this, false);
            this.hp.add(cxVarW);
        }

        public View l(int i2) {
            return hp(i2, false);
        }

        public View j(int i2) {
            return this.hp.get(i2).hp;
        }

        public void l(cx cxVar) {
            boolean z2;
            boolean z3 = true;
            if (!cxVar.q() && cxVar.hp.getParent() == null) {
                if (!cxVar.vv()) {
                    if (!cxVar.R_()) {
                        boolean zDi = cxVar.di();
                        hp hpVar = RecyclerView.this.zy;
                        if ((hpVar != null && zDi && hpVar.l((hp) cxVar)) || cxVar.cx()) {
                            if (this.f19966j <= 0 || cxVar.hp(526)) {
                                z2 = false;
                            } else {
                                int size = this.jx.size();
                                if (size >= this.f19966j && size > 0) {
                                    jx(0);
                                    size--;
                                }
                                if (RecyclerView.f19891j && size > 0 && !RecyclerView.this.wv.hp(cxVar.jx)) {
                                    int i2 = size - 1;
                                    while (i2 >= 0) {
                                        if (!RecyclerView.this.wv.hp(this.jx.get(i2).jx)) {
                                            break;
                                        } else {
                                            i2--;
                                        }
                                    }
                                    size = i2 + 1;
                                }
                                this.jx.add(size, cxVar);
                                z2 = true;
                            }
                            if (z2) {
                                z3 = false;
                            } else {
                                hp(cxVar, true);
                            }
                            z = z2;
                        } else {
                            z3 = false;
                        }
                        RecyclerView.this.f19906s.eb(cxVar);
                        if (z || z3 || !zDi) {
                            return;
                        }
                        cxVar.f19926u = null;
                        return;
                    }
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.hp());
                }
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + cxVar + RecyclerView.this.hp());
            }
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(cxVar.q());
            sb.append(" isAttached:");
            sb.append(cxVar.hp.getParent() != null);
            sb.append(RecyclerView.this.hp());
            throw new IllegalArgumentException(sb.toString());
        }

        public void j(cx cxVar) {
            hp hpVar = RecyclerView.this.zy;
            if (hpVar != null) {
                hpVar.hp((hp) cxVar);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.hq != null) {
                recyclerView.f19906s.eb(cxVar);
            }
        }

        private boolean hp(cx cxVar, int i2, int i3, long j2) {
            cxVar.f19926u = RecyclerView.this;
            int iS = cxVar.s();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j2 != LocationRequestCompat.PASSIVE_INTERVAL && !this.f19970w.l(iS, nanoTime, j2)) {
                return false;
            }
            RecyclerView.this.zy.l((hp) cxVar, i2);
            this.f19970w.l(cxVar.s(), RecyclerView.this.getNanoTime() - nanoTime);
            if (!RecyclerView.this.hq.hp()) {
                return true;
            }
            cxVar.eb = i3;
            return true;
        }

        public void jx(cx cxVar) {
            if (cxVar.f19922k) {
                this.f19967l.remove(cxVar);
            } else {
                this.hp.remove(cxVar);
            }
            cxVar.zy = null;
            cxVar.f19922k = false;
            cxVar.jl();
        }

        public void jx(int i2, int i3) {
            int i4;
            int i5 = i3 + i2;
            for (int size = this.jx.size() - 1; size >= 0; size--) {
                cx cxVar = this.jx.get(size);
                if (cxVar != null && (i4 = cxVar.jx) >= i2 && i4 < i5) {
                    cxVar.l(2);
                    jx(size);
                }
            }
        }

        public View hp(int i2, boolean z2) {
            return hp(i2, z2, LocationRequestCompat.PASSIVE_INTERVAL).hp;
        }

        /* JADX WARN: Removed duplicated region for block: B:105:0x0217 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:107:0x021a  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0196  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01c2  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x01ed  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01fb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.byazt.fjm.RecyclerView.cx hp(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instructions count: 595
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.u.hp(int, boolean, long):com.byazt.fjm.RecyclerView$cx");
        }

        public void l(View view) {
            cx cxVarW = RecyclerView.w(view);
            cxVarW.zy = null;
            cxVarW.f19922k = false;
            cxVarW.jl();
            l(cxVarW);
        }

        public cx l(int i2, boolean z2) {
            View viewJx;
            int size = this.hp.size();
            for (int i3 = 0; i3 < size; i3++) {
                cx cxVar = this.hp.get(i3);
                if (!cxVar.gu() && cxVar.j() == i2 && !cxVar.k() && (RecyclerView.this.hq.eb || !cxVar.xs())) {
                    cxVar.l(32);
                    return cxVar;
                }
            }
            if (!z2 && (viewJx = RecyclerView.this.eb.jx(i2)) != null) {
                cx cxVarW = RecyclerView.w(viewJx);
                RecyclerView.this.eb.w(viewJx);
                int iL = RecyclerView.this.eb.l(viewJx);
                if (iL != -1) {
                    RecyclerView.this.eb.w(iL);
                    jx(viewJx);
                    cxVarW.l(8224);
                    return cxVarW;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + cxVarW + RecyclerView.this.hp());
            }
            int size2 = this.jx.size();
            for (int i4 = 0; i4 < size2; i4++) {
                cx cxVar2 = this.jx.get(i4);
                if (!cxVar2.k() && cxVar2.j() == i2) {
                    if (!z2) {
                        this.jx.remove(i4);
                    }
                    return cxVar2;
                }
            }
            return null;
        }

        public void l(int i2, int i3) {
            int size = this.jx.size();
            for (int i4 = 0; i4 < size; i4++) {
                cx cxVar = this.jx.get(i4);
                if (cxVar != null && cxVar.jx >= i2) {
                    cxVar.hp(i3, true);
                }
            }
        }

        private void hp(ViewGroup viewGroup, boolean z2) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    hp((ViewGroup) childAt, true);
                }
            }
            if (z2) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public void hp(View view) {
            cx cxVarW = RecyclerView.w(view);
            if (cxVarW.vv()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (cxVarW.q()) {
                cxVarW.e();
            } else if (cxVarW.gu()) {
                cxVarW.jl();
            }
            l(cxVarW);
        }

        public void hp(cx cxVar, boolean z2) {
            RecyclerView.jx(cxVar);
            if (cxVar.hp(16384)) {
                cxVar.hp(0, 16384);
            }
            if (z2) {
                j(cxVar);
            }
            cxVar.f19926u = null;
            eb().hp(cxVar);
        }

        public cx hp(long j2, int i2, boolean z2) {
            for (int size = this.hp.size() - 1; size >= 0; size--) {
                cx cxVar = this.hp.get(size);
                if (cxVar.eb() == j2 && !cxVar.gu()) {
                    if (i2 == cxVar.s()) {
                        cxVar.l(32);
                        if (cxVar.xs() && !RecyclerView.this.hq.hp()) {
                            cxVar.hp(2, 14);
                        }
                        return cxVar;
                    }
                    if (!z2) {
                        this.hp.remove(size);
                        RecyclerView.this.removeDetachedView(cxVar.hp, false);
                        l(cxVar.hp);
                    }
                }
            }
            int size2 = this.jx.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                cx cxVar2 = this.jx.get(size2);
                if (cxVar2.eb() == j2) {
                    if (i2 == cxVar2.s()) {
                        if (!z2) {
                            this.jx.remove(size2);
                        }
                        return cxVar2;
                    }
                    if (!z2) {
                        jx(size2);
                        return null;
                    }
                }
            }
        }

        public void hp(hp hpVar, hp hpVar2, boolean z2) {
            hp();
            eb().hp(hpVar, hpVar2, z2);
        }

        public void hp(int i2, int i3) {
            int i4;
            int i5;
            int i6;
            int i7;
            if (i2 < i3) {
                i4 = -1;
                i6 = i2;
                i5 = i3;
            } else {
                i4 = 1;
                i5 = i2;
                i6 = i3;
            }
            int size = this.jx.size();
            for (int i8 = 0; i8 < size; i8++) {
                cx cxVar = this.jx.get(i8);
                if (cxVar != null && (i7 = cxVar.jx) >= i6 && i7 <= i5) {
                    if (i7 == i2) {
                        cxVar.hp(i3 - i2, false);
                    } else {
                        cxVar.hp(i4, false);
                    }
                }
            }
        }

        public void hp(int i2, int i3, boolean z2) {
            int i4 = i2 + i3;
            for (int size = this.jx.size() - 1; size >= 0; size--) {
                cx cxVar = this.jx.get(size);
                if (cxVar != null) {
                    int i5 = cxVar.jx;
                    if (i5 >= i4) {
                        cxVar.hp(-i3, z2);
                    } else if (i5 >= i2) {
                        cxVar.l(8);
                        jx(size);
                    }
                }
            }
        }

        public void hp(n nVar) {
            this.f19968q = nVar;
        }

        public void hp(v vVar) {
            v vVar2 = this.f19970w;
            if (vVar2 != null) {
                vVar2.jx();
            }
            this.f19970w = vVar;
            if (vVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f19970w.l();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1203})
    public static class w {
        public EdgeEffect hp(RecyclerView recyclerView, int i2) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public interface xs {
    }

    public interface zy {
        boolean hp(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    static {
        Class cls = Integer.TYPE;
        mp = new Class[]{Context.class, AttributeSet.class, cls, cls};
        ky = new Interpolator() { // from class: com.byazt.fjm.RecyclerView.6
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void as() {
        w();
        jl();
        this.hq.hp(6);
        this.f19894a.w();
        this.hq.f19964w = this.zy.hp();
        sz szVar = this.hq;
        szVar.jx = 0;
        szVar.eb = false;
        this.f19900k.hp(this.f19910w, szVar);
        sz szVar2 = this.hq;
        szVar2.f19955a = false;
        szVar2.f19956e = szVar2.f19956e && this.di != null;
        szVar2.f19957j = 4;
        zy();
        hp(false);
    }

    @SuppressLint({"InlinedApi"})
    private void b() {
        if (com.byazt.ln.eb.q(this) == 0) {
            com.byazt.ln.eb.l(this, 8);
        }
    }

    private void d() {
        this.f19903o.l();
        q qVar = this.f19900k;
        if (qVar != null) {
            qVar.dy();
        }
    }

    private void di() {
        this.eb = new com.byazt.fjm.l(new l.InterfaceC0228l() { // from class: com.byazt.fjm.RecyclerView.4
            @Override // com.byazt.fjm.l.InterfaceC0228l
            public int hp() {
                return RecyclerView.this.getChildCount();
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void j(View view) {
                cx cxVarW = RecyclerView.w(view);
                if (cxVarW != null) {
                    cxVarW.l(RecyclerView.this);
                }
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void jx(int i2) {
                cx cxVarW;
                View viewL = l(i2);
                if (viewL != null && (cxVarW = RecyclerView.w(viewL)) != null) {
                    if (cxVarW.vv() && !cxVarW.R_()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + cxVarW + RecyclerView.this.hp());
                    }
                    cxVarW.l(256);
                }
                RecyclerView.this.detachViewFromParent(i2);
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public View l(int i2) {
                return RecyclerView.this.getChildAt(i2);
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void hp(View view, int i2) {
                RecyclerView.this.addView(view, i2);
                RecyclerView.this.jl(view);
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void l() {
                int iHp = hp();
                for (int i2 = 0; i2 < iHp; i2++) {
                    View viewL = l(i2);
                    RecyclerView.this.gu(viewL);
                    viewL.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public int hp(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void hp(int i2) {
                View childAt = RecyclerView.this.getChildAt(i2);
                if (childAt != null) {
                    RecyclerView.this.gu(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i2);
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void jx(View view) {
                cx cxVarW = RecyclerView.w(view);
                if (cxVarW != null) {
                    cxVarW.hp(RecyclerView.this);
                }
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public cx l(View view) {
                return RecyclerView.w(view);
            }

            @Override // com.byazt.fjm.l.InterfaceC0228l
            public void hp(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                cx cxVarW = RecyclerView.w(view);
                if (cxVarW != null) {
                    if (!cxVarW.vv() && !cxVarW.R_()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + cxVarW + RecyclerView.this.hp());
                    }
                    cxVarW.zy();
                }
                RecyclerView.this.attachViewToParent(view, i2, layoutParams);
            }
        });
    }

    private boolean dy() {
        return this.di != null && this.f19900k.jl();
    }

    private com.byazt.ln.j getScrollingChildHelper() {
        if (this.ku == null) {
            this.ku = new com.byazt.ln.j(this);
        }
        return this.ku;
    }

    private void hq() {
        VelocityTracker velocityTracker = this.wt;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        s(0);
        wv();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void kg() {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.kg():void");
    }

    private View ky() {
        cx cxVarJ;
        sz szVar = this.hq;
        int i2 = szVar.jl;
        if (i2 == -1) {
            i2 = 0;
        }
        int iJ = szVar.j();
        for (int i3 = i2; i3 < iJ; i3++) {
            cx cxVarJ2 = j(i3);
            if (cxVarJ2 == null) {
                break;
            }
            if (cxVarJ2.hp.hasFocusable()) {
                return cxVarJ2.hp;
            }
        }
        int iMin = Math.min(iJ, i2);
        do {
            iMin--;
            if (iMin < 0 || (cxVarJ = j(iMin)) == null) {
                return null;
            }
        } while (!cxVarJ.hp.hasFocusable());
        return cxVarJ.hp;
    }

    private void lv() {
        boolean z2;
        if (this.cx) {
            this.f19894a.hp();
        }
        if (dy()) {
            this.f19894a.l();
        } else {
            this.f19894a.w();
        }
        boolean z3 = this.ud || this.nu;
        this.hq.f19956e = this.ec && this.di != null && ((z2 = this.cx) || z3 || this.f19900k.zy) && (!z2 || this.zy.l());
        sz szVar = this.hq;
        szVar.gu = szVar.f19956e && z3 && !this.cx && dy();
    }

    private void ms() {
        this.hq.hp(1);
        hp(this.hq);
        this.hq.f19960q = false;
        w();
        this.f19906s.hp();
        jl();
        lv();
        r();
        sz szVar = this.hq;
        szVar.f19961s = szVar.f19956e && this.nu;
        this.nu = false;
        this.ud = false;
        szVar.eb = szVar.gu;
        szVar.f19964w = this.zy.hp();
        hp(this.f19896c);
        if (this.hq.f19956e) {
            int iL = this.eb.l();
            for (int i2 = 0; i2 < iL; i2++) {
                cx cxVarW = w(this.eb.l(i2));
                if (!cxVarW.R_() && (!cxVarW.k() || this.zy.l())) {
                    this.f19906s.hp(cxVarW, this.di.hp(this.hq, cxVarW, a.w(cxVarW), cxVarW.n()));
                    if (this.hq.f19961s && cxVarW.o() && !cxVarW.xs() && !cxVarW.R_() && !cxVarW.k()) {
                        this.f19906s.hp(hp(cxVarW), cxVarW);
                    }
                }
            }
        }
        if (this.hq.gu) {
            vv();
            sz szVar2 = this.hq;
            boolean z2 = szVar2.f19955a;
            szVar2.f19955a = false;
            this.f19900k.hp(this.f19910w, szVar2);
            this.hq.f19955a = z2;
            for (int i3 = 0; i3 < this.eb.l(); i3++) {
                cx cxVarW2 = w(this.eb.l(i3));
                if (!cxVarW2.R_() && !this.f19906s.j(cxVarW2)) {
                    int iW = a.w(cxVarW2);
                    boolean zHp = cxVarW2.hp(8192);
                    if (!zHp) {
                        iW |= 4096;
                    }
                    a.l lVarHp = this.di.hp(this.hq, cxVarW2, iW, cxVarW2.n());
                    if (zHp) {
                        hp(cxVarW2, lVarHp);
                    } else {
                        this.f19906s.l(cxVarW2, lVarHp);
                    }
                }
            }
            ec();
        } else {
            ec();
        }
        zy();
        hp(false);
        this.hq.f19957j = 2;
    }

    private void nu() {
        this.zx = 0;
    }

    private boolean o() {
        int iL = this.eb.l();
        for (int i2 = 0; i2 < iL; i2++) {
            cx cxVarW = w(this.eb.l(i2));
            if (cxVarW != null && !cxVarW.R_() && cxVarW.o()) {
                return true;
            }
        }
        return false;
    }

    private void pu() {
        sz szVar = this.hq;
        szVar.zy = -1L;
        szVar.jl = -1;
        szVar.f19958k = -1;
    }

    private void r() {
        View focusedChild = (this.df && hasFocus() && this.zy != null) ? getFocusedChild() : null;
        cx cxVarJ = focusedChild != null ? j(focusedChild) : null;
        if (cxVarJ == null) {
            pu();
            return;
        }
        this.hq.zy = this.zy.l() ? cxVarJ.eb() : -1L;
        this.hq.jl = this.cx ? -1 : cxVarJ.xs() ? cxVarJ.f19921j : cxVarJ.w();
        this.hq.f19958k = zy(cxVarJ.hp);
    }

    private void ud() {
        hq();
        setScrollState(0);
    }

    private void w(cx cxVar) {
        View view = cxVar.hp;
        boolean z2 = view.getParent() == this;
        this.f19910w.jx(l(view));
        if (cxVar.vv()) {
            this.eb.hp(view, -1, view.getLayoutParams(), true);
        } else if (z2) {
            this.eb.j(view);
        } else {
            this.eb.hp(view, true);
        }
    }

    private void wv() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.qu;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.qu.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.an;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.an.isFinished();
        }
        EdgeEffect edgeEffect3 = this.pc;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.pc.isFinished();
        }
        EdgeEffect edgeEffect4 = this.fi;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.fi.isFinished();
        }
        if (zIsFinished) {
            com.byazt.ln.eb.jx(this);
        }
    }

    private void xh() {
        View viewFindViewById;
        if (!this.df || this.zy == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!kg || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.eb.jx(focusedChild)) {
                    return;
                }
            } else if (this.eb.l() == 0) {
                requestFocus();
                return;
            }
        }
        View viewKy = null;
        cx cxVarHp = (this.hq.zy == -1 || !this.zy.l()) ? null : hp(this.hq.zy);
        if (cxVarHp != null && !this.eb.jx(cxVarHp.hp) && cxVarHp.hp.hasFocusable()) {
            viewKy = cxVarHp.hp;
        } else if (this.eb.l() > 0) {
            viewKy = ky();
        }
        if (viewKy != null) {
            int i2 = this.hq.f19958k;
            if (i2 != -1 && (viewFindViewById = viewKy.findViewById(i2)) != null && viewFindViewById.isFocusable()) {
                viewKy = viewFindViewById;
            }
            viewKy.requestFocus();
        }
    }

    public void a() {
        setScrollState(0);
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        q qVar = this.f19900k;
        if (qVar == null || !qVar.hp(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && this.f19900k.hp((e) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        q qVar = this.f19900k;
        if (qVar != null && qVar.jx()) {
            return this.f19900k.w(this.hq);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        q qVar = this.f19900k;
        if (qVar != null && qVar.jx()) {
            return this.f19900k.jx(this.hq);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        q qVar = this.f19900k;
        if (qVar != null && qVar.jx()) {
            return this.f19900k.eb(this.hq);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        q qVar = this.f19900k;
        if (qVar != null && qVar.j()) {
            return this.f19900k.a(this.hq);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        q qVar = this.f19900k;
        if (qVar != null && qVar.j()) {
            return this.f19900k.j(this.hq);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        q qVar = this.f19900k;
        if (qVar != null && qVar.j()) {
            return this.f19900k.s(this.hq);
        }
        return 0;
    }

    public void cx() {
        int i2;
        for (int size = this.pu.size() - 1; size >= 0; size--) {
            cx cxVar = this.pu.get(size);
            if (cxVar.hp.getParent() == this && !cxVar.R_() && (i2 = cxVar.f19927v) != -1) {
                com.byazt.ln.eb.hp(cxVar.hp, i2);
                cxVar.f19927v = -1;
            }
        }
        this.pu.clear();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().hp(f2, f3, z2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().hp(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().hp(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().hp(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        int size = this.f19908u.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.f19908u.get(i2);
        }
        EdgeEffect edgeEffect = this.qu;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f19904q ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.qu;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.an;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f19904q) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.an;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.pc;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f19904q ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.pc;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.fi;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f19904q) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.fi;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.di == null || this.f19908u.size() <= 0 || !this.di.l()) ? z2 : true) {
            com.byazt.ln.eb.jx(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void e() {
        if (this.fi == null) {
            EdgeEffect edgeEffectHp = this.rv.hp(this, 3);
            this.fi = edgeEffectHp;
            if (this.f19904q) {
                edgeEffectHp.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                edgeEffectHp.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void eb() {
        if (this.qu == null) {
            EdgeEffect edgeEffectHp = this.rv.hp(this, 0);
            this.qu = edgeEffectHp;
            if (this.f19904q) {
                edgeEffectHp.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                edgeEffectHp.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void ec() {
        int iJx = this.eb.jx();
        for (int i2 = 0; i2 < iJx; i2++) {
            cx cxVarW = w(this.eb.j(i2));
            if (!cxVarW.R_()) {
                cxVarW.hp();
            }
        }
        this.f19910w.q();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View viewHp;
        boolean z2;
        View viewJ = this.f19900k.j(view, i2);
        if (viewJ != null) {
            return viewJ;
        }
        boolean z3 = (this.zy == null || this.f19900k == null || k() || this.f19902n) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i2 == 2 || i2 == 1)) {
            if (this.f19900k.j()) {
                int i3 = i2 == 2 ? MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE : 33;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (as) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.f19900k.jx()) {
                int i4 = (this.f19900k.xs() == 1) ^ (i2 == 2) ? 66 : 17;
                boolean z4 = focusFinder.findNextFocus(this, view, i4) == null;
                if (as) {
                    i2 = i4;
                }
                z2 = z4;
            }
            if (z2) {
                j();
                if (jx(view) == null) {
                    return null;
                }
                w();
                this.f19900k.hp(view, i2, this.f19910w, this.hq);
                hp(false);
            }
            viewHp = focusFinder.findNextFocus(this, view, i2);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (viewFindNextFocus == null && z3) {
                j();
                if (jx(view) == null) {
                    return null;
                }
                w();
                viewHp = this.f19900k.hp(view, i2, this.f19910w, this.hq);
                hp(false);
            } else {
                viewHp = viewFindNextFocus;
            }
        }
        if (viewHp == null || viewHp.hasFocusable()) {
            return hp(view, viewHp, i2) ? viewHp : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        hp(viewHp, (View) null);
        return view;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        q qVar = this.f19900k;
        if (qVar != null) {
            return qVar.l();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + hp());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        q qVar = this.f19900k;
        if (qVar != null) {
            return qVar.hp(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + hp());
    }

    public hp getAdapter() {
        return this.zy;
    }

    @Override // android.view.View
    public int getBaseline() {
        q qVar = this.f19900k;
        return qVar != null ? qVar.vv() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        j jVar = this.lp;
        return jVar == null ? super.getChildDrawingOrder(i2, i3) : jVar.hp(i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f19904q;
    }

    public w getEdgeEffectFactory() {
        return this.rv;
    }

    public a getItemAnimator() {
        return this.di;
    }

    public int getItemDecorationCount() {
        return this.f19908u.size();
    }

    public q getLayoutManager() {
        return this.f19900k;
    }

    public int getMaxFlingVelocity() {
        return this.f19911x;
    }

    public int getMinFlingVelocity() {
        return this.f19907t;
    }

    public long getNanoTime() {
        if (f19891j) {
            return System.nanoTime();
        }
        return 0L;
    }

    public jl getOnFlingListener() {
        return this.qh;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.df;
    }

    public v getRecycledViewPool() {
        return this.f19910w.eb();
    }

    public int getScrollState() {
        return this.nr;
    }

    public void gu() {
        this.fi = null;
        this.an = null;
        this.pc = null;
        this.qu = null;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().l();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.xs;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().hp();
    }

    public void j() {
        if (this.ec && !this.cx) {
            if (!this.f19894a.j()) {
                return;
            }
            if (this.f19894a.hp(4) && !this.f19894a.hp(11)) {
                com.byazt.hx.hp.hp("RV PartialInvalidate");
                w();
                jl();
                this.f19894a.l();
                if (!this.sz) {
                    if (o()) {
                        u();
                    } else {
                        this.f19894a.jx();
                    }
                }
                hp(true);
                zy();
                com.byazt.hx.hp.hp();
                return;
            }
            if (!this.f19894a.j()) {
                return;
            }
        }
        com.byazt.hx.hp.hp("RV FullInvalidate");
        u();
        com.byazt.hx.hp.hp();
    }

    public void jl() {
        this.ea++;
    }

    public void jx() {
        a aVar = this.di;
        if (aVar != null) {
            aVar.j();
        }
        q qVar = this.f19900k;
        if (qVar != null) {
            qVar.jx(this.f19910w);
            this.f19900k.l(this.f19910w);
        }
        this.f19910w.hp();
    }

    public boolean k() {
        return this.ea > 0;
    }

    public void l() {
        this.f19894a = new com.byazt.fjm.hp(new hp.InterfaceC0227hp() { // from class: com.byazt.fjm.RecyclerView.5
            @Override // com.byazt.fjm.hp.InterfaceC0227hp
            public cx hp(int i2) {
                cx cxVarHp = RecyclerView.this.hp(i2, true);
                if (cxVarHp == null || RecyclerView.this.eb.jx(cxVarHp.hp)) {
                    return null;
                }
                return cxVarHp;
            }

            @Override // com.byazt.fjm.hp.InterfaceC0227hp
            public void j(int i2, int i3) {
                RecyclerView.this.a(i2, i3);
                RecyclerView.this.ud = true;
            }

            @Override // com.byazt.fjm.hp.InterfaceC0227hp
            public void jx(int i2, int i3) {
                RecyclerView.this.eb(i2, i3);
                RecyclerView.this.ud = true;
            }

            @Override // com.byazt.fjm.hp.InterfaceC0227hp
            public void l(int i2, int i3) {
                RecyclerView.this.hp(i2, i3, false);
                RecyclerView.this.ud = true;
            }

            @Override // com.byazt.fjm.hp.InterfaceC0227hp
            public void hp(int i2, int i3) {
                RecyclerView.this.hp(i2, i3, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.ud = true;
                recyclerView.hq.jx += i3;
            }

            @Override // com.byazt.fjm.hp.InterfaceC0227hp
            public void hp(int i2, int i3, Object obj) {
                RecyclerView.this.hp(i2, i3, obj);
                RecyclerView.this.nu = true;
            }
        });
    }

    public boolean n() {
        return !this.ec || this.cx || this.f19894a.j();
    }

    public void ns() {
        cx cxVar;
        int iL = this.eb.l();
        for (int i2 = 0; i2 < iL; i2++) {
            View viewL = this.eb.l(i2);
            cx cxVarL = l(viewL);
            if (cxVarL != null && (cxVar = cxVarL.f19924q) != null) {
                View view = cxVar.hp;
                int left = viewL.getLeft();
                int top = viewL.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.ea = r0
            r1 = 1
            r5.xs = r1
            boolean r2 = r5.ec
            if (r2 == 0) goto L14
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = r0
        L15:
            r5.ec = r1
            com.byazt.fjm.RecyclerView$q r1 = r5.f19900k
            if (r1 == 0) goto L1e
            r1.l(r5)
        L1e:
            r5.dy = r0
            boolean r0 = com.byazt.fjm.RecyclerView.f19891j
            if (r0 == 0) goto L61
            java.lang.ThreadLocal<com.byazt.fjm.j> r0 = com.byazt.fjm.j.hp
            java.lang.Object r1 = r0.get()
            com.byazt.fjm.j r1 = (com.byazt.fjm.j) r1
            r5.f19897d = r1
            if (r1 != 0) goto L5c
            com.byazt.fjm.j r1 = new com.byazt.fjm.j
            r1.<init>()
            r5.f19897d = r1
            android.view.Display r1 = com.byazt.ln.eb.eb(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L4e
            if (r1 == 0) goto L4e
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L4e
            goto L50
        L4e:
            r1 = 1114636288(0x42700000, float:60.0)
        L50:
            com.byazt.fjm.j r2 = r5.f19897d
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f19988j = r3
            r0.set(r2)
        L5c:
            com.byazt.fjm.j r0 = r5.f19897d
            r0.hp(r5)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        com.byazt.fjm.j jVar;
        super.onDetachedFromWindow();
        a aVar = this.di;
        if (aVar != null) {
            aVar.j();
        }
        a();
        this.xs = false;
        q qVar = this.f19900k;
        if (qVar != null) {
            qVar.l(this, this.f19910w);
        }
        this.pu.clear();
        removeCallbacks(this.xv);
        this.f19906s.l();
        if (!f19891j || (jVar = this.f19897d) == null) {
            return;
        }
        jVar.l(this);
        this.f19897d = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f19908u.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f19908u.get(i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            com.byazt.fjm.RecyclerView$q r0 = r5.f19900k
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.f19902n
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L76
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3e
            com.byazt.fjm.RecyclerView$q r0 = r5.f19900k
            boolean r0 = r0.j()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = r2
        L2d:
            com.byazt.fjm.RecyclerView$q r3 = r5.f19900k
            boolean r3 = r3.jx()
            if (r3 == 0) goto L3c
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L63
        L3c:
            r3 = r2
            goto L63
        L3e:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L61
            r0 = 26
            float r3 = r6.getAxisValue(r0)
            com.byazt.fjm.RecyclerView$q r0 = r5.f19900k
            boolean r0 = r0.j()
            if (r0 == 0) goto L57
            float r0 = -r3
            goto L3c
        L57:
            com.byazt.fjm.RecyclerView$q r0 = r5.f19900k
            boolean r0 = r0.jx()
            if (r0 == 0) goto L61
            r0 = r2
            goto L63
        L61:
            r0 = r2
            r3 = r0
        L63:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6b
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L76
        L6b:
            float r2 = r5.bu
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.zb
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.hp(r2, r0, r6)
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.f19902n) {
            return false;
        }
        if (hp(motionEvent)) {
            ud();
            return true;
        }
        q qVar = this.f19900k;
        if (qVar == null) {
            return false;
        }
        boolean zJx = qVar.jx();
        boolean zJ = this.f19900k.j();
        if (this.wt == null) {
            this.wt = VelocityTracker.obtain();
        }
        this.wt.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.hd) {
                this.hd = false;
            }
            this.rk = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.yj = x2;
            this.ru = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.tw = y2;
            this.gd = y2;
            if (this.nr == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.gb;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zJx;
            if (zJ) {
                i2 = (zJx ? 1 : 0) | 2;
            }
            q(i2, 0);
        } else if (actionMasked == 1) {
            this.wt.clear();
            s(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.rk);
            if (iFindPointerIndex < 0) {
                com.byazt.ymw.u.l("RecyclerView", "Error processing scroll; pointer index for id " + this.rk + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.nr != 1) {
                int i3 = x3 - this.ru;
                int i4 = y3 - this.gd;
                if (zJx == 0 || Math.abs(i3) <= this.jd) {
                    z2 = false;
                } else {
                    this.yj = x3;
                    z2 = true;
                }
                if (zJ && Math.abs(i4) > this.jd) {
                    this.tw = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            ud();
        } else if (actionMasked == 5) {
            this.rk = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.yj = x4;
            this.ru = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.tw = y4;
            this.gd = y4;
        } else if (actionMasked == 6) {
            jx(motionEvent);
        }
        return this.nr == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        com.byazt.hx.hp.hp("RV OnLayout");
        u();
        com.byazt.hx.hp.hp();
        this.ec = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        q qVar = this.f19900k;
        if (qVar == null) {
            w(i2, i3);
            return;
        }
        if (qVar.hp()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.f19900k.hp(this.f19910w, this.hq, i2, i3);
            if ((mode == 1073741824 && mode2 == 1073741824) || this.zy == null) {
                return;
            }
            if (this.hq.f19957j == 1) {
                ms();
            }
            this.f19900k.l(i2, i3);
            this.hq.f19960q = true;
            as();
            this.f19900k.jx(i2, i3);
            if (this.f19900k.q()) {
                this.f19900k.l(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), C.ENCODING_PCM_32BIT));
                this.hq.f19960q = true;
                as();
                this.f19900k.jx(i2, i3);
                return;
            }
            return;
        }
        if (this.vv) {
            this.f19900k.hp(this.f19910w, this.hq, i2, i3);
            return;
        }
        if (this.ns) {
            w();
            jl();
            lv();
            zy();
            sz szVar = this.hq;
            if (szVar.gu) {
                szVar.eb = true;
            } else {
                this.f19894a.w();
                this.hq.eb = false;
            }
            this.ns = false;
            hp(false);
        } else if (this.hq.gu) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        hp hpVar = this.zy;
        if (hpVar != null) {
            this.hq.f19964w = hpVar.hp();
        } else {
            this.hq.f19964w = 0;
        }
        w();
        this.f19900k.hp(this.f19910w, this.hq, i2, i3);
        hp(false);
        this.hq.eb = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (k()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        gu();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0102  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void q() {
        if (this.an == null) {
            EdgeEffect edgeEffectHp = this.rv.hp(this, 1);
            this.an = edgeEffectHp;
            if (this.f19904q) {
                edgeEffectHp.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                edgeEffectHp.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z2) {
        cx cxVarW = w(view);
        if (cxVarW != null) {
            if (cxVarW.vv()) {
                cxVarW.zy();
            } else if (!cxVarW.R_()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + cxVarW + hp());
            }
        }
        view.clearAnimation();
        gu(view);
        super.removeDetachedView(view, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f19900k.hp(this, this.hq, view, view2) && view2 != null) {
            hp(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.f19900k.hp(this, view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.yr.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.yr.get(i2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.nd != 0 || this.f19902n) {
            this.sz = true;
        } else {
            super.requestLayout();
        }
    }

    public void s() {
        if (this.pc == null) {
            EdgeEffect edgeEffectHp = this.rv.hp(this, 2);
            this.pc = edgeEffectHp;
            if (this.f19904q) {
                edgeEffectHp.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                edgeEffectHp.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        q qVar = this.f19900k;
        if (qVar == null) {
            com.byazt.ymw.u.l("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f19902n) {
            return;
        }
        boolean zJx = qVar.jx();
        boolean zJ = this.f19900k.j();
        if (zJx || zJ) {
            if (!zJx) {
                i2 = 0;
            }
            if (!zJ) {
                i3 = 0;
            }
            hp(i2, i3, (MotionEvent) null);
        }
    }

    public void setAdapter(hp hpVar) {
        setLayoutFrozen(false);
        hp(hpVar, false, true);
        jx(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(j jVar) {
        if (jVar != this.lp) {
            this.lp = jVar;
            setChildrenDrawingOrderEnabled(jVar != null);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.f19904q) {
            gu();
        }
        this.f19904q = z2;
        super.setClipToPadding(z2);
        if (this.ec) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(w wVar) {
        hp(wVar);
        this.rv = wVar;
        gu();
    }

    public void setHasFixedSize(boolean z2) {
        this.vv = z2;
    }

    public void setItemAnimator(a aVar) {
        a aVar2 = this.di;
        if (aVar2 != null) {
            aVar2.j();
            this.di.hp(null);
        }
        this.di = aVar;
        if (aVar != null) {
            aVar.hp(this.ed);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.f19910w.hp(i2);
    }

    public void setLayoutFrozen(boolean z2) {
        if (z2 != this.f19902n) {
            hp("Do not setLayoutFrozen in layout or scroll");
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f19902n = true;
                this.hd = true;
                a();
                return;
            }
            this.f19902n = false;
            if (this.sz && this.f19900k != null && this.zy != null) {
                requestLayout();
            }
            this.sz = false;
        }
    }

    public void setLayoutManager(q qVar) {
        if (qVar != this.f19900k) {
            a();
            if (this.f19900k != null) {
                a aVar = this.di;
                if (aVar != null) {
                    aVar.j();
                }
                this.f19900k.jx(this.f19910w);
                this.f19900k.l(this.f19910w);
                this.f19910w.hp();
                if (this.xs) {
                    this.f19900k.l(this, this.f19910w);
                }
                this.f19900k.hp((RecyclerView) null);
                this.f19900k = null;
            } else {
                this.f19910w.hp();
            }
            this.eb.hp();
            this.f19900k = qVar;
            if (qVar != null) {
                if (qVar.f19950q != null) {
                    throw new IllegalArgumentException("LayoutManager " + qVar + " is already attached to a RecyclerView:" + qVar.f19950q.hp());
                }
                qVar.hp(this);
                if (this.xs) {
                    this.f19900k.l(this);
                }
            }
            this.f19910w.l();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().hp(z2);
    }

    public void setOnFlingListener(jl jlVar) {
        this.qh = jlVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.df = z2;
    }

    public void setRecycledViewPool(v vVar) {
        this.f19910w.hp(vVar);
    }

    public void setRecyclerListener(xs xsVar) {
        this.f19909v = xsVar;
    }

    public void setScrollState(int i2) {
        if (i2 != this.nr) {
            this.nr = i2;
            if (i2 != 2) {
                d();
            }
            eb(i2);
        }
    }

    public void setViewCacheExtension(n nVar) {
        this.f19910w.hp(nVar);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().l(i2);
    }

    @Override // android.view.View, com.byazt.ln.l
    public void stopNestedScroll() {
        getScrollingChildHelper().jx();
    }

    public void sz() {
        int iJx = this.eb.jx();
        for (int i2 = 0; i2 < iJx; i2++) {
            cx cxVarW = w(this.eb.j(i2));
            if (cxVarW != null && !cxVarW.R_()) {
                cxVarW.l(6);
            }
        }
        xs();
        this.f19910w.s();
    }

    public void u() {
        if (this.zy == null) {
            com.byazt.ymw.u.l("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f19900k == null) {
            com.byazt.ymw.u.l("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        sz szVar = this.hq;
        szVar.f19960q = false;
        if (szVar.f19957j != 1) {
            if (!this.f19894a.a() && this.f19900k.ns() == getWidth() && this.f19900k.cx() == getHeight()) {
                this.f19900k.j(this);
            }
            kg();
        }
        ms();
        this.f19900k.j(this);
        as();
        kg();
    }

    public void v() {
        if (this.dy || !this.xs) {
            return;
        }
        com.byazt.ln.eb.hp(this, this.xv);
        this.dy = true;
    }

    public void vv() {
        int iJx = this.eb.jx();
        for (int i2 = 0; i2 < iJx; i2++) {
            cx cxVarW = w(this.eb.j(i2));
            if (!cxVarW.R_()) {
                cxVarW.l();
            }
        }
    }

    public void xs() {
        int iJx = this.eb.jx();
        for (int i2 = 0; i2 < iJx; i2++) {
            ((e) this.eb.j(i2).getLayoutParams()).jx = true;
        }
        this.f19910w.e();
    }

    public void zy() {
        l(true);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2379})
    public static abstract class cx {
        public static final List<Object> xs = Collections.EMPTY_LIST;

        /* renamed from: e, reason: collision with root package name */
        public int f19920e;
        public final View hp;

        /* renamed from: l, reason: collision with root package name */
        public WeakReference<RecyclerView> f19923l;

        /* renamed from: u, reason: collision with root package name */
        public RecyclerView f19926u;
        public int jx = -1;

        /* renamed from: j, reason: collision with root package name */
        public int f19921j = -1;

        /* renamed from: w, reason: collision with root package name */
        public long f19928w = -1;

        /* renamed from: a, reason: collision with root package name */
        public int f19919a = -1;
        public int eb = -1;

        /* renamed from: s, reason: collision with root package name */
        public cx f19925s = null;

        /* renamed from: q, reason: collision with root package name */
        public cx f19924q = null;
        public List<Object> gu = null;
        public List<Object> jl = null;
        public int vv = 0;
        public u zy = null;

        /* renamed from: k, reason: collision with root package name */
        public boolean f19922k = false;
        public int ec = 0;

        /* renamed from: v, reason: collision with root package name */
        public int f19927v = -1;

        public cx(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.hp = view;
        }

        private void d() {
            if (this.gu == null) {
                ArrayList arrayList = new ArrayList();
                this.gu = arrayList;
                this.jl = Collections.unmodifiableList(arrayList);
            }
        }

        public boolean R_() {
            return (this.f19920e & 128) != 0;
        }

        public final int a() {
            return this.f19921j;
        }

        public boolean b() {
            return (this.f19920e & 16) != 0;
        }

        public final boolean cx() {
            return (this.f19920e & 16) == 0 && !com.byazt.ln.eb.a(this.hp);
        }

        public boolean di() {
            return (this.f19920e & 16) == 0 && com.byazt.ln.eb.a(this.hp);
        }

        public void e() {
            this.zy.jx(this);
        }

        public final long eb() {
            return this.f19928w;
        }

        public boolean ec() {
            return (this.f19920e & 512) != 0 || k();
        }

        public boolean gu() {
            return (this.f19920e & 32) != 0;
        }

        public void hp(int i2, int i3, boolean z2) {
            l(8);
            hp(i3, z2);
            this.jx = i2;
        }

        public final int j() {
            int i2 = this.eb;
            return i2 == -1 ? this.jx : i2;
        }

        public void jl() {
            this.f19920e &= -33;
        }

        public boolean k() {
            return (this.f19920e & 4) != 0;
        }

        public void l() {
            if (this.f19921j == -1) {
                this.f19921j = this.jx;
            }
        }

        public List<Object> n() {
            if ((this.f19920e & 1024) != 0) {
                return xs;
            }
            List<Object> list = this.gu;
            return (list == null || list.size() == 0) ? xs : this.jl;
        }

        public void ns() {
            this.f19920e = 0;
            this.jx = -1;
            this.f19921j = -1;
            this.f19928w = -1L;
            this.eb = -1;
            this.vv = 0;
            this.f19925s = null;
            this.f19924q = null;
            sz();
            this.ec = 0;
            this.f19927v = -1;
            RecyclerView.jx(this);
        }

        public boolean o() {
            return (this.f19920e & 2) != 0;
        }

        public boolean q() {
            return this.zy != null;
        }

        public final int s() {
            return this.f19919a;
        }

        public void sz() {
            List<Object> list = this.gu;
            if (list != null) {
                list.clear();
            }
            this.f19920e &= -1025;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.jx + " id=" + this.f19928w + ", oldPos=" + this.f19921j + ", pLpos:" + this.eb);
            if (q()) {
                sb.append(" scrap ");
                sb.append(this.f19922k ? "[changeScrap]" : "[attachedScrap]");
            }
            if (k()) {
                sb.append(" invalid");
            }
            if (!u()) {
                sb.append(" unbound");
            }
            if (v()) {
                sb.append(" update");
            }
            if (xs()) {
                sb.append(" removed");
            }
            if (R_()) {
                sb.append(" ignored");
            }
            if (vv()) {
                sb.append(" tmpDetached");
            }
            if (!cx()) {
                sb.append(" not recyclable(" + this.vv + ")");
            }
            if (ec()) {
                sb.append(" undefined adapter position");
            }
            if (this.hp.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public boolean u() {
            return (this.f19920e & 1) != 0;
        }

        public boolean v() {
            return (this.f19920e & 2) != 0;
        }

        public boolean vv() {
            return (this.f19920e & 256) != 0;
        }

        public final int w() {
            RecyclerView recyclerView = this.f19926u;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.j(this);
        }

        public boolean xs() {
            return (this.f19920e & 8) != 0;
        }

        public void zy() {
            this.f19920e &= -257;
        }

        public void l(int i2) {
            this.f19920e = i2 | this.f19920e;
        }

        public void hp(int i2, boolean z2) {
            if (this.f19921j == -1) {
                this.f19921j = this.jx;
            }
            if (this.eb == -1) {
                this.eb = this.jx;
            }
            if (z2) {
                this.eb += i2;
            }
            this.jx += i2;
            if (this.hp.getLayoutParams() != null) {
                ((e) this.hp.getLayoutParams()).jx = true;
            }
        }

        public void l(RecyclerView recyclerView) {
            recyclerView.hp(this, this.ec);
            this.ec = 0;
        }

        public void hp() {
            this.f19921j = -1;
            this.eb = -1;
        }

        public void hp(u uVar, boolean z2) {
            this.zy = uVar;
            this.f19922k = z2;
        }

        public boolean hp(int i2) {
            return (i2 & this.f19920e) != 0;
        }

        public void hp(int i2, int i3) {
            this.f19920e = (i2 & i3) | (this.f19920e & (~i3));
        }

        public void hp(Object obj) {
            if (obj == null) {
                l(1024);
            } else if ((1024 & this.f19920e) == 0) {
                d();
                this.gu.add(obj);
            }
        }

        public void hp(RecyclerView recyclerView) {
            int i2 = this.f19927v;
            if (i2 != -1) {
                this.ec = i2;
            } else {
                this.ec = com.byazt.ln.eb.l(this.hp);
            }
            recyclerView.hp(this, 4);
        }

        public final void hp(boolean z2) {
            int i2 = this.vv;
            int i3 = z2 ? i2 - 1 : i2 + 1;
            this.vv = i3;
            if (i3 < 0) {
                this.vv = 0;
                com.byazt.ymw.u.l("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z2 && i3 == 1) {
                this.f19920e |= 16;
            } else if (z2 && i3 == 0) {
                this.f19920e &= -17;
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1194})
    public static class l extends Observable<jx> {
        public void hp() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((jx) ((Observable) this).mObservers.get(size)).hp();
            }
        }

        public void hp(int i2, int i3) {
            hp(i2, i3, null);
        }

        public void hp(int i2, int i3, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((jx) ((Observable) this).mObservers.get(size)).hp(i2, i3, obj);
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2493})
    public static class sz {
        public int jl;

        /* renamed from: k, reason: collision with root package name */
        public int f19958k;

        /* renamed from: u, reason: collision with root package name */
        public int f19962u;

        /* renamed from: v, reason: collision with root package name */
        public int f19963v;
        public SparseArray<Object> xs;
        public long zy;
        public int hp = -1;

        /* renamed from: l, reason: collision with root package name */
        public int f19959l = 0;
        public int jx = 0;

        /* renamed from: j, reason: collision with root package name */
        public int f19957j = 1;

        /* renamed from: w, reason: collision with root package name */
        public int f19964w = 0;

        /* renamed from: a, reason: collision with root package name */
        public boolean f19955a = false;
        public boolean eb = false;

        /* renamed from: s, reason: collision with root package name */
        public boolean f19961s = false;

        /* renamed from: q, reason: collision with root package name */
        public boolean f19960q = false;

        /* renamed from: e, reason: collision with root package name */
        public boolean f19956e = false;
        public boolean gu = false;

        public void hp(int i2) {
            if ((this.f19957j & i2) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f19957j));
        }

        public int j() {
            return this.eb ? this.f19959l - this.jx : this.f19964w;
        }

        public boolean jx() {
            return this.hp != -1;
        }

        public boolean l() {
            return this.gu;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.hp + ", mData=" + this.xs + ", mItemCount=" + this.f19964w + ", mIsMeasuring=" + this.f19960q + ", mPreviousLayoutItemCount=" + this.f19959l + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.jx + ", mStructureChanged=" + this.f19955a + ", mInPreLayout=" + this.eb + ", mRunSimpleAnimations=" + this.f19956e + ", mRunPredictiveAnimations=" + this.gu + '}';
        }

        public void hp(hp hpVar) {
            this.f19957j = 1;
            this.f19964w = hpVar.hp();
            this.eb = false;
            this.f19961s = false;
            this.f19960q = false;
        }

        public boolean hp() {
            return this.eb;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1202})
    public static class v {
        public SparseArray<hp> hp = new SparseArray<>();

        /* renamed from: l, reason: collision with root package name */
        public int f19971l = 0;

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2108})
        public static class hp {
            public final ArrayList<cx> hp = new ArrayList<>();

            /* renamed from: l, reason: collision with root package name */
            public int f19973l = 5;
            public long jx = 0;

            /* renamed from: j, reason: collision with root package name */
            public long f19972j = 0;
        }

        public void hp() {
            for (int i2 = 0; i2 < this.hp.size(); i2++) {
                this.hp.valueAt(i2).hp.clear();
            }
        }

        public void jx() {
            this.f19971l--;
        }

        public void l(int i2, long j2) {
            hp hpVarL = l(i2);
            hpVarL.f19972j = hp(hpVarL.f19972j, j2);
        }

        public boolean l(int i2, long j2, long j3) {
            long j4 = l(i2).f19972j;
            return j4 == 0 || j2 + j4 < j3;
        }

        public cx hp(int i2) {
            hp hpVar = this.hp.get(i2);
            if (hpVar == null || hpVar.hp.isEmpty()) {
                return null;
            }
            return hpVar.hp.remove(r2.size() - 1);
        }

        public void l() {
            this.f19971l++;
        }

        private hp l(int i2) {
            hp hpVar = this.hp.get(i2);
            if (hpVar != null) {
                return hpVar;
            }
            hp hpVar2 = new hp();
            this.hp.put(i2, hpVar2);
            return hpVar2;
        }

        public void hp(cx cxVar) {
            int iS = cxVar.s();
            ArrayList<cx> arrayList = l(iS).hp;
            if (this.hp.get(iS).f19973l > arrayList.size()) {
                cxVar.ns();
                arrayList.add(cxVar);
            }
        }

        public long hp(long j2, long j3) {
            return j2 == 0 ? j3 : ((j2 / 4) * 3) + (j3 / 4);
        }

        public void hp(int i2, long j2) {
            hp hpVarL = l(i2);
            hpVarL.jx = hp(hpVarL.jx, j2);
        }

        public boolean hp(int i2, long j2, long j3) {
            long j4 = l(i2).jx;
            return j4 == 0 || j2 + j4 < j3;
        }

        public void hp(hp hpVar, hp hpVar2, boolean z2) {
            if (hpVar != null) {
                jx();
            }
            if (!z2 && this.f19971l == 0) {
                hp();
            }
            if (hpVar2 != null) {
                l();
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int zy(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    public void gu(View view) {
        w(view);
        List<gu> list = this.vq;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.vq.get(size).l(view);
            }
        }
    }

    public void jl(View view) {
        w(view);
        List<gu> list = this.vq;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.vq.get(size).hp(view);
            }
        }
    }

    public void l(k kVar) {
        List<k> list = this.pi;
        if (list != null) {
            list.remove(kVar);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2380})
    public static abstract class ec {

        /* renamed from: a, reason: collision with root package name */
        public View f19931a;

        /* renamed from: j, reason: collision with root package name */
        public boolean f19932j;
        public q jx;

        /* renamed from: l, reason: collision with root package name */
        public RecyclerView f19933l;

        /* renamed from: s, reason: collision with root package name */
        public boolean f19934s;

        /* renamed from: w, reason: collision with root package name */
        public boolean f19935w;
        public int hp = -1;
        public final hp eb = new hp(0, 0);

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2304})
        public static class hp {

            /* renamed from: a, reason: collision with root package name */
            public boolean f19936a;
            public int eb;
            public int hp;

            /* renamed from: j, reason: collision with root package name */
            public int f19937j;
            public int jx;

            /* renamed from: l, reason: collision with root package name */
            public int f19938l;

            /* renamed from: w, reason: collision with root package name */
            public Interpolator f19939w;

            public hp(int i2, int i3) {
                this(i2, i3, Integer.MIN_VALUE, null);
            }

            private void l() {
                if (this.f19939w != null && this.jx <= 0) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.jx <= 0) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void hp(int i2) {
                this.f19937j = i2;
            }

            public void update(int i2, int i3, int i4, Interpolator interpolator) {
                this.hp = i2;
                this.f19938l = i3;
                this.jx = i4;
                this.f19939w = interpolator;
                this.f19936a = true;
            }

            public hp(int i2, int i3, int i4, Interpolator interpolator) {
                this.f19937j = -1;
                this.f19936a = false;
                this.eb = 0;
                this.hp = i2;
                this.f19938l = i3;
                this.jx = i4;
                this.f19939w = interpolator;
            }

            public boolean hp() {
                return this.f19937j >= 0;
            }

            public void hp(RecyclerView recyclerView) {
                int i2 = this.f19937j;
                if (i2 >= 0) {
                    this.f19937j = -1;
                    recyclerView.hp(i2);
                    this.f19936a = false;
                    return;
                }
                if (this.f19936a) {
                    l();
                    Interpolator interpolator = this.f19939w;
                    if (interpolator == null) {
                        int i3 = this.jx;
                        if (i3 == Integer.MIN_VALUE) {
                            recyclerView.f19903o.l(this.hp, this.f19938l);
                        } else {
                            recyclerView.f19903o.hp(this.hp, this.f19938l, i3);
                        }
                    } else {
                        recyclerView.f19903o.hp(this.hp, this.f19938l, this.jx, interpolator);
                    }
                    int i4 = this.eb + 1;
                    this.eb = i4;
                    if (i4 > 10) {
                        com.byazt.ymw.u.l("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f19936a = false;
                    return;
                }
                this.eb = 0;
            }
        }

        public interface l {
            PointF jx(int i2);
        }

        public boolean a() {
            return this.f19932j;
        }

        public boolean eb() {
            return this.f19935w;
        }

        public abstract void hp();

        public abstract void hp(int i2, int i3, sz szVar, hp hpVar);

        public abstract void hp(View view, sz szVar, hp hpVar);

        public void hp(RecyclerView recyclerView, q qVar) {
            this.f19933l = recyclerView;
            this.jx = qVar;
            int i2 = this.hp;
            if (i2 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.hq.hp = i2;
            this.f19935w = true;
            this.f19932j = true;
            this.f19931a = w(s());
            this.f19933l.f19903o.hp();
            this.f19934s = true;
        }

        public PointF j(int i2) {
            Object objJ = j();
            if (objJ instanceof l) {
                return ((l) objJ).jx(i2);
            }
            return null;
        }

        public void jx(int i2) {
            this.hp = i2;
        }

        public void l(View view) {
            if (hp(view) == s()) {
                this.f19931a = view;
            }
        }

        public int q() {
            return this.f19933l.f19900k.ec();
        }

        public int s() {
            return this.hp;
        }

        public final void w() {
            if (this.f19935w) {
                this.f19935w = false;
                hp();
                this.f19933l.hq.hp = -1;
                this.f19931a = null;
                this.hp = -1;
                this.f19932j = false;
                this.jx.l(this);
                this.jx = null;
                this.f19933l = null;
            }
        }

        public q j() {
            return this.jx;
        }

        public void hp(int i2, int i3) {
            PointF pointFJ;
            RecyclerView recyclerView = this.f19933l;
            if (!this.f19935w || this.hp == -1 || recyclerView == null) {
                w();
            }
            if (this.f19932j && this.f19931a == null && this.jx != null && (pointFJ = j(this.hp)) != null) {
                float f2 = pointFJ.x;
                if (f2 != 0.0f || pointFJ.y != 0.0f) {
                    recyclerView.hp((int) Math.signum(f2), (int) Math.signum(pointFJ.y), (int[]) null);
                }
            }
            this.f19932j = false;
            View view = this.f19931a;
            if (view != null) {
                if (hp(view) == this.hp) {
                    hp(this.f19931a, recyclerView.hq, this.eb);
                    this.eb.hp(recyclerView);
                    w();
                } else {
                    com.byazt.ymw.u.l("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f19931a = null;
                }
            }
            if (this.f19935w) {
                hp(i2, i3, recyclerView.hq, this.eb);
                boolean zHp = this.eb.hp();
                this.eb.hp(recyclerView);
                if (zHp) {
                    if (this.f19935w) {
                        this.f19932j = true;
                        recyclerView.f19903o.hp();
                    } else {
                        w();
                    }
                }
            }
        }

        public View w(int i2) {
            return this.f19933l.f19900k.l(i2);
        }

        public int hp(View view) {
            return this.f19933l.s(view);
        }

        public void hp(PointF pointF) {
            float f2 = pointF.x;
            float f3 = pointF.y;
            float fSqrt = (float) Math.sqrt((f2 * f2) + (f3 * f3));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f19901m = new vv();
        this.f19910w = new u();
        this.f19906s = new com.byazt.fjm.k();
        this.f19898e = new Runnable() { // from class: com.byazt.fjm.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (!recyclerView.ec || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.xs) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.f19902n) {
                    recyclerView2.sz = true;
                } else {
                    recyclerView2.j();
                }
            }
        };
        this.gu = new Rect();
        this.f19899f = new Rect();
        this.jl = new RectF();
        this.f19908u = new ArrayList<>();
        this.yr = new ArrayList<>();
        this.nd = 0;
        this.cx = false;
        this.f19895b = false;
        this.ea = 0;
        this.su = 0;
        this.rv = new w();
        this.di = new com.byazt.fjm.jx();
        this.nr = 0;
        this.rk = -1;
        this.bu = Float.MIN_VALUE;
        this.zb = Float.MIN_VALUE;
        this.df = true;
        this.f19903o = new ns();
        this.wv = f19891j ? new j.hp() : null;
        this.hq = new sz();
        this.ud = false;
        this.nu = false;
        this.ed = new eb();
        this.dy = false;
        this.f19896c = new int[2];
        this.ov = new int[2];
        this.lv = new int[2];
        this.gb = new int[2];
        this.f19905r = new int[2];
        this.pu = new ArrayList();
        this.xv = new Runnable() { // from class: com.byazt.fjm.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                a aVar = RecyclerView.this.di;
                if (aVar != null) {
                    aVar.hp();
                }
                RecyclerView.this.dy = false;
            }
        };
        this.pg = new k.l() { // from class: com.byazt.fjm.RecyclerView.3
            @Override // com.byazt.fjm.k.l
            public void hp(cx cxVar, a.l lVar, a.l lVar2) {
                RecyclerView.this.f19910w.jx(cxVar);
                RecyclerView.this.l(cxVar, lVar, lVar2);
            }

            @Override // com.byazt.fjm.k.l
            public void jx(cx cxVar, a.l lVar, a.l lVar2) {
                cxVar.hp(false);
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.cx) {
                    if (recyclerView.di.hp(cxVar, cxVar, lVar, lVar2)) {
                        RecyclerView.this.v();
                    }
                } else if (recyclerView.di.jx(cxVar, lVar, lVar2)) {
                    RecyclerView.this.v();
                }
            }

            @Override // com.byazt.fjm.k.l
            public void l(cx cxVar, a.l lVar, a.l lVar2) {
                RecyclerView.this.hp(cxVar, lVar, lVar2);
            }

            @Override // com.byazt.fjm.k.l
            public void hp(cx cxVar) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f19900k.hp(cxVar.hp, recyclerView.f19910w);
            }
        };
        if (attributeSet != null) {
            try {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f19893ms, i2, 0);
                this.f19904q = typedArrayObtainStyledAttributes.getBoolean(0, true);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Exception unused) {
            }
        } else {
            this.f19904q = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.jd = viewConfiguration.getScaledTouchSlop();
        this.bu = com.byazt.ln.eb.hp(viewConfiguration, context);
        this.zb = com.byazt.ln.eb.l(viewConfiguration, context);
        this.f19907t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f19911x = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.di.hp(this.ed);
        l();
        di();
        b();
        if (com.byazt.ln.eb.l(this) == 0) {
            com.byazt.ln.eb.hp(this, 1);
        }
        this.f19912y = (AccessibilityManager) getContext().getSystemService("accessibility");
        try {
            if (attributeSet != null) {
                setDescendantFocusability(262144);
            } else {
                setDescendantFocusability(262144);
            }
        } catch (Throwable unused2) {
        }
        setNestedScrollingEnabled(true);
    }

    public void a(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int iJx = this.eb.jx();
        if (i2 < i3) {
            i6 = -1;
            i5 = i2;
            i4 = i3;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i8 = 0; i8 < iJx; i8++) {
            cx cxVarW = w(this.eb.j(i8));
            if (cxVarW != null && (i7 = cxVarW.jx) >= i5 && i7 <= i4) {
                if (i7 == i2) {
                    cxVarW.hp(i3 - i2, false);
                } else {
                    cxVarW.hp(i6, false);
                }
                this.hq.f19955a = true;
            }
        }
        this.f19910w.hp(i2, i3);
        requestLayout();
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 1197})
    public static class e extends ViewGroup.MarginLayoutParams {
        public cx hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f19929j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public final Rect f19930l;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19930l = new Rect();
            this.jx = true;
            this.f19929j = false;
        }

        public boolean hp() {
            return this.hp.k();
        }

        public int j() {
            return this.hp.j();
        }

        public boolean jx() {
            return this.hp.o();
        }

        public boolean l() {
            return this.hp.xs();
        }

        public e(int i2, int i3) {
            super(i2, i3);
            this.f19930l = new Rect();
            this.jx = true;
            this.f19929j = false;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19930l = new Rect();
            this.jx = true;
            this.f19929j = false;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19930l = new Rect();
            this.jx = true;
            this.f19929j = false;
        }

        public e(e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
            this.f19930l = new Rect();
            this.jx = true;
            this.f19929j = false;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        q qVar = this.f19900k;
        if (qVar != null) {
            return qVar.hp(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + hp());
    }

    public void l(int i2) {
        if (this.f19902n) {
            return;
        }
        q qVar = this.f19900k;
        if (qVar == null) {
            com.byazt.ymw.u.l("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            qVar.hp(this, this.hq, i2);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 2503})
    public class vv extends jx {
        public vv() {
        }

        @Override // com.byazt.fjm.RecyclerView.jx
        public void hp() {
            RecyclerView.this.hp((String) null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.hq.f19955a = true;
            recyclerView.jx(true);
            if (RecyclerView.this.f19894a.j()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        public void l() {
            if (RecyclerView.jx) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.vv && recyclerView.xs) {
                    com.byazt.ln.eb.hp(recyclerView, recyclerView.f19898e);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.ns = true;
            recyclerView2.requestLayout();
        }

        @Override // com.byazt.fjm.RecyclerView.jx
        public void hp(int i2, int i3, Object obj) {
            RecyclerView.this.hp((String) null);
            if (RecyclerView.this.f19894a.hp(i2, i3, obj)) {
                l();
            }
        }
    }

    public String hp() {
        return " " + super.toString() + ", adapter:" + this.zy + ", layout:" + this.f19900k + ", context:" + getContext();
    }

    private boolean e(int i2, int i3) {
        hp(this.f19896c);
        int[] iArr = this.f19896c;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    private void hp(hp hpVar, boolean z2, boolean z3) {
        hp hpVar2 = this.zy;
        if (hpVar2 != null) {
            hpVar2.l(this.f19901m);
        }
        if (!z2 || z3) {
            jx();
        }
        this.f19894a.hp();
        hp hpVar3 = this.zy;
        this.zy = hpVar;
        if (hpVar != null) {
            hpVar.hp(this.f19901m);
        }
        this.f19910w.hp(hpVar3, this.zy, z2);
        this.hq.f19955a = true;
    }

    public void eb(int i2, int i3) {
        int iJx = this.eb.jx();
        for (int i4 = 0; i4 < iJx; i4++) {
            cx cxVarW = w(this.eb.j(i4));
            if (cxVarW != null && !cxVarW.R_() && cxVarW.jx >= i2) {
                cxVarW.hp(i3, false);
                this.hq.f19955a = true;
            }
        }
        this.f19910w.l(i2, i3);
        requestLayout();
    }

    public Rect q(View view) {
        e eVar = (e) view.getLayoutParams();
        if (!eVar.jx) {
            return eVar.f19930l;
        }
        if (this.hq.hp() && (eVar.jx() || eVar.hp())) {
            return eVar.f19930l;
        }
        Rect rect = eVar.f19930l;
        rect.set(0, 0, 0, 0);
        int size = this.f19908u.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.gu.set(0, 0, 0, 0);
            this.f19908u.get(i2).hp(this.gu, view, this, this.hq);
            int i3 = rect.left;
            Rect rect2 = this.gu;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        eVar.jx = false;
        return rect;
    }

    public int s(View view) {
        cx cxVarW = w(view);
        if (cxVarW != null) {
            return cxVarW.j();
        }
        return -1;
    }

    public void jx(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.qu;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.qu.onRelease();
            zIsFinished = this.qu.isFinished();
        }
        EdgeEffect edgeEffect2 = this.pc;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.pc.onRelease();
            zIsFinished |= this.pc.isFinished();
        }
        EdgeEffect edgeEffect3 = this.an;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.an.onRelease();
            zIsFinished |= this.an.isFinished();
        }
        EdgeEffect edgeEffect4 = this.fi;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.fi.onRelease();
            zIsFinished |= this.fi.isFinished();
        }
        if (zIsFinished) {
            com.byazt.ln.eb.jx(this);
        }
    }

    public static RecyclerView e(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewE = e(viewGroup.getChildAt(i2));
            if (recyclerViewE != null) {
                return recyclerViewE;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean l(int i2, int i3) {
        q qVar = this.f19900k;
        if (qVar == null) {
            com.byazt.ymw.u.l("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.f19902n) {
            return false;
        }
        int iJx = qVar.jx();
        boolean zJ = this.f19900k.j();
        if (iJx == 0 || Math.abs(i2) < this.f19907t) {
            i2 = 0;
        }
        if (!zJ || Math.abs(i3) < this.f19907t) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z2 = iJx != 0 || zJ;
            dispatchNestedFling(f2, f3, z2);
            jl jlVar = this.qh;
            if (jlVar != null && jlVar.hp(i2, i3)) {
                return true;
            }
            if (z2) {
                if (zJ) {
                    iJx = (iJx == true ? 1 : 0) | 2;
                }
                q(iJx, 1);
                int i4 = this.f19911x;
                int iMax = Math.max(-i4, Math.min(i2, i4));
                int i5 = this.f19911x;
                this.f19903o.hp(iMax, Math.max(-i5, Math.min(i3, i5)));
                return true;
            }
        }
        return false;
    }

    public void s(int i2, int i3) {
        this.su++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        k kVar = this.ux;
        if (kVar != null) {
            kVar.hp(this, i2, i3);
        }
        List<k> list = this.pi;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.pi.get(size).hp(this, i2, i3);
            }
        }
        this.su--;
    }

    public void w() {
        int i2 = this.nd + 1;
        this.nd = i2;
        if (i2 != 1 || this.f19902n) {
            return;
        }
        this.sz = false;
    }

    @Deprecated
    public int a(View view) {
        return eb(view);
    }

    public void w(int i2, int i3) {
        setMeasuredDimension(q.hp(i2, getPaddingLeft() + getPaddingRight(), com.byazt.ln.eb.j(this)), q.hp(i3, getPaddingTop() + getPaddingBottom(), com.byazt.ln.eb.w(this)));
    }

    public void a(int i2) {
        int iL = this.eb.l();
        for (int i3 = 0; i3 < iL; i3++) {
            this.eb.l(i3).offsetLeftAndRight(i2);
        }
    }

    public int eb(View view) {
        cx cxVarW = w(view);
        if (cxVarW != null) {
            return cxVarW.w();
        }
        return -1;
    }

    public static cx w(View view) {
        if (view == null) {
            return null;
        }
        return ((e) view.getLayoutParams()).hp;
    }

    public void eb(int i2) {
        q qVar = this.f19900k;
        if (qVar != null) {
            qVar.gu(i2);
        }
        k kVar = this.ux;
        if (kVar != null) {
            kVar.hp(this, i2);
        }
        List<k> list = this.pi;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.pi.get(size).hp(this, i2);
            }
        }
    }

    public void hp(gu guVar) {
        if (this.vq == null) {
            this.vq = new ArrayList();
        }
        this.vq.add(guVar);
    }

    public void w(int i2) {
        int iL = this.eb.l();
        for (int i3 = 0; i3 < iL; i3++) {
            this.eb.l(i3).offsetTopAndBottom(i2);
        }
    }

    public boolean hp(View view) {
        w();
        boolean zA = this.eb.a(view);
        if (zA) {
            cx cxVarW = w(view);
            this.f19910w.jx(cxVarW);
            this.f19910w.l(cxVarW);
        }
        hp(!zA);
        return zA;
    }

    public void s(int i2) {
        getScrollingChildHelper().jx(i2);
    }

    public void j(int i2, int i3) {
        if (i2 < 0) {
            eb();
            this.qu.onAbsorb(-i2);
        } else if (i2 > 0) {
            s();
            this.pc.onAbsorb(i2);
        }
        if (i3 < 0) {
            q();
            this.an.onAbsorb(-i3);
        } else if (i3 > 0) {
            e();
            this.fi.onAbsorb(i3);
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        com.byazt.ln.eb.jx(this);
    }

    private void jx(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.rk) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.rk = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.yj = x2;
            this.ru = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.tw = y2;
            this.gd = y2;
        }
    }

    public boolean q(int i2, int i3) {
        return getScrollingChildHelper().hp(i2, i3);
    }

    private boolean l(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.rz != null) {
            if (action != 0) {
                if (action == 3 || action == 1) {
                    this.rz = null;
                }
                return true;
            }
            this.rz = null;
        }
        if (action != 0) {
            int size = this.yr.size();
            for (int i2 = 0; i2 < size; i2++) {
                zy zyVar = this.yr.get(i2);
                if (zyVar.hp(this, motionEvent)) {
                    this.rz = zyVar;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean q(int i2) {
        return getScrollingChildHelper().hp(i2);
    }

    public void hp(s sVar, int i2) {
        q qVar = this.f19900k;
        if (qVar != null) {
            qVar.hp("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f19908u.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.f19908u.add(sVar);
        } else {
            this.f19908u.add(i2, sVar);
        }
        xs();
        requestLayout();
    }

    public void jx(boolean z2) {
        this.f19895b = z2 | this.f19895b;
        this.cx = true;
        sz();
    }

    public cx j(View view) {
        View viewJx = jx(view);
        if (viewJx == null) {
            return null;
        }
        return l(viewJx);
    }

    public View jx(View view) {
        Object parent;
        while (true) {
            parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public cx j(int i2) {
        cx cxVar = null;
        if (this.cx) {
            return null;
        }
        int iJx = this.eb.jx();
        for (int i3 = 0; i3 < iJx; i3++) {
            cx cxVarW = w(this.eb.j(i3));
            if (cxVarW != null && !cxVarW.xs() && j(cxVarW) == i2) {
                if (!this.eb.jx(cxVarW.hp)) {
                    return cxVarW;
                }
                cxVar = cxVarW;
            }
        }
        return cxVar;
    }

    public cx jx(int i2) {
        return hp(i2, false);
    }

    public void l(boolean z2) {
        int i2 = this.ea - 1;
        this.ea = i2;
        if (i2 <= 0) {
            this.ea = 0;
            if (z2) {
                nu();
                cx();
            }
        }
    }

    public static void jx(cx cxVar) {
        WeakReference<RecyclerView> weakReference = cxVar.f19923l;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == cxVar.hp) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            cxVar.f19923l = null;
        }
    }

    public void hp(s sVar) {
        hp(sVar, -1);
    }

    public void hp(k kVar) {
        if (this.pi == null) {
            this.pi = new ArrayList();
        }
        this.pi.add(kVar);
    }

    public void l(cx cxVar, a.l lVar, a.l lVar2) {
        w(cxVar);
        cxVar.hp(false);
        if (this.di.hp(cxVar, lVar, lVar2)) {
            v();
        }
    }

    public int j(cx cxVar) {
        if (cxVar.hp(524) || !cxVar.u()) {
            return -1;
        }
        return this.f19894a.jx(cxVar.jx);
    }

    public void hp(int i2) {
        q qVar = this.f19900k;
        if (qVar != null) {
            qVar.j(i2);
            awakenScrollBars();
        }
    }

    public boolean l(cx cxVar) {
        a aVar = this.di;
        return aVar == null || aVar.hp(cxVar, cxVar.n());
    }

    public void hp(int i2, int i3, int[] iArr) {
        w();
        jl();
        com.byazt.hx.hp.hp("RV Scroll");
        hp(this.hq);
        int iHp = i2 != 0 ? this.f19900k.hp(i2, this.f19910w, this.hq) : 0;
        int iL = i3 != 0 ? this.f19900k.l(i3, this.f19910w, this.hq) : 0;
        com.byazt.hx.hp.hp();
        ns();
        zy();
        hp(false);
        if (iArr != null) {
            iArr[0] = iHp;
            iArr[1] = iL;
        }
    }

    public cx l(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return w(view);
    }

    public boolean hp(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        j();
        if (this.zy != null) {
            hp(i2, i3, this.f19905r);
            int[] iArr = this.f19905r;
            int i8 = iArr[0];
            int i9 = iArr[1];
            i6 = i2 - i8;
            i7 = i3 - i9;
            i5 = i9;
            i4 = i8;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.f19908u.isEmpty()) {
            invalidate();
        }
        if (hp(i4, i5, i6, i7, this.ov, 0)) {
            int i10 = this.yj;
            int[] iArr2 = this.ov;
            int i11 = iArr2[0];
            this.yj = i10 - i11;
            int i12 = this.tw;
            int i13 = iArr2[1];
            this.tw = i12 - i13;
            if (motionEvent != null) {
                motionEvent.offsetLocation(i11, i13);
            }
            int[] iArr3 = this.gb;
            int i14 = iArr3[0];
            int[] iArr4 = this.ov;
            iArr3[0] = i14 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !com.byazt.ln.eb.hp(motionEvent, 8194)) {
                hp(motionEvent.getX(), i6, motionEvent.getY(), i7);
            }
            jx(i2, i3);
        }
        if (i4 != 0 || i5 != 0) {
            s(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i4 == 0 && i5 == 0) ? false : true;
    }

    public void hp(boolean z2) {
        if (this.nd <= 0) {
            this.nd = 1;
        }
        if (!z2 && !this.f19902n) {
            this.sz = false;
        }
        if (this.nd == 1) {
            if (z2 && this.sz && !this.f19902n && this.f19900k != null && this.zy != null) {
                u();
            }
            if (!this.f19902n) {
                this.sz = false;
            }
        }
        this.nd--;
    }

    public void hp(int i2, int i3) {
        hp(i2, i3, (Interpolator) null);
    }

    public void hp(int i2, int i3, Interpolator interpolator) {
        q qVar = this.f19900k;
        if (qVar == null) {
            com.byazt.ymw.u.l("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f19902n) {
            return;
        }
        if (!qVar.jx()) {
            i2 = 0;
        }
        if (!this.f19900k.j()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        this.f19903o.hp(i2, i3, interpolator);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 1
            if (r1 >= 0) goto L21
            r6.eb()
            android.widget.EdgeEffect r1 = r6.qu
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r2 - r9
            com.byazt.ln.hp.hp(r1, r4, r9)
        L1f:
            r9 = r3
            goto L3c
        L21:
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r1 <= 0) goto L3b
            r6.s()
            android.widget.EdgeEffect r1 = r6.pc
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            com.byazt.ln.hp.hp(r1, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L56
            r6.q()
            android.widget.EdgeEffect r9 = r6.an
            float r1 = -r10
            int r2 = r6.getHeight()
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r6.getWidth()
            float r2 = (float) r2
            float r7 = r7 / r2
            com.byazt.ln.hp.hp(r9, r1, r7)
            goto L72
        L56:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 <= 0) goto L71
            r6.e()
            android.widget.EdgeEffect r9 = r6.fi
            int r1 = r6.getHeight()
            float r1 = (float) r1
            float r1 = r10 / r1
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r2 = r2 - r7
            com.byazt.ln.hp.hp(r9, r1, r2)
            goto L72
        L71:
            r3 = r9
        L72:
            if (r3 != 0) goto L7e
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 != 0) goto L7e
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r7 == 0) goto L7d
            goto L7e
        L7d:
            return
        L7e:
            com.byazt.ln.eb.jx(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.hp(float, float, float, float):void");
    }

    public static <T> T hp(T t2) {
        t2.getClass();
        return t2;
    }

    private boolean hp(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || jx(view2) == null) {
            return false;
        }
        if (view == null || jx(view) == null) {
            return true;
        }
        this.gu.set(0, 0, view.getWidth(), view.getHeight());
        this.f19899f.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.gu);
        offsetDescendantRectToMyCoords(view2, this.f19899f);
        char c2 = 65535;
        int i4 = this.f19900k.xs() == 1 ? -1 : 1;
        Rect rect = this.gu;
        int i5 = rect.left;
        Rect rect2 = this.f19899f;
        int i6 = rect2.left;
        if ((i5 < i6 || rect.right <= i6) && rect.right < rect2.right) {
            i3 = 1;
        } else {
            int i7 = rect.right;
            int i8 = rect2.right;
            i3 = ((i7 > i8 || i5 >= i8) && i5 > i6) ? -1 : 0;
        }
        int i9 = rect.top;
        int i10 = rect2.top;
        if ((i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom) {
            c2 = 1;
        } else {
            int i11 = rect.bottom;
            int i12 = rect2.bottom;
            if ((i11 <= i12 && i9 < i12) || i9 <= i10) {
                c2 = 0;
            }
        }
        if (i2 == 1) {
            return c2 < 0 || (c2 == 0 && i3 * i4 <= 0);
        }
        if (i2 == 2) {
            return c2 > 0 || (c2 == 0 && i3 * i4 >= 0);
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return c2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return c2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i2 + hp());
    }

    private void hp(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.gu.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof e) {
            e eVar = (e) layoutParams;
            if (!eVar.jx) {
                Rect rect = eVar.f19930l;
                Rect rect2 = this.gu;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.gu);
            offsetRectIntoDescendantCoords(view, this.gu);
        }
        this.f19900k.hp(this, view, this.gu, !this.ec, view2 == null);
    }

    public void hp(String str) {
        if (k()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + hp());
            }
            throw new IllegalStateException(str);
        }
        if (this.su > 0) {
            new IllegalStateException(hp());
        }
    }

    private boolean hp(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.rz = null;
        }
        int size = this.yr.size();
        for (int i2 = 0; i2 < size; i2++) {
            zy zyVar = this.yr.get(i2);
            if (zyVar.hp(this, motionEvent) && action != 3) {
                this.rz = zyVar;
                return true;
            }
        }
        return false;
    }

    public final void hp(sz szVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.f19903o.hp;
            szVar.f19963v = overScroller.getFinalX() - overScroller.getCurrX();
            szVar.f19962u = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            szVar.f19963v = 0;
            szVar.f19962u = 0;
        }
    }

    private void hp(long j2, cx cxVar, cx cxVar2) {
        int iL = this.eb.l();
        for (int i2 = 0; i2 < iL; i2++) {
            cx cxVarW = w(this.eb.l(i2));
            if (cxVarW != cxVar && hp(cxVarW) == j2) {
                hp hpVar = this.zy;
                if (hpVar != null && hpVar.l()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + cxVarW + " \n View Holder 2:" + cxVar + hp());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + cxVarW + " \n View Holder 2:" + cxVar + hp());
            }
        }
        com.byazt.ymw.u.l("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + cxVar2 + " cannot be found but it is necessary for " + cxVar + hp());
    }

    public void hp(cx cxVar, a.l lVar) {
        cxVar.hp(0, 8192);
        if (this.hq.f19961s && cxVar.o() && !cxVar.xs() && !cxVar.R_()) {
            this.f19906s.hp(hp(cxVar), cxVar);
        }
        this.f19906s.hp(cxVar, lVar);
    }

    private void hp(int[] iArr) {
        int iL = this.eb.l();
        if (iL == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iL; i4++) {
            cx cxVarW = w(this.eb.l(i4));
            if (!cxVarW.R_()) {
                int iJ = cxVarW.j();
                if (iJ < i2) {
                    i2 = iJ;
                }
                if (iJ > i3) {
                    i3 = iJ;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public long hp(cx cxVar) {
        return this.zy.l() ? cxVar.eb() : cxVar.jx;
    }

    public void hp(cx cxVar, a.l lVar, a.l lVar2) {
        cxVar.hp(false);
        if (this.di.l(cxVar, lVar, lVar2)) {
            v();
        }
    }

    private void hp(cx cxVar, cx cxVar2, a.l lVar, a.l lVar2, boolean z2, boolean z3) {
        cxVar.hp(false);
        if (z2) {
            w(cxVar);
        }
        if (cxVar != cxVar2) {
            if (z3) {
                w(cxVar2);
            }
            cxVar.f19925s = cxVar2;
            w(cxVar);
            this.f19910w.jx(cxVar);
            cxVar2.hp(false);
            cxVar2.f19924q = cxVar;
        }
        if (this.di.hp(cxVar, cxVar2, lVar, lVar2)) {
            v();
        }
    }

    public void hp(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int iJx = this.eb.jx();
        for (int i5 = 0; i5 < iJx; i5++) {
            cx cxVarW = w(this.eb.j(i5));
            if (cxVarW != null && !cxVarW.R_()) {
                int i6 = cxVarW.jx;
                if (i6 >= i4) {
                    cxVarW.hp(-i3, z2);
                    this.hq.f19955a = true;
                } else if (i6 >= i2) {
                    cxVarW.hp(i2 - 1, -i3, z2);
                    this.hq.f19955a = true;
                }
            }
        }
        this.f19910w.hp(i2, i3, z2);
        requestLayout();
    }

    public void hp(int i2, int i3, Object obj) {
        int i4;
        int iJx = this.eb.jx();
        int i5 = i2 + i3;
        for (int i6 = 0; i6 < iJx; i6++) {
            View viewJ = this.eb.j(i6);
            cx cxVarW = w(viewJ);
            if (cxVarW != null && !cxVarW.R_() && (i4 = cxVarW.jx) >= i2 && i4 < i5) {
                cxVarW.l(2);
                cxVarW.hp(obj);
                ((e) viewJ.getLayoutParams()).jx = true;
            }
        }
        this.f19910w.jx(i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.fjm.RecyclerView.cx hp(int r6, boolean r7) {
        /*
            r5 = this;
            com.byazt.fjm.l r0 = r5.eb
            int r0 = r0.jx()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L38
            com.byazt.fjm.l r3 = r5.eb
            android.view.View r3 = r3.j(r2)
            com.byazt.fjm.RecyclerView$cx r3 = w(r3)
            if (r3 == 0) goto L35
            boolean r4 = r3.xs()
            if (r4 != 0) goto L35
            if (r7 == 0) goto L23
            int r4 = r3.jx
            if (r4 == r6) goto L29
            goto L35
        L23:
            int r4 = r3.j()
            if (r4 != r6) goto L35
        L29:
            com.byazt.fjm.l r1 = r5.eb
            android.view.View r4 = r3.hp
            boolean r1 = r1.jx(r4)
            if (r1 != 0) goto L34
            return r3
        L34:
            r1 = r3
        L35:
            int r2 = r2 + 1
            goto L8
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.RecyclerView.hp(int, boolean):com.byazt.fjm.RecyclerView$cx");
    }

    public cx hp(long j2) {
        hp hpVar = this.zy;
        cx cxVar = null;
        if (hpVar != null && hpVar.l()) {
            int iJx = this.eb.jx();
            for (int i2 = 0; i2 < iJx; i2++) {
                cx cxVarW = w(this.eb.j(i2));
                if (cxVarW != null && !cxVarW.xs() && cxVarW.eb() == j2) {
                    if (!this.eb.jx(cxVarW.hp)) {
                        return cxVarW;
                    }
                    cxVar = cxVarW;
                }
            }
        }
        return cxVar;
    }

    public static void hp(View view, Rect rect) {
        e eVar = (e) view.getLayoutParams();
        Rect rect2 = eVar.f19930l;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) eVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) eVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) eVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
    }

    public boolean hp(cx cxVar, int i2) {
        if (k()) {
            cxVar.f19927v = i2;
            this.pu.add(cxVar);
            return false;
        }
        com.byazt.ln.eb.hp(cxVar.hp, i2);
        return true;
    }

    public boolean hp(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().hp(i2, i3, i4, i5, iArr, i6);
    }

    public boolean hp(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().hp(i2, i3, iArr, iArr2, i4);
    }
}
