package com.byazt.cm;

import android.os.SystemClock;
import com.anythink.core.common.d.i;
import com.byazt.uhg.k;
import com.byazt.uhg.q;
import com.byazt.uhg.u;
import com.byazt.uhg.xs;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 725, 28})
/* loaded from: classes2.dex */
public class hp {
    public static volatile long hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f18895l = "0";

    @com.byazt.kj.hp(hp = {0, 1, 725, 170})
    /* renamed from: com.byazt.cm.hp$hp, reason: collision with other inner class name */
    public static class C0202hp implements q {
        @Override // com.byazt.uhg.q
        public u hp(q.hp hpVar) throws IOException {
            xs xsVarA;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            k kVarHp = hpVar.hp();
            u uVarHp = hpVar.hp(kVarHp);
            if (!"GET".equalsIgnoreCase(kVarHp.jx()) || (xsVarA = uVarHp.a()) == null) {
                return uVarHp;
            }
            long jHp = xsVarA.hp();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            if (jElapsedRealtime2 > 0 && jHp > 10240) {
                String unused = hp.f18895l = String.format("%.2f", Double.valueOf(((jHp / 1024.0d) / jElapsedRealtime2) * 1000.0d));
                long unused2 = hp.hp = System.currentTimeMillis();
                String unused3 = hp.f18895l;
            }
            return uVarHp;
        }
    }

    public static String hp() {
        if (System.currentTimeMillis() - hp < i.l.f2676a) {
            return f18895l;
        }
        return "0";
    }
}
