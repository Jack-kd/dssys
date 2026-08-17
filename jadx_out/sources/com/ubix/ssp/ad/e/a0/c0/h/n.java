package com.ubix.ssp.ad.e.a0.c0.h;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.g.a;
import java.security.MessageDigest;

/* loaded from: classes5.dex */
class n implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46183a;

    /* renamed from: b, reason: collision with root package name */
    private String f46184b;

    public class a implements m.a {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) throws RemoteException {
            try {
                return n.this.a(iBinder);
            } catch (RemoteException e2) {
                throw e2;
            } catch (com.ubix.ssp.ad.e.a0.c0.e e3) {
                throw e3;
            } catch (Exception e4) {
                throw new com.ubix.ssp.ad.e.a0.c0.e(e4);
            }
        }
    }

    public n(Context context) {
        if (context instanceof Application) {
            this.f46183a = context;
        } else {
            this.f46183a = context.getApplicationContext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"PackageManagerGetSignatures"})
    public String a(IBinder iBinder) {
        String packageName = this.f46183a.getPackageName();
        String str = this.f46184b;
        if (str != null) {
            return a(iBinder, packageName, str);
        }
        byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f46183a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArrDigest) {
            sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
        }
        String string = sb.toString();
        this.f46184b = string;
        return a(iBinder, packageName, string);
    }

    private String a(IBinder iBinder, String str, String str2) {
        com.ubix.ssp.ad.e.a0.c0.i.g.a aVarA = a.AbstractBinderC0807a.a(iBinder);
        if (aVarA != null) {
            return aVarA.a(str, str2, "OUID");
        }
        throw new com.ubix.ssp.ad.e.a0.c0.e("IOpenID is null");
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46183a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        m.a(this.f46183a, intent, cVar, new a());
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46183a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
