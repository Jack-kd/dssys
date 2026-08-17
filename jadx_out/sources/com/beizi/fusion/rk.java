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
import com.beizi.fusion.tk;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class rk {

    /* renamed from: a, reason: collision with root package name */
    private Context f15986a;

    /* renamed from: c, reason: collision with root package name */
    private String f15988c;

    /* renamed from: d, reason: collision with root package name */
    tk f15989d;

    /* renamed from: b, reason: collision with root package name */
    public String f15987b = "OUID";

    /* renamed from: e, reason: collision with root package name */
    ServiceConnection f15990e = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            rk.this.f15989d = tk.a.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            rk.this.f15989d = null;
        }
    }

    public rk(Context context) {
        this.f15986a = context;
    }

    public String a(e7.a aVar) throws NoSuchAlgorithmException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (this.f15986a.bindService(intent, this.f15990e, 1)) {
            try {
                SystemClock.sleep(3000L);
            } catch (Exception e2) {
                rm.a(e2);
            }
            if (this.f15989d != null) {
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
        String packageName = this.f15986a.getPackageName();
        if (this.f15988c == null) {
            String string = null;
            try {
                signatureArr = this.f15986a.getPackageManager().getPackageInfo(packageName, 64).signatures;
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
            this.f15988c = string;
        }
        return ((tk.a.C0171a) this.f15989d).getSerID(packageName, this.f15988c, str);
    }
}
