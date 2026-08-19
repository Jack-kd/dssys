package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.pm.Signature;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class k extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Context contextL = pblw.hp().l();
        Signature[] signatureArr = contextL.getPackageManager().getPackageInfo(contextL.getPackageName(), 64).signatures;
        if (signatureArr == null || signatureArr.length <= 0) {
            return null;
        }
        return signatureArr[0].toByteArray();
    }
}
