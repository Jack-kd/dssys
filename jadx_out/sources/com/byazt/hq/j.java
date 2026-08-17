package com.byazt.hq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 158, 38})
/* loaded from: classes2.dex */
public final class j {
    public static final j hp = new hp().hp().jx();

    /* renamed from: l, reason: collision with root package name */
    public static final j f20873l = new hp().l().hp(Integer.MAX_VALUE, TimeUnit.SECONDS).jx();

    /* renamed from: a, reason: collision with root package name */
    public final int f20874a;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f20875e;
    public final int eb;
    public final int gu;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f20876j;
    public final int jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f20877k;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f20878q;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f20879s;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f20880v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f20881w;
    public final boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f20882a;
        public boolean eb;
        public boolean hp;

        /* renamed from: l, reason: collision with root package name */
        public boolean f20884l;

        /* renamed from: s, reason: collision with root package name */
        public boolean f20885s;
        public int jx = -1;

        /* renamed from: j, reason: collision with root package name */
        public int f20883j = -1;

        /* renamed from: w, reason: collision with root package name */
        public int f20886w = -1;

        public hp hp() {
            this.hp = true;
            return this;
        }

        public j jx() {
            return new j(this);
        }

        public hp l() {
            this.f20882a = true;
            return this;
        }

        public hp hp(int i2, TimeUnit timeUnit) {
            if (i2 < 0) {
                throw new IllegalArgumentException("maxStale < 0: ".concat(String.valueOf(i2)));
            }
            long seconds = timeUnit.toSeconds(i2);
            this.f20883j = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }
    }

    private j(boolean z2, boolean z3, int i2, int i3, boolean z4, boolean z5, boolean z6, int i4, int i5, boolean z7, boolean z8, boolean z9, String str) {
        this.f20876j = z2;
        this.f20881w = z3;
        this.f20874a = i2;
        this.eb = i3;
        this.f20879s = z4;
        this.f20878q = z5;
        this.f20875e = z6;
        this.gu = i4;
        this.jl = i5;
        this.zy = z7;
        this.f20877k = z8;
        this.f20880v = z9;
        this.jx = str;
    }

    private String gu() {
        StringBuilder sb = new StringBuilder();
        if (this.f20876j) {
            sb.append("no-cache, ");
        }
        if (this.f20881w) {
            sb.append("no-store, ");
        }
        if (this.f20874a != -1) {
            sb.append("max-age=");
            sb.append(this.f20874a);
            sb.append(", ");
        }
        if (this.eb != -1) {
            sb.append("s-maxage=");
            sb.append(this.eb);
            sb.append(", ");
        }
        if (this.f20879s) {
            sb.append("private, ");
        }
        if (this.f20878q) {
            sb.append("public, ");
        }
        if (this.f20875e) {
            sb.append("must-revalidate, ");
        }
        if (this.gu != -1) {
            sb.append("max-stale=");
            sb.append(this.gu);
            sb.append(", ");
        }
        if (this.jl != -1) {
            sb.append("min-fresh=");
            sb.append(this.jl);
            sb.append(", ");
        }
        if (this.zy) {
            sb.append("only-if-cached, ");
        }
        if (this.f20877k) {
            sb.append("no-transform, ");
        }
        if (this.f20880v) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public boolean a() {
        return this.f20875e;
    }

    public boolean e() {
        return this.f20880v;
    }

    public int eb() {
        return this.gu;
    }

    public boolean hp() {
        return this.f20876j;
    }

    public boolean j() {
        return this.f20879s;
    }

    public int jx() {
        return this.f20874a;
    }

    public boolean l() {
        return this.f20881w;
    }

    public boolean q() {
        return this.zy;
    }

    public int s() {
        return this.jl;
    }

    public String toString() {
        String str = this.jx;
        if (str != null) {
            return str;
        }
        String strGu = gu();
        this.jx = strGu;
        return strGu;
    }

    public boolean w() {
        return this.f20878q;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.byazt.hq.j hp(com.byazt.hq.vv r23) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.hq.j.hp(com.byazt.hq.vv):com.byazt.hq.j");
    }

    public j(hp hpVar) {
        this.f20876j = hpVar.hp;
        this.f20881w = hpVar.f20884l;
        this.f20874a = hpVar.jx;
        this.eb = -1;
        this.f20879s = false;
        this.f20878q = false;
        this.f20875e = false;
        this.gu = hpVar.f20883j;
        this.jl = hpVar.f20886w;
        this.zy = hpVar.f20882a;
        this.f20877k = hpVar.eb;
        this.f20880v = hpVar.f20885s;
    }
}
