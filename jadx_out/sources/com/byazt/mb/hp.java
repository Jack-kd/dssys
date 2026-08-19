package com.byazt.mb;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, 28})
/* loaded from: classes3.dex */
public class hp implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public static int f22871a = 2;
    public static int hp = 1;

    /* renamed from: j, reason: collision with root package name */
    public static int f22872j = 0;
    public static int jx = 3;

    /* renamed from: l, reason: collision with root package name */
    public static int f22873l = 2;

    /* renamed from: u, reason: collision with root package name */
    public static long f22874u = 0;

    /* renamed from: v, reason: collision with root package name */
    public static long f22875v = 0;

    /* renamed from: w, reason: collision with root package name */
    public static int f22876w = 1;
    public static int xs;

    /* renamed from: e, reason: collision with root package name */
    public long f22877e;
    public long eb;
    public long gu;
    public long jl;

    /* renamed from: k, reason: collision with root package name */
    public long f22878k;

    /* renamed from: q, reason: collision with root package name */
    public long f22879q;

    /* renamed from: s, reason: collision with root package name */
    public long f22880s;
    public int zy;

    public static long a() {
        long jS = jx.jx().s();
        long jCurrentTimeMillis = System.currentTimeMillis() - jS;
        if (jx.jx().q() > jS) {
            return 0L;
        }
        return jS == 0 ? System.currentTimeMillis() - jx.jx().hp() : jCurrentTimeMillis;
    }

    public static long eb() {
        long jQ = jx.jx().q();
        if (jx.jx().s() > jQ) {
            return 0L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - jQ;
        if (jQ == 0) {
            return 0L;
        }
        return jCurrentTimeMillis;
    }

    public static long j() {
        return f22874u + eb();
    }

    public static long jx() {
        return f22875v + a();
    }

    public static int w() {
        int i2 = xs;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null) {
            return 1;
        }
        hp hpVar = (hp) obj;
        return (this.eb <= hpVar.eb && this.f22879q <= hpVar.f22879q && this.f22877e <= hpVar.f22877e) ? 0 : 1;
    }

    public long e() {
        return this.f22880s;
    }

    public long gu() {
        return this.f22879q;
    }

    public long hp() {
        return this.gu;
    }

    public long jl() {
        return this.f22877e;
    }

    public long l() {
        return this.jl;
    }

    public long q() {
        return this.eb;
    }

    public long s() {
        return this.f22878k;
    }

    public int zy() {
        return this.zy;
    }

    public void hp(long j2) {
        this.gu = j2;
    }

    public void l(long j2) {
        this.jl = j2;
    }

    public void w(long j2) {
        this.f22880s = j2;
    }

    public static void hp(int i2) {
        l lVar = new l();
        long jEb = jx.jx().eb();
        List<hp> listHp = lVar.hp(jEb);
        Collections.sort(listHp);
        HashSet hashSet = new HashSet();
        if (listHp != null && !listHp.isEmpty()) {
            f22875v = 0L;
            f22874u = 0L;
            xs = 0;
            for (hp hpVar : listHp) {
                if (hpVar.zy() == f22873l) {
                    f22874u += hp(hpVar, jEb);
                } else if (hpVar.zy() == jx) {
                    f22875v += hpVar.hp();
                } else if (hpVar.zy() == hp && hpVar.eb == jEb) {
                    hashSet.add(Long.valueOf(hpVar.e()));
                }
            }
        }
        xs = hashSet.size();
        if (i2 == f22876w) {
            xs = 1;
        }
        lVar.hp();
    }

    public void j(long j2) {
        this.eb = j2;
    }

    public void jx(long j2) {
        this.f22878k = j2;
    }

    public void l(int i2) {
        this.zy = i2;
    }

    public void eb(long j2) {
        this.f22877e = j2;
    }

    public void a(long j2) {
        this.f22879q = j2;
    }

    private static long hp(hp hpVar, long j2) {
        long j3 = j2 - 518400000;
        long jS = hpVar.s();
        if (jS - hpVar.l() >= j3) {
            return hpVar.l();
        }
        long j4 = jS - j3;
        if (j4 < 0) {
            return 0L;
        }
        return j4;
    }

    public static void hp(int i2, long j2, long j3) {
        hp hpVar = new hp();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jHp = jx.jx().hp();
        hpVar.j(jx.jx().eb());
        hpVar.w(jHp);
        hpVar.l(i2);
        hpVar.jx(jCurrentTimeMillis);
        if (i2 == hp) {
            hpVar.hp(0L);
            hpVar.l(0L);
            hpVar.eb(0L);
            hpVar.a(0L);
        } else if (i2 == f22873l) {
            hpVar.hp(0L);
            hpVar.l(j3);
            hpVar.eb(0L);
            hpVar.a(jCurrentTimeMillis);
        } else if (i2 == jx) {
            hpVar.hp(j2);
            hpVar.l(0L);
            hpVar.eb(jCurrentTimeMillis);
            hpVar.a(0L);
        }
        new l().insert(hpVar);
    }
}
