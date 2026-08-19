package com.byazt.mg;

import com.byazt.mg.a;
import com.byazt.mg.s;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 790, 28})
/* loaded from: classes3.dex */
public abstract class hp implements eb {
    public static final AtomicLong jl = new AtomicLong();

    /* renamed from: a, reason: collision with root package name */
    public volatile List<a.l> f22973a;
    public volatile String eb;
    public volatile com.byazt.ya.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.zt.jx f22977l;

    /* renamed from: q, reason: collision with root package name */
    public volatile s f22978q;

    /* renamed from: s, reason: collision with root package name */
    public volatile String f22979s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.bx.hp f22980w;
    public final AtomicInteger jx = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public final AtomicLong f22975j = new AtomicLong();

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f22974e = false;
    public final long gu = jl.incrementAndGet();
    public final AtomicInteger zy = new AtomicInteger(0);

    /* renamed from: k, reason: collision with root package name */
    public int f22976k = -1;

    public hp(com.byazt.ya.hp hpVar, com.byazt.zt.jx jxVar) {
        this.hp = hpVar;
        this.f22977l = jxVar;
    }

    public boolean a() {
        return w() == 1;
    }

    public void j() throws com.byazt.df.hp {
        if (l()) {
            throw new com.byazt.df.hp();
        }
    }

    public void jx() {
        this.zy.compareAndSet(0, 2);
    }

    public boolean l() {
        return this.zy.get() == 1;
    }

    public int w() {
        return this.hp instanceof com.byazt.ya.l ? 1 : 0;
    }

    public void hp() {
        this.zy.compareAndSet(0, 1);
    }

    public com.byazt.fs.hp hp(s.hp hpVar, int i2, int i3, String str) throws IOException {
        com.byazt.fs.l lVarL = com.byazt.fs.jx.hp().l();
        com.byazt.fs.w wVar = new com.byazt.fs.w();
        HashMap map = new HashMap();
        wVar.f20096l = hpVar.hp;
        wVar.hp = 0;
        if (c.f37362a.equalsIgnoreCase(str)) {
            wVar.hp = 4;
        }
        List<a.l> list = this.f22973a;
        if (list != null && !list.isEmpty()) {
            for (a.l lVar : list) {
                if (!c.f37363b.equalsIgnoreCase(lVar.hp) && !"Connection".equalsIgnoreCase(lVar.hp) && !"Proxy-Connection".equalsIgnoreCase(lVar.hp) && !"Host".equalsIgnoreCase(lVar.hp)) {
                    map.put(lVar.hp, lVar.f22972l);
                }
            }
        }
        String strHp = com.byazt.vk.hp.hp(i2, i3);
        if (strHp != null) {
            map.put(c.f37363b, strHp);
        }
        if (j.f22986s) {
            map.put("Cache-Control", "no-cache");
        }
        wVar.f20097w = map;
        if (this.f22974e) {
            this.f22974e = false;
            return null;
        }
        return lVarL.hp(wVar);
    }

    public void hp(int i2, int i3) {
        if (i2 <= 0 || i3 < 0) {
            return;
        }
        int i4 = j.f22985q;
        int iW = w();
        if (i4 == 1 || (i4 == 2 && iW == 1)) {
            int i5 = (int) ((i3 / i2) * 100.0f);
            if (i5 > 100) {
                i5 = 100;
            }
            synchronized (this) {
                try {
                    if (i5 <= this.f22976k) {
                        return;
                    }
                    this.f22976k = i5;
                    com.byazt.vk.hp.l(new Runnable() { // from class: com.byazt.mg.hp.1
                        @Override // java.lang.Runnable
                        public void run() {
                            hp hpVar = hp.this;
                            if (hpVar.f22980w != null) {
                                s sVar = hpVar.f22978q;
                                int unused = hp.this.f22976k;
                            }
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
