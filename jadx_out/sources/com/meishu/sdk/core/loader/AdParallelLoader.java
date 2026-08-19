package com.meishu.sdk.core.loader;

import android.util.Base64;
import com.google.gson.Gson;
import com.umeng.analytics.pro.ek;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes4.dex */
public class AdParallelLoader {

    /* renamed from: a, reason: collision with root package name */
    public static BigInteger f31579a = new BigInteger(1, new byte[]{1, 0, 1});

    /* renamed from: b, reason: collision with root package name */
    public static BigInteger f31580b = new BigInteger(1, new byte[]{-62, -46, -40, 69, -27, 118, 33, -72, -76, -70, -47, -80, ek.f49293k, 42, 44, -107, 77, -88, -72, -67, 121, 27, -126, -72, -96, -123, -52, 38, -69, -44, 110, 46, -78, 124, 20, 62, -88, com.sigmob.sdk.archives.tar.e.f35444J, -33, 21, -18, 117, -95, -45, -66, -50, -117, -26, -76, 56, 36, 114, -70, 101, 22, 68, -87, -123, -109, 4, -109, -100, -121, 77});

    /* renamed from: c, reason: collision with root package name */
    public static SecureRandom f31581c = new SecureRandom();

    /* renamed from: d, reason: collision with root package name */
    public static final Gson f31582d = new Gson();

    public class a extends GZIPOutputStream {
        public a(OutputStream outputStream) throws IOException {
            super(outputStream);
            ((GZIPOutputStream) this).def.setLevel(5);
        }
    }

    public static byte[] a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a aVar = new a(byteArrayOutputStream);
        try {
            aVar.write(bArr);
            aVar.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            aVar.close();
            throw th;
        }
    }

    public static byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[64];
        int length = bArr.length;
        int i2 = 64 - length;
        int i3 = 63 - length;
        System.arraycopy(bArr, 0, bArr2, i2, bArr.length);
        bArr2[0] = 0;
        bArr2[1] = 2;
        bArr2[i3] = 0;
        for (int i4 = 2; i4 < i3; i4++) {
            bArr2[i4] = (byte) (f31581c.nextInt(255) + 1);
        }
        byte[] byteArray = new BigInteger(1, bArr2).modPow(f31579a, f31580b).toByteArray();
        PrintStream printStream = System.out;
        StringBuilder sbA = com.meishu.sdk.activity.a.a("L=");
        sbA.append(byteArray.length);
        printStream.println(sbA.toString());
        if (byteArray.length == 64) {
            return byteArray;
        }
        if (byteArray.length > 64) {
            return Arrays.copyOfRange(byteArray, byteArray.length - 64, byteArray.length);
        }
        int length2 = 64 - byteArray.length;
        System.arraycopy(byteArray, 0, bArr2, length2, byteArray.length);
        for (int i5 = 0; i5 < length2; i5++) {
            bArr2[i5] = 0;
        }
        return bArr2;
    }

    public static Map<String, String> wrapParams(Map<String, String> map) {
        try {
            return wrapParams(f31582d.toJson(map).getBytes("UTF-8"));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Map<String, String> wrapParams(byte[] bArr) {
        try {
            String hexString = Long.toHexString(((System.currentTimeMillis() / 3) * 3) + 2);
            byte[] bytes = hexString.getBytes();
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length + bytes.length);
            System.arraycopy(bytes, 0, bArrCopyOf, bArr.length, bytes.length);
            HashMap map = new HashMap();
            map.put("nonce", hexString);
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bArrCopyOf);
            map.put(com.umeng.ccg.a.f49739A, Base64.encodeToString(b(bArrDigest), 10));
            try {
                byte[] bArrA = a(bArr);
                map.put("enc", "3");
                bArr = bArrA;
            } catch (IOException unused) {
                map.put("enc", "1");
            }
            byte[] bArr2 = new byte[16];
            f31581c.nextBytes(bArr2);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, new SecretKeySpec(bArrDigest, "AES"), new IvParameterSpec(bArr2));
            byte[] bArrDoFinal = cipher.doFinal(bArr);
            byte[] bArrCopyOf2 = Arrays.copyOf(bArrDoFinal, bArrDoFinal.length + 16);
            System.arraycopy(bArr2, 0, bArrCopyOf2, bArrDoFinal.length, 16);
            map.put("message", Base64.encodeToString(bArrCopyOf2, 10));
            return map;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
