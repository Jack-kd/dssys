package com.kwad.sdk.mobileid;

import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.kuaishou.weapon.p0.g;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.mobileid.a.a.a;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.be;
import com.kwad.sdk.utils.bf;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import com.octopus.ad.ADBidEvent;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class a {
    private static String TAG = "MobileIdManager";
    public static com.kwad.sdk.mobileid.a.a.a biT;
    private static Context mContext;

    private static d Se() {
        Context context = mContext;
        int iE = aq.e(context, bf.dT(context), be.useNetworkStateDisable());
        try {
            if (!aq.isWifiConnected(mContext)) {
                d dVar = new d(true, "uaidTokenCanRequest");
                new com.kwad.sdk.mobileid.a.a().cD(mContext);
                com.kwad.sdk.core.d.c.w(TAG, "requestMobileIdByMobileData");
                return dVar;
            }
            boolean z2 = iE == 1;
            boolean zSf = Sf();
            if (!z2 || zSf) {
                return z2 ? new d(false, "noRequestByBrand") : !zSf ? new d(false, "noRequestByNoCMCC") : new d(false, "noRequestByBrandAndCMCC");
            }
            d dVar2 = new d(true, "uaidTokenCanRequestByWifi");
            i.schedule(new bi() { // from class: com.kwad.sdk.mobileid.a.1
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() {
                    a.cC(a.mContext);
                    com.kwad.sdk.core.d.c.w(a.TAG, "requestMobileIdChangeToyMobileData");
                    i.schedule(new bi() { // from class: com.kwad.sdk.mobileid.a.1.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            a.Sg();
                            com.kwad.sdk.core.d.c.w(a.TAG, "schedule unbindNetwork");
                        }
                    }, 2L, TimeUnit.SECONDS);
                }
            }, e.KH(), TimeUnit.SECONDS);
            return dVar2;
        } catch (Exception e2) {
            d dVar3 = new d(false, "noRequestByException");
            dVar3.hb(e2.getMessage());
            ServiceProvider.reportSdkCaughtException(e2);
            return dVar3;
        }
    }

    private static boolean Sf() {
        String str = Build.MANUFACTURER;
        com.kwad.sdk.core.d.c.w(TAG, "isHuaweiOrHonorDevice manufacturer: " + str);
        return ADBidEvent.HUAWEI.equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str);
    }

    public static void Sg() {
        synchronized (a.class) {
            try {
                if (biT != null) {
                    com.kwad.sdk.core.d.c.w(TAG, "unbindNetwork");
                    biT.Sg();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static d Sh() {
        boolean zVg = ai.Vg();
        return new d(zVg && !ai.Vs() && Si(), !zVg ? "noRequestByUaidEnable" : ai.Vs() ? "noRequestByUaidExist" : !Si() ? "noNetworkPermission" : "uaidTokenCanRequest");
    }

    private static boolean Si() {
        String[] strArr = {g.f31160b, g.f31162d, "android.permission.CHANGE_NETWORK_STATE", g.f31159a};
        for (int i2 = 0; i2 < 4; i2++) {
            if (ContextCompat.checkSelfPermission(ServiceProvider.getContext(), strArr[i2]) != 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cC(final Context context) {
        if (biT == null) {
            biT = new com.kwad.sdk.mobileid.a.a.a();
        }
        c.b(context, new d(true, "uaidTokenCanRequestByWifiPre"));
        biT.a(context, new a.InterfaceC0632a() { // from class: com.kwad.sdk.mobileid.a.2
            @Override // com.kwad.sdk.mobileid.a.a.a.InterfaceC0632a
            public final void Sl() {
                new com.kwad.sdk.mobileid.a.a().d(context, true);
            }
        });
    }

    public static void init(Context context) {
        mContext = context;
        d dVarSh = Sh();
        if (dVarSh.isSuccess()) {
            dVarSh = Se();
            com.kwad.sdk.core.d.c.d(TAG, "init success :" + dVarSh);
        } else {
            com.kwad.sdk.core.d.c.d(TAG, "init error: " + dVarSh.Sm());
        }
        c.a(context, dVarSh);
    }
}
