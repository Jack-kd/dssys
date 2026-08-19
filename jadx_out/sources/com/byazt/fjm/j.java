package com.byazt.fjm;

import androidx.core.location.LocationRequestCompat;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 38})
/* loaded from: classes2.dex */
public final class j implements Runnable {
    public static final ThreadLocal<j> hp = new ThreadLocal<>();

    /* renamed from: w, reason: collision with root package name */
    public static Comparator<l> f19986w = new Comparator<l>() { // from class: com.byazt.fjm.j.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(l lVar, l lVar2) {
            RecyclerView recyclerView = lVar.f19992j;
            if ((recyclerView == null) != (lVar2.f19992j == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z2 = lVar.hp;
            if (z2 != lVar2.hp) {
                return z2 ? -1 : 1;
            }
            int i2 = lVar2.f19993l - lVar.f19993l;
            if (i2 != 0) {
                return i2;
            }
            int i3 = lVar.jx - lVar2.jx;
            if (i3 != 0) {
                return i3;
            }
            return 0;
        }
    };

    /* renamed from: j, reason: collision with root package name */
    public long f19988j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public ArrayList<RecyclerView> f19989l = new ArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<l> f19987a = new ArrayList<>();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l {
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public RecyclerView f19992j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f19993l;

        /* renamed from: w, reason: collision with root package name */
        public int f19994w;

        public void hp() {
            this.hp = false;
            this.f19993l = 0;
            this.jx = 0;
            this.f19992j = null;
            this.f19994w = 0;
        }
    }

    public void hp(RecyclerView recyclerView) {
        this.f19989l.add(recyclerView);
    }

    public void l(RecyclerView recyclerView) {
        this.f19989l.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.byazt.hx.hp.hp("RV Prefetch");
            if (!this.f19989l.isEmpty()) {
                int size = this.f19989l.size();
                long jMax = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = this.f19989l.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    hp(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f19988j);
                }
            }
        } finally {
            this.jx = 0L;
            com.byazt.hx.hp.hp();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp implements RecyclerView.q.hp {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f19990j;
        public int[] jx;

        /* renamed from: l, reason: collision with root package name */
        public int f19991l;

        public void hp(int i2, int i3) {
            this.hp = i2;
            this.f19991l = i3;
        }

        @Override // com.byazt.fjm.RecyclerView.q.hp
        public void l(int i2, int i3) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i3 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i4 = this.f19990j;
            int i5 = i4 * 2;
            int[] iArr = this.jx;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.jx = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i5 >= iArr.length) {
                int[] iArr3 = new int[i4 * 4];
                this.jx = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.jx;
            iArr4[i5] = i2;
            iArr4[i5 + 1] = i3;
            this.f19990j++;
        }

        public void hp(RecyclerView recyclerView, boolean z2) {
            this.f19990j = 0;
            int[] iArr = this.jx;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.q qVar = recyclerView.f19900k;
            if (recyclerView.zy == null || qVar == null || !qVar.k()) {
                return;
            }
            if (z2) {
                if (!recyclerView.f19894a.j()) {
                    qVar.hp(recyclerView.zy.hp(), this);
                }
            } else if (!recyclerView.n()) {
                qVar.hp(this.hp, this.f19991l, recyclerView.hq, this);
            }
            int i2 = this.f19990j;
            if (i2 > qVar.f19952u) {
                qVar.f19952u = i2;
                qVar.xs = z2;
                recyclerView.f19910w.l();
            }
        }

        public boolean hp(int i2) {
            if (this.jx != null) {
                int i3 = this.f19990j * 2;
                for (int i4 = 0; i4 < i3; i4 += 2) {
                    if (this.jx[i4] == i2) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void hp() {
            int[] iArr = this.jx;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f19990j = 0;
        }
    }

    private void l(long j2) {
        for (int i2 = 0; i2 < this.f19987a.size(); i2++) {
            l lVar = this.f19987a.get(i2);
            if (lVar.f19992j == null) {
                return;
            }
            hp(lVar, j2);
            lVar.hp();
        }
    }

    public void hp(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow() && this.jx == 0) {
            this.jx = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.wv.hp(i2, i3);
    }

    private void hp() {
        l lVar;
        int size = this.f19989l.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView = this.f19989l.get(i3);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.wv.hp(recyclerView, false);
                i2 += recyclerView.wv.f19990j;
            }
        }
        this.f19987a.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.f19989l.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                hp hpVar = recyclerView2.wv;
                int iAbs = Math.abs(hpVar.hp) + Math.abs(hpVar.f19991l);
                for (int i6 = 0; i6 < hpVar.f19990j * 2; i6 += 2) {
                    if (i4 >= this.f19987a.size()) {
                        lVar = new l();
                        this.f19987a.add(lVar);
                    } else {
                        lVar = this.f19987a.get(i4);
                    }
                    int[] iArr = hpVar.jx;
                    int i7 = iArr[i6 + 1];
                    lVar.hp = i7 <= iAbs;
                    lVar.f19993l = iAbs;
                    lVar.jx = i7;
                    lVar.f19992j = recyclerView2;
                    lVar.f19994w = iArr[i6];
                    i4++;
                }
            }
        }
        Collections.sort(this.f19987a, f19986w);
    }

    public static boolean hp(RecyclerView recyclerView, int i2) {
        int iJx = recyclerView.eb.jx();
        for (int i3 = 0; i3 < iJx; i3++) {
            RecyclerView.cx cxVarW = RecyclerView.w(recyclerView.eb.j(i3));
            if (cxVarW.jx == i2 && !cxVarW.k()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.cx hp(RecyclerView recyclerView, int i2, long j2) {
        if (hp(recyclerView, i2)) {
            return null;
        }
        RecyclerView.u uVar = recyclerView.f19910w;
        try {
            recyclerView.jl();
            RecyclerView.cx cxVarHp = uVar.hp(i2, false, j2);
            if (cxVarHp != null) {
                if (cxVarHp.u() && !cxVarHp.k()) {
                    uVar.hp(cxVarHp.hp);
                } else {
                    uVar.hp(cxVarHp, false);
                }
            }
            recyclerView.l(false);
            return cxVarHp;
        } catch (Throwable th) {
            recyclerView.l(false);
            throw th;
        }
    }

    private void hp(RecyclerView recyclerView, long j2) {
        if (recyclerView != null) {
            if (recyclerView.cx && recyclerView.eb.jx() != 0) {
                recyclerView.jx();
            }
            hp hpVar = recyclerView.wv;
            hpVar.hp(recyclerView, true);
            if (hpVar.f19990j != 0) {
                try {
                    com.byazt.hx.hp.hp("RV Nested Prefetch");
                    recyclerView.hq.hp(recyclerView.zy);
                    for (int i2 = 0; i2 < hpVar.f19990j * 2; i2 += 2) {
                        hp(recyclerView, hpVar.jx[i2], j2);
                    }
                } finally {
                    com.byazt.hx.hp.hp();
                }
            }
        }
    }

    private void hp(l lVar, long j2) {
        RecyclerView.cx cxVarHp = hp(lVar.f19992j, lVar.f19994w, lVar.hp ? LocationRequestCompat.PASSIVE_INTERVAL : j2);
        if (cxVarHp == null || cxVarHp.f19923l == null || !cxVarHp.u() || cxVarHp.k()) {
            return;
        }
        hp(cxVarHp.f19923l.get(), j2);
    }

    public void hp(long j2) {
        hp();
        l(j2);
    }
}
