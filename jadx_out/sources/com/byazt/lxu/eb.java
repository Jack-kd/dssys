package com.byazt.lxu;

import android.os.Bundle;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.cn.e;
import com.byazt.cn.q;
import com.byazt.gt.zy;
import com.byazt.yu.s;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 1576, 94})
/* loaded from: classes3.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicLong f22799a = new AtomicLong(1000);

    /* renamed from: v, reason: collision with root package name */
    public static hp f22800v;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f22801e;
    public long eb;
    public long gu;
    public final s hp;

    /* renamed from: j, reason: collision with root package name */
    public q f22802j;
    public int jl;
    public q jx;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.cn.a f22803k;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.yu.q f22804l;

    /* renamed from: q, reason: collision with root package name */
    public long f22805q = -1;

    /* renamed from: s, reason: collision with root package name */
    public int f22806s;

    /* renamed from: w, reason: collision with root package name */
    public String f22807w;
    public String zy;

    @com.byazt.kj.hp(hp = {0, 1, 1576, 131})
    public static class hp extends e {
        private hp() {
        }
    }

    public eb(com.byazt.yu.q qVar, s sVar) {
        this.f22804l = qVar;
        this.hp = sVar;
    }

    public static long j() {
        return f22799a.incrementAndGet();
    }

    public static hp w() {
        if (f22800v == null) {
            f22800v = new hp();
        }
        f22800v.f18929l = System.currentTimeMillis();
        return f22800v;
    }

    public String hp() {
        return this.f22807w;
    }

    public boolean jx() {
        return l() && this.gu == 0;
    }

    public boolean l() {
        return this.f22801e;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized android.os.Bundle hp(long r5, long r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            com.byazt.yu.s r0 = r4.hp     // Catch: java.lang.Throwable -> L4e
            boolean r0 = r0.a()     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L50
            boolean r0 = r4.jx()     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L50
            long r0 = r4.eb     // Catch: java.lang.Throwable -> L4e
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 <= 0) goto L50
            long r0 = r5 - r0
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 <= 0) goto L50
            android.os.Bundle r7 = new android.os.Bundle     // Catch: java.lang.Throwable -> L4e
            r7.<init>()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r8 = "session_no"
            int r0 = r4.jl     // Catch: java.lang.Throwable -> L4e
            r7.putInt(r8, r0)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r8 = "send_times"
            int r0 = r4.f22806s     // Catch: java.lang.Throwable -> L4e
            int r0 = r0 + 1
            r4.f22806s = r0     // Catch: java.lang.Throwable -> L4e
            r7.putInt(r8, r0)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r8 = "current_duration"
            long r0 = r4.eb     // Catch: java.lang.Throwable -> L4e
            long r0 = r5 - r0
            r2 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r2
            r7.putLong(r8, r0)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r8 = "session_start_time"
            long r0 = r4.f22805q     // Catch: java.lang.Throwable -> L4e
            java.lang.String r0 = com.byazt.cn.hp.l(r0)     // Catch: java.lang.Throwable -> L4e
            r7.putString(r8, r0)     // Catch: java.lang.Throwable -> L4e
            r4.eb = r5     // Catch: java.lang.Throwable -> L4e
            goto L51
        L4e:
            r5 = move-exception
            goto L53
        L50:
            r7 = 0
        L51:
            monitor-exit(r4)
            return r7
        L53:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L4e
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.lxu.eb.hp(long, long):android.os.Bundle");
    }

    public void l(com.byazt.cn.hp hpVar) {
        if (hpVar != null) {
            if (this.hp.n()) {
                hpVar.f18931s = com.byazt.ub.hp.w();
            }
            hpVar.f18926a = com.byazt.ub.hp.gu();
            hpVar.eb = com.byazt.ub.hp.e();
            hpVar.f18928j = this.f22807w;
            hpVar.jx = j();
        }
    }

    private synchronized void hp(com.byazt.cn.hp hpVar, ArrayList<com.byazt.cn.hp> arrayList, boolean z2) {
        try {
            long j2 = hpVar instanceof hp ? -1L : hpVar.f18929l;
            this.f22807w = UUID.randomUUID().toString();
            f22799a.set(1000L);
            this.f22805q = j2;
            this.f22801e = z2;
            this.gu = 0L;
            this.eb = 0L;
            if (com.byazt.gt.e.f20599l) {
                com.byazt.gt.e.hp("startSession, " + this.f22807w + ", hadUi:" + z2 + " data:" + hpVar, null);
            }
            if (z2) {
                Calendar calendar = Calendar.getInstance();
                StringBuilder sb = new StringBuilder();
                sb.append(calendar.get(1));
                sb.append(calendar.get(2));
                sb.append(calendar.get(5));
                String string = sb.toString();
                if (TextUtils.isEmpty(this.zy)) {
                    this.zy = this.hp.jx();
                    this.jl = this.hp.j();
                }
                if (!string.equals(this.zy)) {
                    this.zy = string;
                    this.jl = 1;
                } else {
                    this.jl++;
                }
                this.hp.hp(string, this.jl);
                this.f22806s = 0;
                this.eb = hpVar.f18929l;
            }
            if (j2 != -1) {
                com.byazt.cn.a aVar = new com.byazt.cn.a(false);
                aVar.f18928j = this.f22807w;
                aVar.jx = j();
                aVar.f18929l = this.f22805q;
                aVar.f18917k = !this.f22801e;
                aVar.zy = this.f22804l.jx();
                aVar.jl = this.f22804l.l();
                aVar.f18926a = com.byazt.ub.hp.gu();
                aVar.eb = com.byazt.ub.hp.e();
                if (this.hp.n()) {
                    aVar.f18931s = com.byazt.ub.hp.w();
                }
                arrayList.add(aVar);
                this.f22803k = aVar;
                if (com.byazt.gt.e.f20599l) {
                    com.byazt.gt.e.hp("gen launch, " + aVar.f18928j + ", hadUi:" + z2, null);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean hp(com.byazt.cn.hp hpVar) {
        if (hpVar instanceof q) {
            return ((q) hpVar).e();
        }
        return false;
    }

    public boolean hp(com.byazt.cn.hp hpVar, ArrayList<com.byazt.cn.hp> arrayList) {
        boolean z2 = hpVar instanceof q;
        boolean zHp = hp(hpVar);
        boolean z3 = true;
        if (this.f22805q == -1) {
            hp(hpVar, arrayList, hp(hpVar));
        } else if (!this.f22801e && zHp) {
            hp(hpVar, arrayList, true);
        } else {
            long j2 = this.gu;
            if (j2 == 0 || hpVar.f18929l <= j2 + this.hp.cx()) {
                if (this.f22805q > hpVar.f18929l + i.l.f2676a) {
                    hp(hpVar, arrayList, zHp);
                } else {
                    z3 = false;
                }
            } else if (!zy.l() && zy.hp()) {
                hp(hpVar, arrayList, zHp);
            }
        }
        if (z2) {
            q qVar = (q) hpVar;
            if (qVar.e()) {
                this.gu = 0L;
                arrayList.add(hpVar);
                if (TextUtils.isEmpty(qVar.zy)) {
                    q qVar2 = this.f22802j;
                    if (qVar2 != null && (qVar.f18929l - qVar2.f18929l) - qVar2.jl < 500) {
                        qVar.zy = qVar2.f18941k;
                    } else {
                        q qVar3 = this.jx;
                        if (qVar3 != null && (qVar.f18929l - qVar3.f18929l) - qVar3.jl < 500) {
                            qVar.zy = qVar3.f18941k;
                        }
                    }
                }
            } else {
                Bundle bundleHp = hp(hpVar.f18929l, 0L);
                if (bundleHp != null) {
                    com.byazt.ub.hp.hp("play_session", bundleHp);
                }
                this.gu = qVar.f18929l;
                arrayList.add(hpVar);
                if (qVar.gu()) {
                    this.jx = qVar;
                } else {
                    this.f22802j = qVar;
                    this.jx = null;
                }
            }
        } else if (!(hpVar instanceof hp)) {
            arrayList.add(hpVar);
        }
        l(hpVar);
        return z3;
    }
}
