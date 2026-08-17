package com.byazt.ip;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

@com.byazt.kj.hp(hp = {0, 1, 1124, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes.dex */
public class gu {
    public static final String hp = "gu";

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<Object> f21156a;
    public int eb;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicReference<jl> f21157j;
    public volatile boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final j f21158l;

    /* renamed from: w, reason: collision with root package name */
    public AtomicReference<jl> f21159w;

    @com.byazt.kj.hp(hp = {0, 1, 1124, 1308})
    /* renamed from: com.byazt.ip.gu$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[jl.values().length];
            hp = iArr;
            try {
                iArr[jl.POOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[jl.MODERATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[jl.GOOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[jl.EXCELLENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1124, 1132})
    public static class hp {
        public static final gu hp = new gu(null);
    }

    public /* synthetic */ gu(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static gu hp() {
        return hp.hp;
    }

    private void j() {
        try {
            int size = this.f21156a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f21156a.get(i2);
                this.f21157j.get();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean jx() {
        double d2;
        if (this.f21158l == null) {
            return false;
        }
        try {
            int i2 = AnonymousClass1.hp[this.f21157j.get().ordinal()];
            double d3 = 150.0d;
            if (i2 == 1) {
                d2 = 0.0d;
            } else if (i2 == 2) {
                d2 = 150.0d;
                d3 = 550.0d;
            } else if (i2 == 3) {
                d2 = 550.0d;
                d3 = 2000.0d;
            } else {
                if (i2 != 4) {
                    return true;
                }
                d3 = 3.4028234663852886E38d;
                d2 = 2000.0d;
            }
            double dHp = this.f21158l.hp();
            if (dHp > d3) {
                if (dHp > d3 * 1.25d) {
                    return true;
                }
            } else if (dHp < d2 * 0.8d) {
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public synchronized jl l() {
        j jVar = this.f21158l;
        if (jVar == null) {
            return jl.UNKNOWN;
        }
        try {
            return hp(jVar.hp());
        } catch (Throwable unused) {
            return jl.UNKNOWN;
        }
    }

    private gu() {
        this.f21158l = new j(0.05d);
        this.jx = false;
        this.f21157j = new AtomicReference<>(jl.UNKNOWN);
        this.f21156a = new ArrayList<>();
    }

    public synchronized void hp(long j2, long j3) {
        double d2 = ((j2 * 1.0d) / j3) * 8.0d;
        if (j3 == 0 || d2 < 3.0d) {
            return;
        }
        try {
            this.f21158l.hp(d2);
            jl jlVarL = l();
            if (!this.jx) {
                if (this.f21157j.get() != jlVarL) {
                    this.jx = true;
                    this.f21159w = new AtomicReference<>(jlVarL);
                }
                return;
            }
            this.eb++;
            if (jlVarL != this.f21159w.get()) {
                this.jx = false;
                this.eb = 1;
            }
            if (this.eb >= 5.0d && jx()) {
                this.jx = false;
                this.eb = 1;
                this.f21157j.set(this.f21159w.get());
                j();
            }
        } catch (Throwable unused) {
        }
    }

    private jl hp(double d2) {
        if (d2 < 0.0d) {
            return jl.UNKNOWN;
        }
        if (d2 < 150.0d) {
            return jl.POOR;
        }
        if (d2 < 550.0d) {
            return jl.MODERATE;
        }
        if (d2 < 2000.0d) {
            return jl.GOOD;
        }
        return jl.EXCELLENT;
    }
}
