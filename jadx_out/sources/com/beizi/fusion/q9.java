package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import com.beizi.fusion.ek;
import com.beizi.fusion.qk;

/* loaded from: classes2.dex */
class q9 implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15799a;

    /* renamed from: b, reason: collision with root package name */
    private String f15800b;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            qk qkVarA = qk.a.a(iBinder);
            if (qkVarA.isOaidTrackLimited()) {
                throw new wj("User has disabled advertising identifier");
            }
            return qkVarA.getOaid();
        }
    }

    public q9(Context context) {
        this.f15799a = context;
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f15799a;
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.f15800b = "com.huawei.hwid";
                return true;
            }
            if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.f15800b = "com.huawei.hwid.tv";
                return true;
            }
            this.f15800b = "com.huawei.hms";
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        Context context = this.f15799a;
        if (context == null || mcVar == null) {
            return;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
            if (!TextUtils.isEmpty(string)) {
                bk.a("Get oaid from global settings: " + string);
                mcVar.a(string);
                return;
            }
        } catch (Exception e2) {
            bk.a(e2);
        }
        if (TextUtils.isEmpty(this.f15800b) && !a()) {
            mcVar.a(new wj("Huawei Advertising ID not available"));
            return;
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(this.f15800b);
        ek.a(this.f15799a, intent, mcVar, new a());
    }
}
