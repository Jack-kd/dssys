package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.beizi.fusion.e7;
import com.beizi.fusion.ok;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class mk {

    /* renamed from: a, reason: collision with root package name */
    private Context f15102a;

    /* renamed from: c, reason: collision with root package name */
    private String f15104c;

    /* renamed from: d, reason: collision with root package name */
    ok f15105d;

    /* renamed from: b, reason: collision with root package name */
    public String f15103b = "OUID";

    /* renamed from: e, reason: collision with root package name */
    ServiceConnection f15106e = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            mk.this.f15105d = ok.a.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            mk.this.f15105d = null;
        }
    }

    public mk(Context context) {
        this.f15102a = context;
    }

    public String a(e7.a aVar) throws NoSuchAlgorithmException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (this.f15102a.bindService(intent, this.f15106e, 1)) {
            try {
                SystemClock.sleep(3000L);
            } catch (Exception e2) {
                rm.a(e2);
            }
            if (this.f15105d != null) {
                String strA = a("OUID");
                if (aVar == null) {
                    return strA;
                }
                aVar.a(strA);
                return strA;
            }
        }
        return null;
    }

    private String a(String str) throws NoSuchAlgorithmException {
        Signature[] signatureArr;
        String packageName = this.f15102a.getPackageName();
        if (this.f15104c == null) {
            String string = null;
            try {
                signatureArr = this.f15102a.getPackageManager().getPackageInfo(packageName, 64).signatures;
            } catch (Exception e2) {
                rm.a(e2);
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
                    rm.a(e3);
                }
            }
            this.f15104c = string;
        }
        return ((ok.a.C0167a) this.f15105d).getSerID(packageName, this.f15104c, str);
    }
}
