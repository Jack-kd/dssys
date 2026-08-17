package com.octopus.ad.d.a.b;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.d.a.a.a.e.a.a;
import com.octopus.ad.d.a.b.l;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes4.dex */
public class m implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33988a;

    /* renamed from: b, reason: collision with root package name */
    private String f33989b;

    public m(Context context) {
        if (context instanceof Application) {
            this.f33988a = context;
        } else {
            this.f33988a = context.getApplicationContext();
        }
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33988a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33988a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        l.a(this.f33988a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.m.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                try {
                    return m.this.a(iBinder);
                } catch (RemoteException e2) {
                    throw e2;
                } catch (com.octopus.ad.d.a.e e3) {
                    throw e3;
                } catch (Exception e4) {
                    throw new com.octopus.ad.d.a.e(e4);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"PackageManagerGetSignatures"})
    public String a(IBinder iBinder) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, RemoteException, com.octopus.ad.d.a.e {
        String packageName = this.f33988a.getPackageName();
        String str = this.f33989b;
        if (str == null) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f33988a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
            }
            String string = sb.toString();
            this.f33989b = string;
            return a(iBinder, packageName, string);
        }
        return a(iBinder, packageName, str);
    }

    private String a(IBinder iBinder, String str, String str2) throws RemoteException, com.octopus.ad.d.a.e {
        com.octopus.ad.d.a.a.a.e.a.a aVarA = a.AbstractBinderC0736a.a(iBinder);
        if (aVarA != null) {
            return aVarA.a(str, str2, "OUID");
        }
        throw new com.octopus.ad.d.a.e("IOpenID is null");
    }
}
