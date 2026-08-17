package com.volcengine.mobsecBiz.metasec.ml;

import android.content.Context;
import com.volcengine.mobsecBiz.matrix.pgla;
import ms.bz.bd.c.Pgl.p0;
import ms.bz.bd.c.Pgl.pblz;
import ms.bz.bd.c.Pgl.q0;

/* loaded from: classes5.dex */
public final class PglMSManagerUtils {
    private PglMSManagerUtils() {
    }

    public static synchronized PglMSManager get(String str) {
        p0 p0VarL;
        p0VarL = q0.l(str);
        return p0VarL != null ? new PglMSManager(p0VarL) : null;
    }

    public static synchronized boolean init(Context context, PglMSConfig pglMSConfig) {
        return q0.hp(context, pglMSConfig.a());
    }

    public static synchronized void initToken(String str) {
        q0.hp(str);
    }

    public static void pause() {
        int i2 = q0.hp;
        int i3 = pblz.hp;
        pgla.a(67108868, 0, 0L, null, null);
    }

    public static void resume() {
        int i2 = q0.hp;
        int i3 = pblz.hp;
        pgla.a(67108869, 0, 0L, null, null);
    }

    public static String versionInfo() {
        int i2 = q0.hp;
        int i3 = pblz.hp;
        return (String) pgla.a(67108867, 0, 0L, null, null);
    }
}
