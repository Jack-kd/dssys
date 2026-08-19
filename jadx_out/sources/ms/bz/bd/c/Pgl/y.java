package ms.bz.bd.c.Pgl;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class y extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        String string = null;
        try {
            WifiInfo connectionInfo = ((WifiManager) pblw.hp().l().getApplicationContext().getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e35a0f", new byte[]{99, 56, com.anythink.core.common.s.a.c.f7561b, 28}))).getConnectionInfo();
            Method declaredMethod = connectionInfo.getClass().getDeclaredMethod(new String(pblr.hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a3afc9", new byte[]{38, 102, 68, 71, 11, 122, com.sigmob.sdk.archives.tar.e.f35448N, 75, com.sigmob.sdk.archives.tar.e.f35454T, 102, 36, 96, 68, 70, 10, 122, com.sigmob.sdk.archives.tar.e.f35447M, com.anythink.core.common.s.a.c.f7561b, 102, 99, 39, 98, 69, 65}))), null);
            declaredMethod.setAccessible(true);
            string = Integer.toString(((Integer) declaredMethod.invoke(connectionInfo, null)).intValue());
        } catch (Throwable unused) {
        }
        return TextUtils.isEmpty(string) ? (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "211cef", new byte[]{115}) : string.trim();
    }
}
