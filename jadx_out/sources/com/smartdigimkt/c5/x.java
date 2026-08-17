package com.smartdigimkt.c5;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.umeng.analytics.pro.ek;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes5.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final PackageManager f39822a;

    public x(Context context) {
        this.f39822a = context.getPackageManager();
    }

    public final String a() throws PackageManager.NameNotFoundException {
        byte[] bArrDigest;
        PackageInfo packageInfo;
        Signature[] signatureArr;
        try {
            packageInfo = this.f39822a.getPackageInfo("com.huawei.hwid", 64);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        byte[] byteArray = (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) ? new byte[0] : signatureArr[0].toByteArray();
        if (byteArray == null || byteArray.length == 0) {
            return null;
        }
        try {
            bArrDigest = MessageDigest.getInstance("SHA-256").digest(byteArray);
        } catch (NoSuchAlgorithmException unused2) {
            bArrDigest = new byte[0];
        }
        char[] cArr = r.f39803a;
        char[] cArr2 = new char[bArrDigest.length << 1];
        int i2 = 0;
        for (byte b3 : bArrDigest) {
            int i3 = i2 + 1;
            cArr2[i2] = cArr[(b3 & 240) >>> 4];
            i2 += 2;
            cArr2[i3] = cArr[b3 & ek.f49295m];
        }
        return new String(cArr2);
    }
}
