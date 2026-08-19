package com.octopus.ad.d.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import com.octopus.ad.d.a.a.a.g.a.a.a;
import com.octopus.ad.d.a.b.l;

/* loaded from: classes4.dex */
public class f implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33975a;

    /* renamed from: b, reason: collision with root package name */
    private String f33976b;

    public f(Context context) {
        this.f33975a = context;
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33975a;
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.f33976b = "com.huawei.hwid";
                return true;
            }
            if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.f33976b = "com.huawei.hwid.tv";
                return true;
            }
            this.f33976b = "com.huawei.hms";
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        Context context = this.f33975a;
        if (context == null || cVar == null) {
            return;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
            if (!TextUtils.isEmpty(string)) {
                com.octopus.ad.d.a.f.a("Get oaid from global settings: " + string);
                cVar.a(string);
                return;
            }
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
        }
        if (TextUtils.isEmpty(this.f33976b) && !a()) {
            cVar.a(new com.octopus.ad.d.a.e("Huawei Advertising ID not available"));
            return;
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(this.f33976b);
        l.a(this.f33975a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.f.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                com.octopus.ad.d.a.a.a.g.a.a.a aVarA = a.AbstractBinderC0740a.a(iBinder);
                if (aVarA.b()) {
                    throw new com.octopus.ad.d.a.e("User has disabled advertising identifier");
                }
                return aVarA.a();
            }
        });
    }
}
