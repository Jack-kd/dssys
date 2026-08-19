package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.SharedPreferences;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class r extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Context contextL = pblw.hp().l();
        String[] strArrSplit = str.split((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cfbc63", new byte[]{78, com.sigmob.sdk.archives.tar.e.f35452R}));
        String str2 = strArrSplit[0];
        String str3 = strArrSplit[1];
        SharedPreferences.Editor editorEdit = com.byazt.rz.l.l(contextL, str2, 0).edit();
        editorEdit.putString(str3, (String) obj);
        editorEdit.commit();
        return null;
    }
}
