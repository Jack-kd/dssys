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
import com.beizi.fusion.uk;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class sk {

    /* renamed from: a, reason: collision with root package name */
    private Context f16254a;

    /* renamed from: c, reason: collision with root package name */
    private String f16256c;

    /* renamed from: d, reason: collision with root package name */
    uk f16257d;

    /* renamed from: b, reason: collision with root package name */
    public String f16255b = "OUID";

    /* renamed from: e, reason: collision with root package name */
    ServiceConnection f16258e = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            sk.this.f16257d = uk.a.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            sk.this.f16257d = null;
        }
    }

    public sk(Context context) {
        this.f16254a = context;
    }

    public String a(d7.b bVar) throws NoSuchAlgorithmException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (this.f16254a.bindService(intent, this.f16258e, 1)) {
            try {
                SystemClock.sleep(3000L);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (this.f16257d != null) {
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
        String packageName = this.f16254a.getPackageName();
        if (this.f16256c == null) {
            String string = null;
            try {
                signatureArr = this.f16254a.getPackageManager().getPackageInfo(packageName, 64).signatures;
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
            this.f16256c = string;
        }
        return ((uk.a.C0173a) this.f16257d).getSerID(packageName, this.f16256c, str);
    }
}
