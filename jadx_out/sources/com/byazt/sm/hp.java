package com.byazt.sm;

import android.util.Pair;
import com.byazt.jz.AdSdkInitializerHolder;
import com.byazt.nke.ky;
import com.byazt.owd.DispatchAdSdkInitializerHolder;
import com.byazt.sf.a;
import com.byazt.ym.eb;
import com.byazt.ym.gu;
import com.byazt.ym.jl;
import com.byazt.ym.q;
import com.byazt.ym.s;
import com.byazt.ym.w;
import com.byazt.ym.zy;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1728, 28})
/* loaded from: classes3.dex */
public class hp {
    public q hp;

    public com.byazt.pg.hp hp(String str) {
        return new com.byazt.ym.l(str);
    }

    private <T> T hp(String str, com.byazt.pg.hp hpVar) {
        switch (str.hashCode()) {
            case -1535463234:
                return (T) new jl();
            case -1083272647:
                return (T) new com.byazt.kz.l(com.byazt.ws.hp.getContext(), com.byazt.ws.hp.l());
            case -1006435087:
                return (T) new com.byazt.ry.jx();
            case -987979858:
                return (T) new a();
            case -691529373:
                return (T) new ky();
            case -428682880:
                return (T) new zy();
            case 109:
                return (T) new DispatchAdSdkInitializerHolder();
            case 107809:
                return (T) new s();
            case 93922211:
                return (T) new AdSdkInitializerHolder();
            case 96891546:
                return (T) new com.byazt.lf.jx();
            case 103593094:
                return (T) new eb();
            case 585701159:
                return (T) new com.byazt.ami.hp();
            case 620599127:
                return (T) new com.byazt.hj.hp();
            case 658907061:
                return (T) new com.byazt.ym.jx(com.byazt.ws.hp.jx());
            case 788550538:
                return (T) new com.byazt.lnb.hp(hpVar);
            case 1209788376:
                return (T) new com.byazt.ym.a();
            case 1390272937:
                return (T) new com.byazt.lf.j();
            case 1407715928:
                return (T) new com.byazt.nr.hp(com.byazt.ws.hp.getContext(), com.byazt.ws.hp.hp());
            case 1572865224:
                return (T) new w(hpVar);
            default:
                return null;
        }
    }

    public void hp(q qVar) {
        this.hp = qVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<java.util.function.Function, java.lang.Object> hp(com.byazt.ym.gu r7, com.byazt.pg.hp r8, boolean r9) {
        /*
            r6 = this;
            r0 = 0
            if (r9 == 0) goto L1e
            boolean r9 = r7.a()     // Catch: java.lang.Throwable -> L1b
            if (r9 == 0) goto L1e
            java.util.function.Function r9 = r7.l()     // Catch: java.lang.Throwable -> L1b
            if (r9 == 0) goto L19
            java.lang.String r1 = r7.f28046a     // Catch: java.lang.Throwable -> L16
            java.lang.Object r1 = com.byazt.glv.hp.hp(r9, r1, r8)     // Catch: java.lang.Throwable -> L16
            goto L20
        L16:
            r8 = move-exception
            goto L74
        L19:
            r1 = r0
            goto L20
        L1b:
            r8 = move-exception
            r9 = r0
            goto L74
        L1e:
            r9 = r0
            r1 = r9
        L20:
            int r2 = r7.jx     // Catch: java.lang.Throwable -> L35
            if (r2 >= 0) goto L39
            com.byazt.ym.q r8 = r6.hp     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L38
            java.lang.String r2 = r7.f28046a     // Catch: java.lang.Throwable -> L35
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L35
            java.lang.String r4 = "version is not valid"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L35
            r8.hp(r2, r3)     // Catch: java.lang.Throwable -> L35
            goto L38
        L35:
            r8 = move-exception
            r0 = r1
            goto L74
        L38:
            return r0
        L39:
            android.util.Pair r0 = r6.hp(r7, r8)     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L40
            return r0
        L40:
            monitor-enter(r7)     // Catch: java.lang.Throwable -> L35
            android.util.Pair r0 = r6.hp(r7, r8)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L4c
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L49
            return r0
        L49:
            r8 = move-exception
            r0 = r1
            goto L72
        L4c:
            java.lang.Object r0 = r7.hp(r8)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L59
            android.util.Pair r8 = new android.util.Pair     // Catch: java.lang.Throwable -> L49
            r8.<init>(r9, r0)     // Catch: java.lang.Throwable -> L49
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L49
            return r8
        L59:
            java.lang.String r0 = r7.f28046a     // Catch: java.lang.Throwable -> L49
            java.lang.Object r0 = r6.hp(r0, r8)     // Catch: java.lang.Throwable -> L49
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L71
            com.byazt.ym.j r8 = com.byazt.ym.j.getInstance()     // Catch: java.lang.Throwable -> L16
            int r9 = r7.w()     // Catch: java.lang.Throwable -> L6c
            r7.hp(r9)     // Catch: java.lang.Throwable -> L6c
            goto L7e
        L6c:
            r9 = move-exception
            r5 = r9
            r9 = r8
            r8 = r5
            goto L74
        L71:
            r8 = move-exception
        L72:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L71
            throw r8     // Catch: java.lang.Throwable -> L16
        L74:
            com.byazt.ym.q r1 = r6.hp
            if (r1 == 0) goto L7d
            java.lang.String r7 = r7.f28046a
            r1.hp(r7, r8)
        L7d:
            r8 = r9
        L7e:
            android.util.Pair r7 = new android.util.Pair
            r7.<init>(r8, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.sm.hp.hp(com.byazt.ym.gu, com.byazt.pg.hp, boolean):android.util.Pair");
    }

    private Pair hp(gu guVar, com.byazt.pg.hp hpVar) {
        Object objHp = guVar.hp(hpVar);
        if (!(objHp instanceof Function)) {
            return null;
        }
        Function functionL = com.byazt.glv.hp.l((Function) objHp);
        Function functionL2 = guVar.l();
        if (functionL2 == null) {
            functionL2 = com.byazt.ym.j.getInstance();
        }
        return new Pair(functionL2, functionL);
    }
}
