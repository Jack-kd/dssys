package com.meishu.sdk.core.bquery;

import android.content.Context;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static File f31524a;

    /* renamed from: b, reason: collision with root package name */
    public static ScheduledExecutorService f31525b;

    public static File a(File file, String str, String str2) throws NoSuchAlgorithmException {
        if (str == null) {
            return null;
        }
        String strB = b(str);
        if (!TextUtils.isEmpty(str2)) {
            strB = strB + "_" + str2;
        }
        return new File(file, strB);
    }

    public static String b(String str) throws NoSuchAlgorithmException {
        byte[] bArrDigest;
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            bArrDigest = messageDigest.digest();
        } catch (Exception unused) {
            bArrDigest = null;
        }
        return new BigInteger(bArrDigest).abs().toString(36);
    }

    public static void a(File file, byte[] bArr) throws IOException {
        if (file != null) {
            try {
                if (file.exists()) {
                    return;
                }
                try {
                    file.createNewFile();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (Exception e3) {
                try {
                    e3.printStackTrace();
                } catch (Exception unused) {
                }
            }
        }
    }

    public static File b(Context context) {
        if (f31524a == null) {
            File file = new File(context.getCacheDir(), "bquery");
            f31524a = file;
            file.mkdirs();
        }
        return f31524a;
    }

    public static void a(Context context) {
        try {
            File fileB = b(context);
            if (f31525b == null) {
                f31525b = Executors.newSingleThreadScheduledExecutor();
            }
            f31525b.schedule(new f(fileB, 86400000L), 0L, TimeUnit.MILLISECONDS);
        } catch (Throwable unused) {
        }
    }

    public static File a(String str, String str2) {
        return a(b(AdSdk.getContext()), str, str2);
    }

    public static byte[] a(String str) {
        byte[] byteArray = new byte[0];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 != -1) {
                            byteArrayOutputStream.write(bArr, 0, i2);
                        } else {
                            byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            fileInputStream.close();
                            return byteArray;
                        }
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable unused) {
            return byteArray;
        }
    }
}
