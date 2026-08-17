package com.byazt.sv;

import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Date;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, 30})
/* loaded from: classes3.dex */
public final class jx {
    public final o hp;

    /* renamed from: l, reason: collision with root package name */
    public final hq f25596l;

    public jx(o oVar, hq hqVar) {
        this.hp = oVar;
        this.f25596l = hqVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.jl().j() == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean hp(com.byazt.hq.hq r3, com.byazt.hq.o r4) {
        /*
            int r0 = r3.jx()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L59
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L59
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L59
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L59
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L59
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L59
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L59
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L59
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L59
            switch(r0) {
                case 300: goto L59;
                case 301: goto L59;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L58
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.hp(r0)
            if (r0 != 0) goto L59
            com.byazt.hq.j r0 = r3.jl()
            int r0 = r0.jx()
            r1 = -1
            if (r0 != r1) goto L59
            com.byazt.hq.j r0 = r3.jl()
            boolean r0 = r0.w()
            if (r0 != 0) goto L59
            com.byazt.hq.j r0 = r3.jl()
            boolean r0 = r0.j()
            if (r0 != 0) goto L59
        L58:
            return r2
        L59:
            com.byazt.hq.j r3 = r3.jl()
            boolean r3 = r3.l()
            if (r3 != 0) goto L6f
            com.byazt.hq.j r3 = r4.eb()
            boolean r3 = r3.l()
            if (r3 != 0) goto L6f
            r3 = 1
            return r3
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.sv.jx.hp(com.byazt.hq.hq, com.byazt.hq.o):boolean");
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, 219})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public Date f25597a;

        /* renamed from: e, reason: collision with root package name */
        public long f25598e;
        public String eb;
        public String gu;
        public final long hp;

        /* renamed from: j, reason: collision with root package name */
        public Date f25599j;
        public int jl;
        public final hq jx;

        /* renamed from: l, reason: collision with root package name */
        public final o f25600l;

        /* renamed from: q, reason: collision with root package name */
        public long f25601q;

        /* renamed from: s, reason: collision with root package name */
        public Date f25602s;

        /* renamed from: w, reason: collision with root package name */
        public String f25603w;

        public hp(long j2, o oVar, hq hqVar) {
            this.jl = -1;
            this.hp = j2;
            this.f25600l = oVar;
            this.jx = hqVar;
            if (hqVar != null) {
                this.f25601q = hqVar.zy();
                this.f25598e = hqVar.k();
                vv vvVarEb = hqVar.eb();
                int iHp = vvVarEb.hp();
                for (int i2 = 0; i2 < iHp; i2++) {
                    String strHp = vvVarEb.hp(i2);
                    String strL = vvVarEb.l(i2);
                    if ("Date".equalsIgnoreCase(strHp)) {
                        this.f25599j = com.byazt.pn.j.hp(strL);
                        this.f25603w = strL;
                    } else if ("Expires".equalsIgnoreCase(strHp)) {
                        this.f25602s = com.byazt.pn.j.hp(strL);
                    } else if ("Last-Modified".equalsIgnoreCase(strHp)) {
                        this.f25597a = com.byazt.pn.j.hp(strL);
                        this.eb = strL;
                    } else if ("ETag".equalsIgnoreCase(strHp)) {
                        this.gu = strL;
                    } else if ("Age".equalsIgnoreCase(strHp)) {
                        this.jl = com.byazt.pn.w.l(strL, -1);
                    }
                }
            }
        }

        private long j() {
            Date date = this.f25599j;
            long jMax = date != null ? Math.max(0L, this.f25598e - date.getTime()) : 0L;
            int i2 = this.jl;
            if (i2 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i2));
            }
            long j2 = this.f25598e;
            return jMax + (j2 - this.f25601q) + (this.hp - j2);
        }

        private long jx() {
            if (this.jx.jl().jx() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.jx());
            }
            if (this.f25602s != null) {
                Date date = this.f25599j;
                long time = this.f25602s.getTime() - (date != null ? date.getTime() : this.f25598e);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f25597a != null && this.jx.hp().hp().query() == null) {
                Date date2 = this.f25599j;
                long time2 = (date2 != null ? date2.getTime() : this.f25601q) - this.f25597a.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
            }
            return 0L;
        }

        private jx l() {
            String str;
            if (this.jx == null) {
                return new jx(this.f25600l, null);
            }
            if (this.f25600l.s() && this.jx.a() == null) {
                return new jx(this.f25600l, null);
            }
            if (!jx.hp(this.jx, this.f25600l)) {
                return new jx(this.f25600l, null);
            }
            com.byazt.hq.j jVarEb = this.f25600l.eb();
            if (jVarEb.hp() || hp(this.f25600l)) {
                return new jx(this.f25600l, null);
            }
            com.byazt.hq.j jVarJl = this.jx.jl();
            if (jVarJl.e()) {
                return new jx(null, this.jx);
            }
            long j2 = j();
            long jJx = jx();
            if (jVarEb.jx() != -1) {
                jJx = Math.min(jJx, TimeUnit.SECONDS.toMillis(jVarEb.jx()));
            }
            long millis = 0;
            long millis2 = jVarEb.s() != -1 ? TimeUnit.SECONDS.toMillis(jVarEb.s()) : 0L;
            if (!jVarJl.a() && jVarEb.eb() != -1) {
                millis = TimeUnit.SECONDS.toMillis(jVarEb.eb());
            }
            if (!jVarJl.hp()) {
                long j3 = millis2 + j2;
                if (j3 < millis + jJx) {
                    hq.hp hpVarQ = this.jx.q();
                    if (j3 >= jJx) {
                        hpVarQ.hp("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (j2 > 86400000 && w()) {
                        hpVarQ.hp("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new jx(null, hpVarQ.hp());
                }
            }
            String str2 = this.gu;
            if (str2 != null) {
                str = "If-None-Match";
            } else {
                if (this.f25597a != null) {
                    str2 = this.eb;
                } else {
                    if (this.f25599j == null) {
                        return new jx(this.f25600l, null);
                    }
                    str2 = this.f25603w;
                }
                str = "If-Modified-Since";
            }
            vv.hp hpVarL = this.f25600l.jx().l();
            com.byazt.ru.hp.hp.hp(hpVarL, str, str2);
            return new jx(this.f25600l.a().hp(hpVarL.hp()).hp(), this.jx);
        }

        private boolean w() {
            return this.jx.jl().jx() == -1 && this.f25602s == null;
        }

        public jx hp() {
            jx jxVarL = l();
            return (jxVarL.hp == null || !this.f25600l.eb().q()) ? jxVarL : new jx(null, null);
        }

        private static boolean hp(o oVar) {
            return (oVar.hp("If-Modified-Since") == null && oVar.hp("If-None-Match") == null) ? false : true;
        }
    }
}
