package ms.bz.bd.c.Pgl;

import android.telephony.TelephonyManager;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class l extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Boolean bool = Boolean.FALSE;
        TelephonyManager telephonyManager = (TelephonyManager) pblw.hp().l().getApplicationContext().getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "694b61", new byte[]{com.sigmob.sdk.archives.tar.e.f35449O, com.sigmob.sdk.archives.tar.e.f35445K, 72, 24, 12}));
        return (telephonyManager == null || telephonyManager.getSimState() != 5) ? bool : Boolean.TRUE;
    }
}
