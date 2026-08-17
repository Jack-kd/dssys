package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.beizi.fusion.d7;
import com.beizi.fusion.pk;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class nk {

    /* renamed from: a, reason: collision with root package name */
    private Context f15327a;

    /* renamed from: c, reason: collision with root package name */
    private String f15329c;

    /* renamed from: d, reason: collision with root package name */
    pk f15330d;

    /* renamed from: b, reason: collision with root package name */
    public String f15328b = "OUID";

    /* renamed from: e, reason: collision with root package name */
    ServiceConnection f15331e = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            nk.this.f15330d = pk.a.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            nk.this.f15330d = null;
        }
    }

    public nk(Context context) {
        this.f15327a = context;
    }

    public String a(d7.b bVar) throws NoSuchAlgorithmException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (this.f15327a.bindService(intent, this.f15331e, 1)) {
            try {
                SystemClock.sleep(3000L);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (this.f15330d != null) {
                String strA = a("OUID");
                if (bVar == null) {
                    return strA;
                }
                bVar.a(strA);
                return strA;
            }
        }
        return null;
    }

    private String a(String str) throws NoSuchAlgorithmException {
        Signature[] signatureArr;
        String packageName = this.f15327a.getPackageName();
        if (this.f15329c == null) {
            String string = null;
            try {
                signatureArr = this.f15327a.getPackageManager().getPackageInfo(packageName, 64).signatures;
            } catch (Exception e2) {
                e2.printStackTrace();
                signatureArr = null;
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] bArrDigest = messageDigest.digest(byteArray);
                        StringBuilder sb = new StringBuilder();
                        for (byte b3 : bArrDigest) {
                            sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
                        }
                        string = sb.toString();
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            this.f15329c = string;
        }
        return ((pk.a.C0168a) this.f15330d).getSerID(packageName, this.f15329c, str);
    }
}
