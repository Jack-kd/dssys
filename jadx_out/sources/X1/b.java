package X1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.repackage.a.a.a.a;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public org.repackage.a.a.a.a f683a = null;

    /* renamed from: b, reason: collision with root package name */
    public String f684b = null;

    /* renamed from: c, reason: collision with root package name */
    public String f685c = null;

    /* renamed from: d, reason: collision with root package name */
    public final Object f686d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public ServiceConnection f687e = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.this.f683a = a.AbstractBinderC0885a.a(iBinder);
            synchronized (b.this.f686d) {
                b.this.f686d.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.f683a = null;
        }
    }

    /* renamed from: X1.b$b, reason: collision with other inner class name */
    public static class C0012b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f689a = new b(null);
    }

    public /* synthetic */ b(a aVar) {
    }

    public synchronized String a(Context context, String str) {
        try {
        } catch (Throwable th) {
            throw th;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        if (this.f683a != null) {
            try {
                return c(context, str);
            } catch (RemoteException e2) {
                e2.printStackTrace();
                return "";
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (context.bindService(intent, this.f687e, 1)) {
            synchronized (this.f686d) {
                try {
                    this.f686d.wait(3000L);
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
            }
        }
        if (this.f683a == null) {
            return "";
        }
        try {
            return c(context, str);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return "";
        }
        throw th;
    }

    public boolean b(Context context) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
            return Build.VERSION.SDK_INT >= 28 ? packageInfo != null && packageInfo.getLongVersionCode() >= 1 : packageInfo != null && packageInfo.versionCode >= 1;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final String c(Context context, String str) throws NoSuchAlgorithmException {
        Signature[] signatureArr;
        if (TextUtils.isEmpty(this.f684b)) {
            this.f684b = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.f685c)) {
            String string = null;
            try {
                signatureArr = context.getPackageManager().getPackageInfo(this.f684b, 64).signatures;
            } catch (PackageManager.NameNotFoundException e2) {
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
                } catch (NoSuchAlgorithmException e3) {
                    e3.printStackTrace();
                }
            }
            this.f685c = string;
        }
        String strA = ((a.AbstractBinderC0885a.C0886a) this.f683a).a(this.f684b, this.f685c, str);
        return TextUtils.isEmpty(strA) ? "" : strA;
    }
}
