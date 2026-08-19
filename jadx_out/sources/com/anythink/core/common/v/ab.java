package com.anythink.core.common.v;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
final class ab {

    /* renamed from: a, reason: collision with root package name */
    private final PackageManager f8025a;

    public enum a {
        ENABLED,
        DISABLED,
        NOT_INSTALLED;

        private static /* synthetic */ a[] a() {
            return new a[]{ENABLED, DISABLED, NOT_INSTALLED};
        }
    }

    public ab(Context context) {
        this.f8025a = context.getPackageManager();
    }

    private int c(String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.f8025a.getPackageInfo(str, 16);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return 0;
    }

    private String d(String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.f8025a.getPackageInfo(str, 16);
            if (packageInfo != null) {
                String str2 = packageInfo.versionName;
                if (str2 != null) {
                    return str2;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return "";
    }

    private byte[] e(String str) throws PackageManager.NameNotFoundException {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = this.f8025a.getPackageInfo(str, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0) {
                return signatureArr[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return new byte[0];
    }

    public final a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return a.NOT_INSTALLED;
        }
        try {
            return this.f8025a.getApplicationInfo(str, 0).enabled ? a.ENABLED : a.DISABLED;
        } catch (PackageManager.NameNotFoundException unused) {
            return a.NOT_INSTALLED;
        }
    }

    public final String b(String str) throws PackageManager.NameNotFoundException {
        byte[] bArrE = e(str);
        if (bArrE == null || bArrE.length == 0) {
            return null;
        }
        return w.a(a(bArrE));
    }

    private static byte[] a(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-256").digest(bArr);
        } catch (NoSuchAlgorithmException unused) {
            return new byte[0];
        }
    }
}
