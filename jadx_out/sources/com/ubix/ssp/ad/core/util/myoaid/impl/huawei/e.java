package com.ubix.ssp.ad.core.util.myoaid.impl.huawei;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.d.i;
import com.ubix.ssp.ad.e.a0.u;
import java.io.UnsupportedEncodingException;
import java.lang.ref.SoftReference;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f45743a = new byte[0];

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f45744b = new byte[0];

    /* renamed from: c, reason: collision with root package name */
    private static SoftReference<byte[]> f45745c;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f45746a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f45747b;

        public a(b bVar, String str) {
            this.f45746a = bVar;
            this.f45747b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f45746a.d(this.f45747b);
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static final Long f45748a = Long.valueOf(i.l.f2678c);

        /* renamed from: b, reason: collision with root package name */
        private static final byte[] f45749b = new byte[0];

        /* renamed from: c, reason: collision with root package name */
        private static volatile b f45750c;

        /* renamed from: d, reason: collision with root package name */
        private SharedPreferences f45751d;

        /* renamed from: e, reason: collision with root package name */
        private SharedPreferences f45752e;

        /* renamed from: f, reason: collision with root package name */
        private SharedPreferences f45753f;

        /* renamed from: g, reason: collision with root package name */
        private final byte[] f45754g = new byte[0];

        /* renamed from: h, reason: collision with root package name */
        private final byte[] f45755h = new byte[0];

        /* renamed from: i, reason: collision with root package name */
        private final byte[] f45756i = new byte[0];

        /* renamed from: j, reason: collision with root package name */
        private Context f45757j;

        private b(Context context) {
            this.f45751d = null;
            this.f45752e = null;
            this.f45753f = null;
            try {
                this.f45757j = context.getApplicationContext();
                Context contextA = f.a(context);
                this.f45751d = contextA.getSharedPreferences("identifier_sp_story_book_file", 4);
                this.f45752e = contextA.getSharedPreferences("identifier_hiad_sp_bed_rock_file", 4);
                this.f45753f = contextA.getSharedPreferences("identifier_hiad_sp_red_stone_file", 4);
            } catch (Throwable unused) {
            }
        }

        public static b a(Context context) {
            b bVar;
            if (f45750c != null) {
                return f45750c;
            }
            synchronized (f45749b) {
                try {
                    if (f45750c == null) {
                        f45750c = new b(context);
                    }
                    bVar = f45750c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return bVar;
        }

        public void b() {
            synchronized (this.f45756i) {
                try {
                    SharedPreferences sharedPreferences = this.f45751d;
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putLong("read_first_chapter_time", System.currentTimeMillis()).apply();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void c(String str) {
            synchronized (this.f45756i) {
                try {
                    SharedPreferences sharedPreferences = this.f45751d;
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putString("catch_a_cat", str).commit();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void d() {
            synchronized (this.f45756i) {
                try {
                    SharedPreferences sharedPreferences = this.f45751d;
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putBoolean("has_read_first_chapter", true).apply();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean e() {
            boolean z2;
            synchronized (this.f45756i) {
                SharedPreferences sharedPreferences = this.f45751d;
                z2 = false;
                if (sharedPreferences != null) {
                    z2 = sharedPreferences.getBoolean("has_read_first_chapter", false);
                }
            }
            return z2;
        }

        public String f() {
            String string;
            synchronized (this.f45754g) {
                SharedPreferences sharedPreferences = this.f45752e;
                string = sharedPreferences != null ? sharedPreferences.getString("get_a_book", null) : null;
            }
            return string;
        }

        public String g() {
            synchronized (this.f45756i) {
                SharedPreferences sharedPreferences = this.f45751d;
                if (sharedPreferences == null) {
                    return null;
                }
                String string = sharedPreferences.getString("catch_a_cat", null);
                if (string == null) {
                    string = e.d(e.d());
                    c(string);
                }
                return string;
            }
        }

        public String h() {
            String string;
            synchronized (this.f45756i) {
                string = this.f45751d.getString("read_second_chapter", "");
            }
            return string;
        }

        public String a() {
            String string;
            synchronized (this.f45755h) {
                try {
                    SharedPreferences sharedPreferences = this.f45753f;
                    if (sharedPreferences == null) {
                        string = "";
                    } else {
                        string = sharedPreferences.getString("read_first_chapter", "");
                        if (!TextUtils.isEmpty(string)) {
                            string = e.c(string, e.f(this.f45757j));
                        }
                    }
                } finally {
                }
            }
            return string;
        }

        public void b(String str) {
            synchronized (this.f45754g) {
                try {
                    SharedPreferences sharedPreferences = this.f45752e;
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putString("get_a_book", str).commit();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean c() {
            boolean z2;
            synchronized (this.f45756i) {
                try {
                    SharedPreferences sharedPreferences = this.f45751d;
                    z2 = false;
                    if (sharedPreferences != null) {
                        long j2 = sharedPreferences.getLong("read_first_chapter_time", -1L);
                        if (j2 >= 0 && j2 + f45748a.longValue() > System.currentTimeMillis()) {
                            z2 = true;
                        }
                    }
                } finally {
                }
            }
            return z2;
        }

        public void d(String str) {
            synchronized (this.f45756i) {
                this.f45751d.edit().putString("read_second_chapter", str).apply();
            }
        }

        public void a(String str) {
            synchronized (this.f45755h) {
                try {
                    if (this.f45753f != null) {
                        byte[] bArrF = e.f(this.f45757j);
                        this.f45753f.edit().putString("read_first_chapter", e.d(str, bArrF)).apply();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static String a(Context context) {
        String strA;
        if (context == null) {
            return "";
        }
        synchronized (f45744b) {
            try {
                b bVarA = b.a(context);
                String strF = bVarA.f();
                if (strF != null) {
                    String strC = c(strF, c(context));
                    strA = TextUtils.isEmpty(strC) ? a(context, bVarA) : strC;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strA;
    }

    private static String b(int i2) {
        try {
            SecureRandom secureRandomB = b();
            StringBuilder sb = new StringBuilder();
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(Integer.toHexString(secureRandomB.nextInt(16)));
            }
            return sb.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String c(String str) {
        if (!TextUtils.isEmpty(str) && str.length() >= 24) {
            return str.substring(0, 24);
        }
        u.e("Aes128", "IV is invalid.");
        return "";
    }

    private static String d(String str) {
        return (TextUtils.isEmpty(str) || str.length() < 24) ? "" : str.substring(24);
    }

    private static String e(Context context) {
        b bVarA = b.a(context);
        String strH = bVarA.h();
        if (!TextUtils.isEmpty(strH)) {
            return strH;
        }
        String strB = b(64);
        f.f45758a.execute(new a(bVarA, strB));
        return strB;
    }

    public static byte[] f(Context context) {
        byte[] bArr;
        byte[] bArrB;
        synchronized (f45744b) {
            SoftReference<byte[]> softReference = f45745c;
            bArr = softReference != null ? softReference.get() : null;
            if (bArr == null) {
                try {
                    bArrB = b(a(context));
                } catch (Throwable unused) {
                    bArrB = b(context);
                }
                bArr = bArrB;
                f45745c = new SoftReference<>(bArr);
            }
        }
        return bArr;
    }

    private static String a(Context context, b bVar) {
        String strD = d(a());
        bVar.b(d(strD, c(context)));
        return strD;
    }

    private static String b(String str, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (!TextUtils.isEmpty(str) && bArr != null && bArr.length >= 16 && c()) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                String strC = c(str);
                String strD = d(str);
                if (TextUtils.isEmpty(strC) || TextUtils.isEmpty(strD)) {
                    u.e("Aes128", "ivParameter or encrypedWord is null");
                    return "";
                }
                cipher.init(2, secretKeySpec, c(a(strC)));
                return new String(cipher.doFinal(a(strD)), "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                Log.e("Aes128", "GCM decrypt data exception: " + e.getMessage());
                return "";
            } catch (GeneralSecurityException e3) {
                e = e3;
                Log.e("Aes128", "GCM decrypt data exception: " + e.getMessage());
                return "";
            }
        }
        return "";
    }

    public static String c(String str, byte[] bArr) {
        if (!TextUtils.isEmpty(str) && str.length() >= 32 && bArr != null && bArr.length != 0) {
            try {
                if (c()) {
                    return b(str, bArr);
                }
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public static String d(String str, byte[] bArr) {
        if (!TextUtils.isEmpty(str) && bArr != null && bArr.length != 0) {
            try {
                if (c()) {
                    return a(str, bArr);
                }
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public static String a(String str, String str2) {
        String strC;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        synchronized (f45743a) {
            try {
                try {
                    strC = c(str, b(str2));
                } catch (Throwable unused) {
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strC;
    }

    private static SecureRandom b() {
        SecureRandom instanceStrong;
        try {
            instanceStrong = Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception unused) {
            instanceStrong = null;
        }
        return instanceStrong == null ? new SecureRandom() : instanceStrong;
    }

    private static AlgorithmParameterSpec c(byte[] bArr) {
        return new GCMParameterSpec(128, bArr);
    }

    public static String d(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            String hexString = Integer.toHexString(b3 & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private static String a(String str, byte[] bArr) {
        byte[] bArrA;
        byte[] bArrA2;
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || !c() || (bArrA2 = a(str, bArr, (bArrA = a(12)))) == null || bArrA2.length == 0) {
            return "";
        }
        return d(bArrA) + d(bArrA2);
    }

    private static boolean b(byte[] bArr) {
        return bArr != null && bArr.length >= 16;
    }

    private static boolean c() {
        return true;
    }

    public static byte[] d() {
        return a(16);
    }

    private static boolean a(byte[] bArr) {
        return bArr != null && bArr.length >= 12;
    }

    private static byte[] b(Context context) {
        u.e("Aes128", "regenerateWorkKey");
        b.a(context).b("");
        return a(a(context));
    }

    private static byte[] c(Context context) {
        if (context == null) {
            return new byte[0];
        }
        b bVarA = b.a(context);
        try {
            return a(d(d(context)).toCharArray(), a(bVarA.g()));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
            return null;
        }
    }

    private static byte[] d(Context context) {
        return a(context, e(context));
    }

    public static byte[] a() {
        return a(16);
    }

    public static byte[] b(String str) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        int length = upperCase.length() / 2;
        byte[] bArr = new byte[length];
        byte[] bytes = upperCase.getBytes("UTF-8");
        for (int i2 = 0; i2 < length; i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append("0x");
            int i3 = i2 * 2;
            sb.append(new String(new byte[]{bytes[i3]}, "UTF-8"));
            bArr[i2] = (byte) (((byte) (Byte.decode(sb.toString()).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{bytes[i3 + 1]}, "UTF-8")).byteValue());
        }
        return bArr;
    }

    public static byte[] a(int i2) {
        byte[] bArr = new byte[i2];
        b().nextBytes(bArr);
        return bArr;
    }

    private static byte[] a(Context context, String str) {
        return a(str, "245d64e65dc9fe70d4d62aa6b941221fa92a3fb07db7a4858e43bf1dbf2972e9", "9b38b1ce5d9b5bba1a6539ad75eae153555c74f5b95e6cdfe5019a6a0e56f466");
    }

    public static byte[] a(String str) {
        byte[] bArr = new byte[0];
        try {
            return b(str);
        } catch (Throwable th) {
            Log.e("Aes128", "hex string 2 byte: " + th.getClass().getSimpleName());
            return bArr;
        }
    }

    private static byte[] a(String str, String str2, String str3) {
        byte[] bArrA = a(str);
        byte[] bArrA2 = a(str2);
        return a(a(bArrA, bArrA2), a(str3));
    }

    private static byte[] a(String str, byte[] bArr, byte[] bArr2) {
        if (!TextUtils.isEmpty(str) && b(bArr) && a(bArr2) && c()) {
            try {
                return a(str.getBytes("UTF-8"), bArr, bArr2);
            } catch (UnsupportedEncodingException e2) {
                Log.e("Aes128", "GCM encrypt data error" + e2.getMessage());
            }
        } else {
            u.e("Aes128", "gcm encrypt param is not right");
        }
        return new byte[0];
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= bArr2.length) {
            bArr2 = bArr;
            bArr = bArr2;
        }
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[length];
        int i2 = 0;
        while (i2 < length2) {
            bArr3[i2] = (byte) (bArr2[i2] ^ bArr[i2]);
            i2++;
        }
        while (i2 < bArr.length) {
            bArr3[i2] = bArr[i2];
            i2++;
        }
        return bArr3;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String str;
        if (bArr == null || bArr.length == 0) {
            str = "encrypt, contentBytes invalid.";
        } else if (bArr2 == null || bArr2.length < 16) {
            str = "encrypt, keyBytes invalid.";
        } else if (!c()) {
            str = "encrypt, osVersion too low.";
        } else if (bArr3 == null || bArr3.length < 12) {
            str = "encrypt, random invalid.";
        } else {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, secretKeySpec, c(bArr3));
                return cipher.doFinal(bArr);
            } catch (GeneralSecurityException e2) {
                Log.e("Aes128", "GCM encrypt data error" + e2.getMessage());
            }
        }
        u.e("Aes128", str);
        return new byte[0];
    }

    public static byte[] a(char[] cArr, byte[] bArr) {
        return SecretKeyFactory.getInstance(Build.VERSION.SDK_INT > 26 ? "PBKDF2WithHmacSHA256" : "PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(cArr, bArr, 10000, 256)).getEncoded();
    }
}
