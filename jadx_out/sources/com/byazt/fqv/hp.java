package com.byazt.fqv;

import android.text.TextUtils;
import com.byazt.ctq.jx;

@com.byazt.kj.hp(hp = {0, 1, 1804, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: l, reason: collision with root package name */
    public static volatile hp f20087l;

    /* renamed from: a, reason: collision with root package name */
    public String f20088a;

    /* renamed from: j, reason: collision with root package name */
    public long f20089j;

    /* renamed from: w, reason: collision with root package name */
    public long f20090w;
    public final String hp = hp.class.getSimpleName();
    public final jx jx = com.byazt.lto.hp.w();

    private hp() {
    }

    public static hp hp() {
        if (f20087l == null) {
            synchronized (hp.class) {
                try {
                    if (f20087l == null) {
                        f20087l = new hp();
                    }
                } finally {
                }
            }
        }
        return f20087l;
    }

    public void a() {
        this.f20089j = System.currentTimeMillis();
    }

    public long e() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f20089j;
        com.byazt.aw.l.l(this.hp, "SplashFillDuration = ".concat(String.valueOf(jCurrentTimeMillis)));
        return jCurrentTimeMillis;
    }

    public void eb() {
        this.f20090w = System.currentTimeMillis();
    }

    public boolean gu() {
        return TextUtils.isEmpty(this.f20088a);
    }

    public synchronized int j() {
        return this.jx.getInt("discard_num", 0);
    }

    public boolean jl() {
        String str = this.f20088a;
        String str2 = com.byazt.lsx.hp.jx;
        boolean zEquals = TextUtils.equals(str, str2);
        com.byazt.aw.l.l(this.hp, "canUploadInitDuration = " + zEquals + " 当sessionId = " + str2 + " 存储的sessionId = " + this.f20088a);
        return !zEquals;
    }

    public synchronized void jx() {
        this.jx.put("discard_num", this.jx.getInt("discard_num", 0) + 1);
    }

    public long l() {
        try {
            long jCurrentTimeMillis = this.jx.getLong("first_install_time", -1L);
            if (jCurrentTimeMillis == -1) {
                jCurrentTimeMillis = com.byazt.lto.hp.hp().getLong("first_install_time", -1L);
                if (jCurrentTimeMillis == -1) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                this.jx.put("first_install_time", jCurrentTimeMillis);
            }
            return jCurrentTimeMillis;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public long q() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f20089j;
        com.byazt.aw.l.l(this.hp, "SplashRequestDuration = ".concat(String.valueOf(jCurrentTimeMillis)));
        return jCurrentTimeMillis;
    }

    public long s() {
        long j2 = this.f20090w - this.f20089j;
        com.byazt.aw.l.l(this.hp, "InitMethodDuration = ".concat(String.valueOf(j2)));
        return j2;
    }

    public synchronized void w() {
        this.jx.put("discard_num", 0);
    }

    public void hp(long j2) {
        try {
            if (this.jx.getLong("first_install_time", -1L) == -1) {
                long j3 = com.byazt.lto.hp.hp().getLong("first_install_time", -1L);
                if (j3 != -1) {
                    j2 = j3;
                }
                this.jx.put("first_install_time", j2);
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(String str) {
        this.f20088a = str;
    }
}
