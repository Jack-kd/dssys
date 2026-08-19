package com.byazt.hq;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.tt.eb;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 158, 45})
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: j, reason: collision with root package name */
    public static final Executor f20819j = new com.byazt.shx.j(0, Integer.MAX_VALUE, 20, TimeUnit.SECONDS, new SynchronousQueue(), com.byazt.ru.jx.hp("OkHttp ConnectionPool", true));
    public static final /* synthetic */ boolean jx = true;

    /* renamed from: a, reason: collision with root package name */
    public long f20820a;

    /* renamed from: e, reason: collision with root package name */
    public final Deque<com.byazt.tt.jx> f20821e;
    public List<String> eb;
    public final com.byazt.tt.j hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f20822l;

    /* renamed from: q, reason: collision with root package name */
    public final Runnable f20823q;

    /* renamed from: s, reason: collision with root package name */
    public long f20824s;

    /* renamed from: w, reason: collision with root package name */
    public int f20825w;

    public e() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    private boolean jx(com.byazt.tt.jx jxVar) {
        try {
            List<String> list = this.eb;
            if (list != null && !list.isEmpty() && jxVar.hp() != null && jxVar.hp().hp() != null && jxVar.hp().hp().hp() != null && jxVar.hp().hp().hp().eb() != null) {
                String strEb = jxVar.hp().hp().hp().eb();
                if (!TextUtils.isEmpty(strEb)) {
                    if (this.eb.contains(strEb)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public void hp(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.containsKey("max_idle_cnt")) {
                    int i2 = bundle.getInt("max_idle_cnt");
                    if (i2 <= 5) {
                        i2 = this.f20825w;
                    }
                    this.f20825w = i2;
                }
                if (bundle.containsKey("max_idle_time")) {
                    long j2 = bundle.getLong("max_idle_time");
                    this.f20820a = j2 > 5 ? TimeUnit.MINUTES.toNanos(j2) : this.f20820a;
                }
                if (bundle.containsKey("white_hosts") && bundle.containsKey("white_extra_idle_time")) {
                    this.eb = bundle.getStringArrayList("white_hosts");
                    long j3 = bundle.getLong("white_extra_idle_time");
                    this.f20824s = j3 > 0 ? TimeUnit.MINUTES.toNanos(j3) : 0L;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean l(com.byazt.tt.jx jxVar) {
        if (!jx && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (jxVar.hp || this.f20825w == 0) {
            this.f20821e.remove(jxVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public e(int i2, long j2, TimeUnit timeUnit) {
        this.f20823q = new Runnable() { // from class: com.byazt.hq.e.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                while (true) {
                    long jHp = e.this.hp(System.nanoTime());
                    if (jHp == -1) {
                        return;
                    }
                    if (jHp > 0) {
                        long j3 = jHp / C.MICROS_PER_SECOND;
                        long j4 = jHp - (C.MICROS_PER_SECOND * j3);
                        synchronized (e.this) {
                            try {
                                e.this.wait(j3, (int) j4);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.f20821e = new ArrayDeque();
        this.hp = new com.byazt.tt.j();
        this.f20825w = i2;
        this.f20820a = timeUnit.toNanos(j2);
        if (j2 <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: ".concat(String.valueOf(j2)));
        }
    }

    public com.byazt.tt.jx hp(hp hpVar, com.byazt.tt.eb ebVar, nu nuVar) {
        if (!jx && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.byazt.tt.jx jxVar : this.f20821e) {
            if (jxVar.hp(hpVar, nuVar)) {
                if (ebVar != null) {
                    ebVar.hp(jxVar, true);
                }
                return jxVar;
            }
        }
        return null;
    }

    public Socket hp(hp hpVar, com.byazt.tt.eb ebVar) {
        if (!jx && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.byazt.tt.jx jxVar : this.f20821e) {
            if (jxVar.hp(hpVar, null) && jxVar.w() && jxVar != ebVar.l()) {
                return ebVar.hp(jxVar);
            }
        }
        return null;
    }

    public void hp(com.byazt.tt.jx jxVar) {
        if (!jx && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f20822l) {
            this.f20822l = true;
            f20819j.execute(this.f20823q);
        }
        this.f20821e.add(jxVar);
    }

    public long hp(long j2) throws IOException {
        try {
            synchronized (this) {
                try {
                    com.byazt.tt.jx jxVar = null;
                    long j3 = Long.MIN_VALUE;
                    int i2 = 0;
                    int i3 = 0;
                    for (com.byazt.tt.jx jxVar2 : this.f20821e) {
                        if (hp(jxVar2, j2) > 0) {
                            i3++;
                        } else {
                            i2++;
                            long j4 = j2 - jxVar2.f25994w;
                            if (this.f20824s > 0 && jx(jxVar2)) {
                                j4 -= this.f20824s;
                            }
                            if (j4 > j3) {
                                jxVar = jxVar2;
                                j3 = j4;
                            }
                        }
                    }
                    long j5 = this.f20820a;
                    if (j3 < j5 && i2 <= this.f20825w) {
                        if (i2 > 0) {
                            return j5 - j3;
                        }
                        if (i3 > 0) {
                            return j5;
                        }
                        this.f20822l = false;
                        return -1L;
                    }
                    this.f20821e.remove(jxVar);
                    com.byazt.ru.jx.hp(jxVar.jx());
                    return 0L;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (OutOfMemoryError unused) {
            return this.f20820a;
        }
    }

    private int hp(com.byazt.tt.jx jxVar, long j2) {
        List<Reference<com.byazt.tt.eb>> list = jxVar.f25988j;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference<com.byazt.tt.eb> reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                com.byazt.ksw.w.l().hp("A connection to " + jxVar.hp().hp().hp() + " was leaked. Did you forget to close a response body?", ((eb.hp) reference).hp);
                list.remove(i2);
                jxVar.hp = true;
                if (list.isEmpty()) {
                    jxVar.f25994w = j2 - this.f20820a;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
