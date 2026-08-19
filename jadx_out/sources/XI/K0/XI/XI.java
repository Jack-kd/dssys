package XI.K0.XI;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public interface XI extends IInterface {

    public class K0 {

        /* renamed from: XI, reason: collision with root package name */
        public XI f696XI = null;

        /* renamed from: K0, reason: collision with root package name */
        public String f695K0 = null;
        public String kM = null;
        public final Object xo = new Object();
        public ServiceConnection CA = new ServiceConnectionC0014XI();

        /* renamed from: XI.K0.XI.XI$K0$K0, reason: collision with other inner class name */
        public static class C0013K0 {

            /* renamed from: XI, reason: collision with root package name */
            public static final K0 f697XI = new K0();
        }

        /* renamed from: XI.K0.XI.XI$K0$XI, reason: collision with other inner class name */
        public class ServiceConnectionC0014XI implements ServiceConnection {
            public ServiceConnectionC0014XI() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                XI c0016xi;
                K0 k02 = K0.this;
                int i2 = AbstractBinderC0015XI.f699XI;
                if (iBinder == null) {
                    c0016xi = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
                    c0016xi = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof XI)) ? new AbstractBinderC0015XI.C0016XI(iBinder) : (XI) iInterfaceQueryLocalInterface;
                }
                k02.f696XI = c0016xi;
                synchronized (K0.this.xo) {
                    K0.this.xo.notify();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                K0.this.f696XI = null;
            }
        }

        public final String K0(Context context, String str) throws NoSuchAlgorithmException {
            Signature[] signatureArr;
            if (TextUtils.isEmpty(this.f695K0)) {
                this.f695K0 = context.getPackageName();
            }
            if (TextUtils.isEmpty(this.kM)) {
                String string = null;
                try {
                    signatureArr = context.getPackageManager().getPackageInfo(this.f695K0, 64).signatures;
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
                this.kM = string;
            }
            XI xi = this.f696XI;
            if (xi == null) {
                context.getPackageName();
                return "";
            }
            String str2 = this.f695K0;
            String str3 = this.kM;
            AbstractBinderC0015XI.C0016XI c0016xi = (AbstractBinderC0015XI.C0016XI) xi;
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                parcelObtain.writeString(str2);
                parcelObtain.writeString(str3);
                parcelObtain.writeString(str);
                c0016xi.f700XI.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                String string2 = parcelObtain2.readString();
                parcelObtain2.recycle();
                parcelObtain.recycle();
                return TextUtils.isEmpty(string2) ? "" : string2;
            } catch (Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }

        public synchronized String XI(Context context, String str) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                return "";
            }
            if (this.f696XI != null) {
                try {
                    return K0(context, str);
                } catch (RemoteException unused) {
                    return "";
                }
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
            intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
            if (context.bindService(intent, this.CA, 1)) {
                synchronized (this.xo) {
                    try {
                        this.xo.wait(3000L);
                    } catch (InterruptedException unused2) {
                    }
                }
            }
            if (this.f696XI == null) {
                return "";
            }
            try {
                return K0(context, str);
            } catch (RemoteException unused3) {
                return "";
            }
        }
    }

    /* renamed from: XI.K0.XI.XI$XI, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0015XI extends Binder implements XI {

        /* renamed from: XI, reason: collision with root package name */
        public static final /* synthetic */ int f699XI = 0;

        /* renamed from: XI.K0.XI.XI$XI$XI, reason: collision with other inner class name */
        public static class C0016XI implements XI {

            /* renamed from: XI, reason: collision with root package name */
            public IBinder f700XI;

            public C0016XI(IBinder iBinder) {
                this.f700XI = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f700XI;
            }
        }
    }
}
