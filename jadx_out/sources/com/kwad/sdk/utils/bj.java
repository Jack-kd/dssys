package com.kwad.sdk.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.CellInfo;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.kwad.sdk.service.ServiceProvider;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes4.dex */
public final class bj {
    private static Context bqf;
    private static Map<String, m> bqg = new HashMap();

    public static class a extends m<com.kwad.sdk.k.a.b> {
        private static com.kwad.sdk.k.a.b bqh;

        public a(boolean z2) {
            super(z2);
        }

        @RequiresApi(api = 17)
        @SuppressLint({"BlockedPrivateApi"})
        private static int a(CellInfo cellInfo) {
            if (cellInfo == null) {
                return -1;
            }
            try {
                return ((CellSignalStrength) ab.callMethod(cellInfo, "getCellSignalStrength", new Object[0])).getLevel();
            } catch (Throwable unused) {
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.kwad.sdk.utils.m
        /* renamed from: ek, reason: merged with bridge method [inline-methods] */
        public com.kwad.sdk.k.a.b cY(Context context) {
            int lac;
            int cid;
            if (be.readLocationDisable() || ((com.kwad.sdk.service.a.h) ServiceProvider.get(com.kwad.sdk.service.a.h.class)).ao(64L)) {
                return bqh;
            }
            com.kwad.sdk.k.a.b bVar = bqh;
            if (bVar != null) {
                return bVar;
            }
            CellInfo cellInfo = null;
            if (context == null || be.readLocationDisable()) {
                return null;
            }
            if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f31165g) == -1) {
                return null;
            }
            if (bt.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f31165g) == 0) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                CellLocation cellLocation = telephonyManager.getCellLocation();
                if (cellLocation instanceof CdmaCellLocation) {
                    CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                    cid = cdmaCellLocation.getBaseStationId();
                    lac = cdmaCellLocation.getNetworkId();
                } else if (cellLocation instanceof GsmCellLocation) {
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                    cid = gsmCellLocation.getCid();
                    lac = gsmCellLocation.getLac();
                } else {
                    lac = -1;
                    cid = -1;
                }
                Iterator<CellInfo> it = telephonyManager.getAllCellInfo().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    CellInfo next = it.next();
                    if (next != null && next.isRegistered()) {
                        cellInfo = next;
                        break;
                    }
                }
                bqh = new com.kwad.sdk.k.a.b(cid, lac, cellInfo != null ? a(cellInfo) : -1);
            }
            return bqh;
        }
    }

    public static class b extends m<com.kwad.sdk.k.a.f> {
        public b(boolean z2) {
            super(z2);
        }

        @Nullable
        private static com.kwad.sdk.k.a.f el(Context context) {
            com.kwad.sdk.k.a.f fVar = new com.kwad.sdk.k.a.f();
            fVar.bmF = bf.dX(context);
            fVar.bmE = bf.dV(context);
            return fVar;
        }

        @Override // com.kwad.sdk.utils.m
        @Nullable
        public final /* synthetic */ com.kwad.sdk.k.a.f cY(Context context) {
            return el(context);
        }
    }

    @Nullable
    public static com.kwad.sdk.k.a.b TB() {
        if (Wn()) {
            return (com.kwad.sdk.k.a.b) ic("baseStationEnable");
        }
        return null;
    }

    @Nullable
    public static com.kwad.sdk.k.a.f TC() {
        if (Wn()) {
            return (com.kwad.sdk.k.a.f) ic("simCardInfoEnable");
        }
        return null;
    }

    private static boolean Wn() {
        return bqf != null;
    }

    @Nullable
    private static <T> m<T> ib(String str) {
        try {
            return bqg.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    private static <T> T ic(String str) {
        m mVarIb = ib(str);
        if (mVarIb != null) {
            return (T) mVarIb.cX(bqf);
        }
        return null;
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        com.kwad.sdk.service.a.h hVar = (com.kwad.sdk.service.a.h) ServiceProvider.get(com.kwad.sdk.service.a.h.class);
        if (hVar == null) {
            com.kwad.sdk.core.d.c.d("SensitiveInfoCollectors", "init sdkConfigProvider is null");
            return;
        }
        if (!Wn()) {
            bqf = context.getApplicationContext();
            bqg.put("baseStationEnable", new a(hVar.FH()));
            bqg.put("simCardInfoEnable", new b(hVar.FF()));
            return;
        }
        if (bqg.containsKey("baseStationEnable")) {
            boolean zFH = hVar.FH();
            m mVarIb = ib("baseStationEnable");
            if (mVarIb != null) {
                mVarIb.cs(zFH);
            }
        }
        if (bqg.containsKey("simCardInfoEnable")) {
            boolean zFF = hVar.FF();
            m mVarIb2 = ib("simCardInfoEnable");
            if (mVarIb2 != null) {
                mVarIb2.cs(zFF);
            }
        }
    }
}
