package com.beizi.fusion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.heytap.openid.IOpenID;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
class vk implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f16689a;

    /* renamed from: b, reason: collision with root package name */
    private String f16690b;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) throws RemoteException {
            try {
                return vk.this.a(iBinder);
            } catch (RemoteException e2) {
                throw e2;
            } catch (vj e3) {
                throw e3;
            } catch (Exception e4) {
                throw new vj(e4);
            }
        }
    }

    public vk(Context context) {
        if (context instanceof Application) {
            this.f16689a = context;
        } else {
            this.f16689a = context.getApplicationContext();
        }
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f16689a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.heytap.openid", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f16689a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        fk.a(this.f16689a, intent, lcVar, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(IBinder iBinder) {
        String packageName = this.f16689a.getPackageName();
        String str = this.f16690b;
        if (str == null) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f16689a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
            }
            String string = sb.toString();
            this.f16690b = string;
            return a(iBinder, packageName, string);
        }
        return a(iBinder, packageName, str);
    }

    private String a(IBinder iBinder, String str, String str2) {
        IOpenID iOpenIDAsInterface = IOpenID.Stub.asInterface(iBinder);
        if (iOpenIDAsInterface != null) {
            return iOpenIDAsInterface.getSerID(str, str2, "OUID");
        }
        throw new vj("IOpenID is null");
    }
}
