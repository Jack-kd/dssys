package ms.bz.bd.c.Pgl;

import java.util.Locale;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class h extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        String str2;
        try {
            Locale locale = pblw.hp().l().getResources().getConfiguration().locale;
            str2 = locale.getLanguage() + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "581b0f", new byte[]{27})) + locale.getCountry();
        } catch (Throwable unused) {
            str2 = null;
        }
        return v1.hp(str2);
    }
}
