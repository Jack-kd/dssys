package com.beizi.fusion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.beizi.fusion.ce;
import com.beizi.fusion.ek;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
class wk implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17260a;

    /* renamed from: b, reason: collision with root package name */
    private String f17261b;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) throws RemoteException {
            try {
                return wk.this.a(iBinder);
            } catch (RemoteException e2) {
                throw e2;
            } catch (wj e3) {
                throw e3;
            } catch (Exception e4) {
                throw new wj(e4);
            }
        }
    }

    public wk(Context context) {
        if (context instanceof Application) {
            this.f17260a = context;
        } else {
            this.f17260a = context.getApplicationContext();
        }
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f17260a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f17260a == null || mcVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        ek.a(this.f17260a, intent, mcVar, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(IBinder iBinder) {
        String packageName = this.f17260a.getPackageName();
        String str = this.f17261b;
        if (str == null) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f17260a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
            }
            String string = sb.toString();
            this.f17261b = string;
            return a(iBinder, packageName, string);
        }
        return a(iBinder, packageName, str);
    }

    private String a(IBinder iBinder, String str, String str2) {
        ce ceVarA = ce.a.a(iBinder);
        if (ceVarA != null) {
            return ceVarA.getSerID(str, str2, "OUID");
        }
        throw new wj("IOpenID is null");
    }
}
