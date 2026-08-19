package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.Intent;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class s extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Context contextL = pblw.hp().l();
        String[] strArr = (String[]) obj;
        if (contextL == null || str == null || strArr == null || strArr.length % 2 != 0) {
            return null;
        }
        Intent intent = new Intent(str);
        intent.setPackage(contextL.getPackageName());
        for (int i2 = 0; i2 < strArr.length; i2 += 2) {
            intent.putExtra(strArr[i2], strArr[i2 + 1]);
        }
        contextL.sendBroadcast(intent);
        return null;
    }
}
