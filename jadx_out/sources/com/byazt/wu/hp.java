package com.byazt.wu;

import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.lca.jx;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 480, 28})
/* loaded from: classes3.dex */
public class hp {
    public static AtomicBoolean hp;

    public static boolean a() {
        return d.jx;
    }

    public static boolean eb() {
        return a() && s.u().nu();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean hp() {
        /*
            r0 = 0
            java.util.concurrent.atomic.AtomicBoolean r1 = com.byazt.wu.hp.hp     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto La
            boolean r0 = r1.get()     // Catch: java.lang.Throwable -> L46
            return r0
        La:
            android.content.Context r1 = com.byazt.jz.sz.getContext()     // Catch: java.lang.Throwable -> L46
            r2 = 0
            java.io.File r1 = com.byazt.ymw.eb.hp(r1, r0, r2)     // Catch: java.lang.Throwable -> L46
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L46
            java.lang.String r1 = r1.getParent()     // Catch: java.lang.Throwable -> L46
            java.lang.String r3 = "/pangle_p/com.byted.pangle"
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L46
            r2.getAbsolutePath()     // Catch: java.lang.Throwable -> L46
            boolean r1 = r2.exists()     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto L41
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L46
            java.lang.String r3 = "^version-(\\d+)$"
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L46
            r2.listFiles()     // Catch: java.lang.Throwable -> L46
            com.byazt.wu.hp$1 r3 = new com.byazt.wu.hp$1     // Catch: java.lang.Throwable -> L46
            r3.<init>()     // Catch: java.lang.Throwable -> L46
            java.io.File[] r1 = r2.listFiles(r3)     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto L41
            int r1 = r1.length     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto L41
            r1 = 1
            goto L42
        L41:
            r1 = r0
        L42:
            hp(r1)     // Catch: java.lang.Throwable -> L46
            return r1
        L46:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wu.hp.hp():boolean");
    }

    public static boolean j() {
        return jx.hp().q() == 0;
    }

    public static boolean jx() {
        Boolean bool = d.hp;
        return false;
    }

    public static boolean l() {
        return a() && j() && hp();
    }

    public static boolean s() {
        return jx.hp().e();
    }

    public static int w() {
        return d.jx ? 1 : 0;
    }

    public static void hp(boolean z2) {
        if (hp == null) {
            hp = new AtomicBoolean();
        }
        hp.set(z2);
        s.u().v();
    }
}
