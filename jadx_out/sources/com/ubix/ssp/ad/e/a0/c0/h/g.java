package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import com.ubix.ssp.ad.core.util.myoaid.impl.huawei.AdvertisingIdClient;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.b.a;
import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
class g implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46170a;

    /* renamed from: b, reason: collision with root package name */
    private String f46171b;

    public class a implements m.a {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) {
            com.ubix.ssp.ad.e.a0.c0.i.b.a aVarA = a.AbstractBinderC0796a.a(iBinder);
            if (aVarA.g()) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("User has disabled advertising identifier");
            }
            return aVarA.i();
        }
    }

    public g(Context context) {
        this.f46170a = context;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        Context context = this.f46170a;
        if (context == null || cVar == null) {
            return;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "pps_track_limit");
            u.e("trackLimit=" + string + "; and derestrict=" + cVar.a());
            if (!Boolean.parseBoolean(string) || cVar.a()) {
                String string2 = Settings.Global.getString(this.f46170a.getContentResolver(), "pps_oaid");
                if (TextUtils.isEmpty(string2) || string2.equals("00000000-0000-0000-0000-000000000000")) {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f46170a);
                    if (advertisingIdInfo != null && (cVar.a() || !advertisingIdInfo.isLimitAdTrackingEnabled())) {
                        u.e("HW_OAID", "get huawei oaid1");
                        string2 = advertisingIdInfo.getId();
                    }
                } else {
                    u.e("HW_OAID", "get huawei oaid2");
                }
                cVar.a(string2);
                return;
            }
            u.e("HW_OAID", "use default oaid");
            cVar.a("00000000-0000-0000-0000-000000000000");
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            if (TextUtils.isEmpty(this.f46171b) && !a()) {
                cVar.a(new com.ubix.ssp.ad.e.a0.c0.e("Huawei Advertising ID not available"));
                return;
            }
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage(this.f46171b);
            m.a(this.f46170a, intent, cVar, new a());
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46170a;
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.f46171b = "com.huawei.hwid";
                return true;
            }
            if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.f46171b = "com.huawei.hwid.tv";
                return true;
            }
            this.f46171b = "com.huawei.hms";
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
