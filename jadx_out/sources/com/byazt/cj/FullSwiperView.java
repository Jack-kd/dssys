package com.byazt.cj;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.am.j;
import com.byazt.cj.FullSwiperItemView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.hm.BaseSwiper;
import com.byazt.xci.hq;
import com.byazt.xci.lv;
import com.byazt.xci.mp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 407, 761})
/* loaded from: classes2.dex */
public class FullSwiperView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public String f18877a;

    /* renamed from: e, reason: collision with root package name */
    public List<Long> f18878e;
    public boolean eb;
    public List<FullSwiperItemView> gu;
    public BaseSwiper<ViewGroup> hp;

    /* renamed from: j, reason: collision with root package name */
    public float f18879j;
    public int jl;
    public TTBaseVideoActivity jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18880k;

    /* renamed from: l, reason: collision with root package name */
    public List<hp> f18881l;

    /* renamed from: q, reason: collision with root package name */
    public List<Integer> f18882q;

    /* renamed from: s, reason: collision with root package name */
    public List<Integer> f18883s;

    /* renamed from: v, reason: collision with root package name */
    public AtomicBoolean f18884v;

    /* renamed from: w, reason: collision with root package name */
    public float f18885w;
    public boolean zy;

    public FullSwiperView(TTBaseVideoActivity tTBaseVideoActivity) {
        super(tTBaseVideoActivity);
        this.eb = false;
        this.zy = true;
        this.f18880k = true;
        this.f18884v = new AtomicBoolean(false);
        this.jx = tTBaseVideoActivity;
        this.f18883s = new ArrayList();
        this.f18882q = new ArrayList();
        this.f18878e = new ArrayList();
        this.hp = new SwiperView(tTBaseVideoActivity);
        this.gu = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.hp, layoutParams);
    }

    public int getCurrentPosition() {
        return this.jl;
    }

    public void a() {
        BaseSwiper<ViewGroup> baseSwiper = this.hp;
        if (baseSwiper != null) {
            baseSwiper.eb();
        }
    }

    public void eb() throws Resources.NotFoundException {
        BaseSwiper<ViewGroup> baseSwiper = this.hp;
        if (baseSwiper != null) {
            baseSwiper.k(this.jl + 1);
        }
    }

    public void j() {
        a();
    }

    public void w() {
        for (FullSwiperItemView fullSwiperItemView : this.gu) {
            if (fullSwiperItemView != null) {
                fullSwiperItemView.vv();
            }
        }
    }

    public void jx() throws Resources.NotFoundException {
        FullSwiperItemView fullSwiperItemViewJx = jx(this.jl);
        if (fullSwiperItemViewJx != null) {
            fullSwiperItemViewJx.u();
        }
        if (this.jl == this.gu.size() - 1) {
            return;
        }
        this.hp.k(this.jl);
        List<Integer> list = this.f18882q;
        if (list == null || this.jl >= list.size()) {
            return;
        }
        if (!this.zy && (!this.f18884v.get() || lv.k() == 1)) {
            hp(this.f18882q.get(this.jl).intValue());
        }
        this.zy = false;
    }

    public FullSwiperView hp(List<hp> list) {
        this.f18881l = list;
        return this;
    }

    public FullSwiperView l(float f2) {
        this.f18885w = f2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        FullSwiperItemView fullSwiperItemViewJx = jx(i2);
        if (fullSwiperItemViewJx != null) {
            fullSwiperItemViewJx.zy();
        }
    }

    public FullSwiperView hp(float f2) {
        this.f18879j = f2;
        return this;
    }

    public FullSwiperView hp(String str) {
        this.f18877a = str;
        return this;
    }

    public void hp() {
        hq hqVarWg;
        List<hp> list = this.f18881l;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.hp.hp(false).hp("dot").j(false).jx(false).l(false);
        this.hp.setOnPageChangeListener(new com.byazt.hm.hp() { // from class: com.byazt.cj.FullSwiperView.1
            @Override // com.byazt.hm.hp
            public void hp(boolean z2, int i2) {
            }

            @Override // com.byazt.hm.hp
            public void hp(boolean z2, int i2, float f2, int i3) {
            }

            @Override // com.byazt.hm.hp
            public void hp(boolean z2, int i2, int i3, boolean z3, boolean z4) throws JSONException {
                if (FullSwiperView.this.f18880k && i2 == 1) {
                    return;
                }
                FullSwiperView.this.f18880k = false;
                FullSwiperView.this.jl = i2;
                FullSwiperItemView fullSwiperItemViewJx = FullSwiperView.this.jx(i2);
                if (fullSwiperItemViewJx != null && FullSwiperView.this.jl != 0) {
                    fullSwiperItemViewJx.l(false);
                }
                FullSwiperItemView fullSwiperItemViewJx2 = FullSwiperView.this.jx(i2 - 1);
                if (fullSwiperItemViewJx2 != null) {
                    fullSwiperItemViewJx2.v();
                    fullSwiperItemViewJx2.xs();
                }
                FullSwiperView.this.l(i2 + 1);
                if (!FullSwiperView.this.eb && i2 > 0) {
                    FullSwiperView.this.eb = true;
                    j.l(FullSwiperView.this.f18877a);
                }
                int iIntValue = ((Integer) FullSwiperView.this.f18883s.get(i2)).intValue();
                if (iIntValue > 0 && i2 != FullSwiperView.this.gu.size() - 1) {
                    FullSwiperView.this.f18878e.add(i2, Long.valueOf(System.currentTimeMillis()));
                    int i4 = iIntValue / 1000;
                    int iMin = Math.min(lv.l(false), i4);
                    int iMax = Math.max(i4 - lv.l(false), 0);
                    if (iMin > 0) {
                        FullSwiperView.this.f18884v.set(false);
                        FullSwiperView.this.jx.hp(-1, iMin, iMax);
                    } else {
                        if (lv.k() != 1) {
                            if (FullSwiperView.this.f18884v.get()) {
                                return;
                            }
                            FullSwiperView.this.hp(iIntValue);
                            return;
                        }
                        FullSwiperView.this.hp(iIntValue);
                    }
                }
            }
        });
        for (hp hpVar : this.f18881l) {
            mp mpVarHp = hpVar.hp();
            if (mpVarHp != null && (hqVarWg = mpVarHp.wg()) != null) {
                this.f18883s.add(Integer.valueOf((int) hqVarWg.l()));
                this.f18882q.add(0);
                this.f18878e.add(Long.valueOf(System.currentTimeMillis()));
                FullSwiperItemView fullSwiperItemView = new FullSwiperItemView(this.jx, hpVar, this.f18879j, this.f18885w);
                fullSwiperItemView.setOnSwiperItemInteractListener(new FullSwiperItemView.hp() { // from class: com.byazt.cj.FullSwiperView.2
                    @Override // com.byazt.cj.FullSwiperItemView.hp
                    public void hp() {
                        if (lv.k() == 0) {
                            FullSwiperView.this.a();
                            FullSwiperView.this.jx.an();
                        }
                        FullSwiperView.this.f18884v.set(true);
                    }
                });
                this.hp.hp((BaseSwiper<ViewGroup>) fullSwiperItemView);
                this.gu.add(fullSwiperItemView);
            }
        }
        final FullSwiperItemView fullSwiperItemView2 = this.gu.get(0);
        fullSwiperItemView2.setOnSwiperItemRenderResultListener(new FullSwiperItemView.l() { // from class: com.byazt.cj.FullSwiperView.3
            @Override // com.byazt.cj.FullSwiperItemView.l
            public void hp(View view, float f2, float f3) throws JSONException, Resources.NotFoundException {
                int iIntValue = ((Integer) FullSwiperView.this.f18883s.get(0)).intValue();
                if (iIntValue <= 0) {
                    FullSwiperView.this.hp.a();
                } else {
                    FullSwiperView.this.f18878e.add(0, Long.valueOf(System.currentTimeMillis()));
                    FullSwiperView.this.hp.a();
                    if (FullSwiperView.this.gu.size() > 1) {
                        int i2 = iIntValue / 1000;
                        int iMin = Math.min(lv.l(false), i2);
                        int iMax = Math.max(i2 - lv.l(false), 0);
                        if (iMin > 0) {
                            FullSwiperView.this.jx.hp(-1, iMin, iMax);
                        } else {
                            FullSwiperView.this.hp(iIntValue);
                        }
                    }
                }
                fullSwiperItemView2.l(true);
                FullSwiperView.this.l(1);
            }
        });
        fullSwiperItemView2.zy();
    }

    public void l() {
        FullSwiperItemView fullSwiperItemViewJx = jx(this.jl);
        if (fullSwiperItemViewJx != null) {
            fullSwiperItemViewJx.v();
        }
        List<Long> list = this.f18878e;
        if (list != null && this.jl < list.size()) {
            this.f18882q.add(this.jl, Integer.valueOf(this.f18883s.get(this.jl).intValue() - ((int) (System.currentTimeMillis() - this.f18878e.get(this.jl).longValue()))));
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FullSwiperItemView jx(int i2) {
        List<FullSwiperItemView> list = this.gu;
        if (list == null || i2 < 0 || i2 >= list.size()) {
            return null;
        }
        return this.gu.get(i2);
    }

    public void hp(int i2) {
        BaseSwiper<ViewGroup> baseSwiper;
        if (Math.min(lv.l(false), i2 / 1000) <= 0 && (baseSwiper = this.hp) != null) {
            baseSwiper.v(i2);
        }
    }
}
