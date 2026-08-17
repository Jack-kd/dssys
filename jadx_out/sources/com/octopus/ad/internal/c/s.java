package com.octopus.ad.internal.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.octopus.ad.a.g;
import com.octopus.ad.utils.OctUtil;

/* loaded from: classes4.dex */
public class s {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void a(Context context) {
        int iB;
        int iB2;
        if (context != null) {
            r rVarA = r.a();
            try {
                char c2 = 65535;
                if (com.octopus.ad.internal.q.a().f35014e > 1) {
                    iB = o.b(context, TKDownloadReason.KSAD_TK_NET, -1);
                    iB2 = o.b(context, "isp", -1);
                } else {
                    iB = -1;
                    iB2 = -1;
                }
                if (iB == -1) {
                    g.d dVarC = c(context);
                    rVarA.f34622a = dVarC;
                    o.a(context, TKDownloadReason.KSAD_TK_NET, Integer.valueOf(dVarC.a()));
                } else {
                    rVarA.f34622a = g.d.a(iB);
                }
                if (iB2 == -1 && com.octopus.ad.internal.q.a().f35018i) {
                    String strA = OctUtil.a().a(context, 1001);
                    if (TextUtils.isEmpty(strA)) {
                        rVarA.f34623b = g.c.ISP_UNKNOWN;
                    } else {
                        int iHashCode = strA.hashCode();
                        if (iHashCode != 49679477) {
                            switch (iHashCode) {
                                case 49679470:
                                    if (strA.equals("46000")) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                                case 49679471:
                                    if (strA.equals("46001")) {
                                        c2 = 3;
                                        break;
                                    }
                                    break;
                                case 49679472:
                                    if (strA.equals("46002")) {
                                        c2 = 1;
                                        break;
                                    }
                                    break;
                                case 49679473:
                                    if (strA.equals("46003")) {
                                        c2 = 4;
                                        break;
                                    }
                                    break;
                            }
                        } else if (strA.equals("46007")) {
                            c2 = 2;
                        }
                        if (c2 == 0 || c2 == 1 || c2 == 2) {
                            rVarA.f34623b = g.c.ISP_CN_MOBILE;
                        } else if (c2 == 3) {
                            rVarA.f34623b = g.c.ISP_CN_UNICOM;
                        } else if (c2 != 4) {
                            rVarA.f34623b = g.c.ISP_OTHER;
                        } else {
                            rVarA.f34623b = g.c.ISP_CN_TEL;
                        }
                    }
                    o.a(context, "isp", Integer.valueOf(rVarA.f34623b.a()));
                } else {
                    rVarA.f34623b = g.c.a(iB2);
                }
            } catch (Throwable th) {
                com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
            }
            rVarA.f34624c = "0.0.0.0";
        }
    }

    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    private static g.d c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager != null ? connectivityManager.getNetworkInfo(1) : null;
        if (networkInfo != null && networkInfo.isConnected()) {
            return g.d.NET_WIFI;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            if (ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0) {
                switch (telephonyManager.getNetworkType()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return g.d.NET_2G;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return g.d.NET_3G;
                    case 13:
                        return g.d.NET_4G;
                    default:
                        return g.d.NET_OTHER;
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
        return g.d.NET_UNKNOWN;
    }
}
