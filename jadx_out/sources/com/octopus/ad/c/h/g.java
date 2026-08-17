package com.octopus.ad.c.h;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private String f33843a;

    /* renamed from: b, reason: collision with root package name */
    private String f33844b;

    /* renamed from: c, reason: collision with root package name */
    private final a f33845c;

    public interface a {
        String a(String str, String str2, String str3);
    }

    public g(a aVar) {
        this.f33845c = aVar;
    }

    private void b(Context context) {
        if (TextUtils.isEmpty(this.f33844b)) {
            try {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(this.f33843a, 64).signatures;
                if (signatureArr == null || signatureArr.length <= 0) {
                    com.octopus.ad.d.b.f.d("SignatureHelper", "No signatures found for package: " + this.f33843a);
                    return;
                }
                this.f33844b = a(signatureArr[0].toByteArray());
                com.octopus.ad.d.b.f.a("SignatureHelper", "SHA1 Signature calculated: " + this.f33844b);
            } catch (PackageManager.NameNotFoundException e2) {
                com.octopus.ad.d.b.f.a("SignatureHelper", "Package name not found: " + this.f33843a, e2);
            } catch (NoSuchAlgorithmException e3) {
                com.octopus.ad.d.b.f.a("SignatureHelper", "SHA1 Algorithm not found", e3);
            }
        }
    }

    public String a(Context context, String str) {
        a(context);
        b(context);
        a aVar = this.f33845c;
        if (aVar == null) {
            return "";
        }
        String strA = aVar.a(this.f33843a, this.f33844b, str);
        return TextUtils.isEmpty(strA) ? "" : strA;
    }

    private void a(Context context) {
        if (TextUtils.isEmpty(this.f33843a)) {
            this.f33843a = context.getPackageName();
            com.octopus.ad.d.b.f.a("SignatureHelper", "Package name set to: " + this.f33843a);
        }
    }

    private String a(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArrDigest) {
            sb.append(String.format("%02x", Integer.valueOf(b3 & 255)));
        }
        return sb.toString();
    }
}
