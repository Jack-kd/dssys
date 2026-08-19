package ms.bz.bd.c.Pgl;

import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import ms.bz.bd.c.Pgl.pblz;
import org.json.JSONArray;

/* loaded from: classes5.dex */
final class j extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        JSONArray jSONArray = new JSONArray();
        try {
            DhcpInfo dhcpInfo = ((WifiManager) pblw.hp().l().getApplicationContext().getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "762556", new byte[]{com.sigmob.sdk.archives.tar.e.f35443I, 61, 71, 72}))).getDhcpInfo();
            jSONArray.put((dhcpInfo.dns1 & 255) + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "91f699", new byte[]{102})) + ((dhcpInfo.dns1 >> 8) & 255) + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5019a5", new byte[]{106})) + ((dhcpInfo.dns1 >> 16) & 255) + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "870654", new byte[]{com.sigmob.sdk.archives.tar.e.f35454T})) + ((dhcpInfo.dns1 >> 24) & 255));
            jSONArray.put((dhcpInfo.dns2 & 255) + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7758f6", new byte[]{104})) + ((dhcpInfo.dns2 >> 8) & 255) + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "941983", new byte[]{102})) + ((dhcpInfo.dns2 >> 16) & 255) + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "46e41c", new byte[]{107})) + ((dhcpInfo.dns2 >> 24) & 255));
        } catch (Throwable unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "03a5a4", new byte[]{44, 56, 26, 126, 90, 47});
        }
        return jSONArray.toString();
    }
}
