package com.kwad.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes4.dex */
public final class g {
    private static HashMap<String, ArrayList<String>> bof = new HashMap<>();
    private static String bog;

    @Nullable
    private static ArrayList<String> Q(Context context, String str) {
        String packageName;
        if (context == null || (packageName = context.getPackageName()) == null) {
            return null;
        }
        if (bof.get(str) != null) {
            return bof.get(str);
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            for (Signature signature : getSignatures(context, packageName)) {
                String strA = "error!";
                if ("MD5".equals(str)) {
                    strA = a(signature, "MD5");
                } else if ("SHA1".equals(str)) {
                    strA = a(signature, "SHA1");
                } else if ("SHA256".equals(str)) {
                    strA = a(signature, "SHA256");
                }
                arrayList.add(strA);
            }
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("AppSigningUtil", "签名信息列表获取失败 " + e2.getMessage());
        }
        bof.put(str, arrayList);
        return arrayList;
    }

    private static String a(Signature signature, String str) throws NoSuchAlgorithmException {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] bArrDigest = messageDigest.digest(byteArray);
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1);
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("AppSigningUtil", e2.getMessage());
            return "error!";
        }
    }

    @Nullable
    public static String cN(Context context) {
        if (!TextUtils.isEmpty(bog)) {
            return bog;
        }
        ArrayList<String> arrayListQ = Q(context, "SHA1");
        if (arrayListQ != null && arrayListQ.size() != 0) {
            bog = arrayListQ.get(0);
        }
        return bog;
    }

    private static Signature[] getSignatures(Context context, String str) {
        try {
            PackageInfo packageInfo = aa.getPackageInfo(context, str, 64);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.signatures;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("AppSigningUtil", e2.getMessage());
            return null;
        }
    }
}
