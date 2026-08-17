package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.uodis.opendevice.aidl.OpenDeviceIdentifierService;

/* loaded from: classes2.dex */
class p9 implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15644a;

    /* renamed from: b, reason: collision with root package name */
    private String f15645b;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            OpenDeviceIdentifierService openDeviceIdentifierServiceAsInterface = OpenDeviceIdentifierService.Stub.asInterface(iBinder);
            if (openDeviceIdentifierServiceAsInterface.isOaidTrackLimited()) {
                throw new vj("User has disabled advertising identifier");
            }
            return openDeviceIdentifierServiceAsInterface.getOaid();
        }
    }

    public p9(Context context) {
        this.f15644a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f15644a;
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.f15645b = "com.huawei.hwid";
                return true;
            }
            if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.f15645b = "com.huawei.hwid.tv";
                return true;
            }
            this.f15645b = "com.huawei.hms";
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        Context context = this.f15644a;
        if (context == null || lcVar == null) {
            return;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
            if (!TextUtils.isEmpty(string)) {
                ak.a("Get oaid from global settings: " + string);
                lcVar.a(string);
                return;
            }
        } catch (Exception e2) {
            ak.a(e2);
        }
        if (TextUtils.isEmpty(this.f15645b) && !a()) {
            lcVar.a(new vj("Huawei Advertising ID not available"));
            return;
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(this.f15645b);
        fk.a(this.f15644a, intent, lcVar, new a());
    }
}
