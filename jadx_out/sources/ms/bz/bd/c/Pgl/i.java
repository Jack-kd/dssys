package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class i extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    String name = networkInterfaceNextElement.getName();
                    if (!TextUtils.isEmpty(name) && !inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address) && name.startsWith((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b10f18", new byte[]{97, 62, 77, 23, 26}))) {
                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5dca60", new byte[]{45, 104, 21, 1, 40, 35, com.sigmob.sdk.archives.tar.e.f35444J, 87, com.sigmob.sdk.archives.tar.e.f35449O, 34, com.sigmob.sdk.archives.tar.e.f35449O, 38, 30, 20, 4, 34, 108});
                        networkInterfaceNextElement.getName();
                        return networkInterfaceNextElement.getName();
                    }
                }
            }
            return "";
        } catch (SocketException unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "516e3b", new byte[]{35, com.sigmob.sdk.archives.tar.e.f35448N, 81, 81, 37, 101, 23, 20, 99, 39, 33, 32, 86, 81, 10, 116, 63, 28, 61});
            return "";
        }
    }
}
