package com.byazt.oyr;

import android.content.Context;
import android.os.Bundle;
import com.byazt.ap.jx;
import com.byazt.ap.w;
import com.byazt.aq.a;
import com.byazt.aq.eb;
import com.byazt.uhg.jl;
import com.byazt.uhg.q;
import com.byazt.xh.jx;
import com.byazt.ymw.sz;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 931, 28})
/* loaded from: classes3.dex */
public class hp {
    public jl hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public a f24281l;

    @com.byazt.kj.hp(hp = {0, 1, 931, 170})
    /* renamed from: com.byazt.oyr.hp$hp, reason: collision with other inner class name */
    public static final class C0335hp {

        /* renamed from: a, reason: collision with root package name */
        public Set<String> f24282a;
        public Bundle eb;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.efq.hp f24285s;

        /* renamed from: j, reason: collision with root package name */
        public boolean f24283j = true;

        /* renamed from: w, reason: collision with root package name */
        public final List<q> f24286w = new ArrayList();
        public int hp = 10000;

        /* renamed from: l, reason: collision with root package name */
        public int f24284l = 10000;
        public int jx = 10000;

        public C0335hp hp(long j2, TimeUnit timeUnit) {
            this.hp = hp("timeout", j2, timeUnit);
            return this;
        }

        public C0335hp jx(long j2, TimeUnit timeUnit) {
            this.jx = hp("timeout", j2, timeUnit);
            return this;
        }

        public C0335hp l(long j2, TimeUnit timeUnit) {
            this.f24284l = hp("timeout", j2, timeUnit);
            return this;
        }

        public C0335hp hp(boolean z2) {
            this.f24283j = z2;
            return this;
        }

        public C0335hp hp(q qVar) {
            this.f24286w.add(qVar);
            return this;
        }

        public C0335hp hp(Set<String> set) {
            this.f24282a = set;
            return this;
        }

        private static int hp(String str, long j2, TimeUnit timeUnit) {
            if (j2 < 0) {
                throw new IllegalArgumentException(str + " < 0");
            }
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j2);
                if (millis > 2147483647L) {
                    throw new IllegalArgumentException(str + " too large.");
                }
                if (millis != 0 || j2 <= 0) {
                    return (int) millis;
                }
                throw new IllegalArgumentException(str + " too small.");
            }
            throw new NullPointerException("unit == null");
        }

        public hp hp() {
            return new hp(this);
        }
    }

    public jl a() {
        return this.hp;
    }

    public void hp(Context context, boolean z2, com.byazt.aq.l lVar) {
        if (context == null) {
            throw new IllegalArgumentException("tryInitAdTTNet context is null");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("tryInitAdTTNet ITTAdNetDepend is null");
        }
        int iHp = lVar.hp();
        this.jx = iHp;
        a aVar = this.f24281l;
        if (aVar != null) {
            aVar.hp(iHp);
        }
        eb.hp().hp(this.jx).hp(z2);
        eb.hp().hp(this.jx).hp(lVar);
        eb.hp().hp(this.jx).hp(context, sz.hp(context));
    }

    public com.byazt.ap.l j() {
        return new com.byazt.ap.l(this.hp);
    }

    public jx jx() {
        return new jx(this.hp);
    }

    public w l() {
        return new w(this.hp);
    }

    public com.byazt.ap.hp w() {
        return new com.byazt.ap.hp(this.hp);
    }

    private hp(C0335hp c0335hp) {
        jl.hp hpVar = new jl.hp();
        long j2 = c0335hp.hp;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        jl.hp hpVarL = hpVar.hp(j2, timeUnit).jx(c0335hp.jx, timeUnit).l(c0335hp.f24284l, timeUnit);
        if (c0335hp.f24283j) {
            a aVar = new a();
            this.f24281l = aVar;
            hpVarL.hp(aVar);
        }
        List<q> list = c0335hp.f24286w;
        if (list != null && list.size() > 0) {
            Iterator<q> it = c0335hp.f24286w.iterator();
            while (it.hasNext()) {
                hpVarL.hp(it.next());
            }
        }
        if (c0335hp.eb != null) {
            hpVarL.hp(c0335hp.eb);
        }
        hpVarL.hp(c0335hp.f24282a);
        if (c0335hp.f24285s == null) {
            hpVarL.hp(new com.byazt.efq.l());
        } else {
            hpVarL.hp(c0335hp.f24285s);
        }
        this.hp = hpVarL.hp();
    }

    public void hp(Context context, boolean z2) {
        com.byazt.aq.hp.l(true);
        if (hp(context) || (!sz.hp(context) && z2)) {
            eb.hp().hp(this.jx, context).j();
            eb.hp().hp(this.jx, context).hp();
        }
        if (sz.hp(context)) {
            eb.hp().hp(this.jx, context).j();
            eb.hp().hp(this.jx, context).hp();
        }
    }

    public static void hp() {
        com.byazt.xh.jx.hp(jx.hp.DEBUG);
    }

    public com.byazt.ap.l hp(String str, String str2, String str3) {
        return new com.byazt.ap.l(this.hp, str, str2, str3);
    }

    private static boolean hp(Context context) {
        String strL = sz.l(context);
        if (strL != null) {
            return strL.endsWith(":push") || strL.endsWith(":pushservice");
        }
        return false;
    }
}
