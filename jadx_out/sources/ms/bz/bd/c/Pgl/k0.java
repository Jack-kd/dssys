package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.umeng.analytics.pro.ek;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class k0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        double dDoubleValue;
        Context contextL = pblw.hp().l();
        try {
            Class<?> cls = Class.forName(new String(pblr.hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7e2422", new byte[]{112, com.sigmob.sdk.archives.tar.e.f35446L, 23, 70, 91, 33, 102, 65, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35447M, 112, 98, 23, 20, 90, 119, 98, 66, com.sigmob.sdk.archives.tar.e.f35447M, 61, 112, com.sigmob.sdk.archives.tar.e.f35445K, 19, 69, 91, 124, 98, 65, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35442H, 112, com.sigmob.sdk.archives.tar.e.f35444J, 22, 18, 91, 32, 98, 21, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35454T, 116, 98, 23, 70, 90, 118, 102, 65, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35446L, 112, 97, 22, 23, 91, 112, 99, 22, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35446L, 113, com.sigmob.sdk.archives.tar.e.f35447M, 23, 70, 91, 115, 98, 29, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35454T, 112, com.sigmob.sdk.archives.tar.e.f35444J}))));
            Object objNewInstance = cls.getConstructor(Context.class).newInstance(contextL);
            Method declaredMethod = cls.getDeclaredMethod(new String(pblr.hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1aae28", new byte[]{118, com.sigmob.sdk.archives.tar.e.f35446L, 68, 68, 90, 123, 102, 17, com.sigmob.sdk.archives.tar.e.f35454T, 99, 118, com.sigmob.sdk.archives.tar.e.f35448N, 69, 67, 91, 126, 100, 23, 102, 96, 117, com.sigmob.sdk.archives.tar.e.f35445K, 68, 23, 90, com.sigmob.sdk.archives.tar.e.f35452R, 100, 21, com.sigmob.sdk.archives.tar.e.f35454T, com.sigmob.sdk.archives.tar.e.f35454T}))), String.class);
            declaredMethod.setAccessible(true);
            dDoubleValue = ((Double) declaredMethod.invoke(objNewInstance, new String(pblr.hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6067e0", new byte[]{113, 96, 19, 18, ek.f49293k, 115, 98, 69, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, 112, 96, 18, 26, 8, 34, 99, 66, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35448N, 112, 98, 19, 18, 12, 116, 99, 72, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35445K, 112, 107}))))).doubleValue();
        } catch (Throwable unused) {
            dDoubleValue = 0.0d;
        }
        return Integer.toString((int) dDoubleValue);
    }
}
