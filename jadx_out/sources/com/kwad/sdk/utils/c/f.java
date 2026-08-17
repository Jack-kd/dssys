package com.kwad.sdk.utils.c;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.kuaishou.weapon.p0.g;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.cf;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes4.dex */
public final class f extends com.kwad.sdk.utils.c.a<List<cf.a>, a> {
    private static volatile boolean brE = false;

    public static class a {
        public Context mContext;
        public int maxSize;
    }

    public f() {
        super("ksad_wifi_info");
    }

    private static List<cf.a> a(a aVar) {
        WifiManager wifiManager;
        CopyOnWriteArrayList copyOnWriteArrayList = null;
        try {
            if (brE) {
                return null;
            }
            Context context = aVar.mContext;
            if (eG(context) || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi")) == null) {
                return null;
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
            try {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                List<ScanResult> scanResults = wifiManager.getScanResults();
                if (scanResults != null) {
                    for (ScanResult scanResult : scanResults) {
                        cf.a aVar2 = new cf.a();
                        aVar2.brG = scanResult.SSID;
                        aVar2.brH = scanResult.BSSID;
                        aVar2.level = scanResult.level;
                        if (connectionInfo.getBSSID() == null || scanResult.BSSID == null || !TextUtils.equals(connectionInfo.getBSSID().replace("\"", ""), scanResult.BSSID.replace("\"", "")) || connectionInfo.getSSID() == null || scanResult.SSID == null || !TextUtils.equals(connectionInfo.getSSID().replace("\"", ""), scanResult.SSID.replace("\"", ""))) {
                            copyOnWriteArrayList2.add(aVar2);
                        } else {
                            copyOnWriteArrayList2.add(0, aVar2);
                        }
                        if (copyOnWriteArrayList2.size() >= aVar.maxSize) {
                            break;
                        }
                    }
                }
                return copyOnWriteArrayList2;
            } catch (Exception e2) {
                e = e2;
                copyOnWriteArrayList = copyOnWriteArrayList2;
                brE = true;
                com.kwad.sdk.core.d.c.printStackTraceOnly(e);
                return copyOnWriteArrayList;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    private static String ab(List<cf.a> list) {
        try {
            return ac.Y(list).toString();
        } catch (Exception e2) {
            com.kwad.sdk.service.a.e eVar = (com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class);
            if (eVar == null) {
                return null;
            }
            eVar.gatherException(e2);
            return null;
        }
    }

    private static boolean eG(Context context) {
        return (context.getApplicationInfo().targetSdkVersion < 29 || Build.VERSION.SDK_INT < 29) ? ContextCompat.checkSelfPermission(context, g.f31165g) == -1 && ContextCompat.checkSelfPermission(context, g.f31166h) == -1 : ContextCompat.checkSelfPermission(context, g.f31165g) == -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.kwad.sdk.utils.c.a
    /* renamed from: iF, reason: merged with bridge method [inline-methods] */
    public List<cf.a> iA(String str) {
        try {
            return ac.a(str, new com.kwad.sdk.core.c<cf.a>() { // from class: com.kwad.sdk.utils.c.f.1
                private static cf.a XI() {
                    return new cf.a();
                }

                @Override // com.kwad.sdk.core.c
                public final /* synthetic */ com.kwad.sdk.core.b IA() {
                    return XI();
                }
            });
        } catch (Exception e2) {
            com.kwad.sdk.service.a.e eVar = (com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class);
            if (eVar == null) {
                return null;
            }
            eVar.gatherException(e2);
            return null;
        }
    }

    @Override // com.kwad.sdk.utils.c.a
    public final /* synthetic */ String dataToString(List<cf.a> list) {
        return ab(list);
    }

    @Override // com.kwad.sdk.utils.c.a
    public final /* synthetic */ List<cf.a> x(a aVar) {
        return a(aVar);
    }
}
