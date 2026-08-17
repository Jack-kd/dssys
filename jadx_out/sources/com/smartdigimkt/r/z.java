package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.Signature;
import android.os.Parcel;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes5.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42922a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.q.a f42923b;

    /* renamed from: c, reason: collision with root package name */
    public c0 f42924c;

    /* renamed from: d, reason: collision with root package name */
    public final y f42925d = new y(this);

    public z(Context context) {
        this.f42922a = context;
    }

    public final boolean a(com.smartdigimkt.q.b bVar) {
        if (this.f42922a == null) {
            return false;
        }
        this.f42923b = bVar;
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
            intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
            return this.f42922a.bindService(intent, this.f42925d, 1);
        } catch (Throwable th) {
            a("", "bindService failed: " + th.getMessage());
            return false;
        }
    }

    public final void a(String str, String str2) {
        if (this.f42923b != null) {
            if (!TextUtils.isEmpty(str)) {
                this.f42923b.a(str, false);
                return;
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = "oaid is null or empty.";
            }
            this.f42923b.a(str2);
        }
    }

    public final String a() throws NoSuchAlgorithmException {
        Signature[] signatureArr;
        String packageName = this.f42922a.getPackageName();
        String string = null;
        try {
            signatureArr = this.f42922a.getPackageManager().getPackageInfo(packageName, 64).signatures;
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
        a0 a0Var = (a0) this.f42924c;
        a0Var.getClass();
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                parcelObtain.writeString(packageName);
                parcelObtain.writeString(string);
                parcelObtain.writeString("OUID");
                a0Var.f42871a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } catch (Exception e4) {
                e4.printStackTrace();
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return "";
            }
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
