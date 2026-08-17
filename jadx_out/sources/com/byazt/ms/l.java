package com.byazt.ms;

import android.text.TextUtils;
import com.byazt.aj.s;
import com.byazt.gt.TTEncryptUtils;
import com.byazt.kw.e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 679, 34})
/* loaded from: classes3.dex */
public class l {
    public static boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static jx f23277l;

    public enum hp {
        NONE(0),
        GZIP(1),
        DEFLATER(2);


        /* renamed from: j, reason: collision with root package name */
        public final int f23280j;

        hp(int i2) {
            this.f23280j = i2;
        }
    }

    /* renamed from: com.byazt.ms.l$l, reason: collision with other inner class name */
    public enum EnumC0314l {
        NONE(0),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        WIFI(4),
        MOBILE_4G(5);

        public final int eb;

        EnumC0314l(int i2) {
            this.eb = i2;
        }
    }

    public static boolean hp() {
        return true;
    }

    private static a jx(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new a(203);
        }
        String str = new String(bArr, Charset.forName("utf-8"));
        try {
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.length() > 0 ? new a(0, jSONObject) : new a(204, str);
        } catch (JSONException unused) {
            return new a(204, str);
        }
    }

    public static boolean l() {
        return true;
    }

    public static a hp(long j2, String str, byte[] bArr, hp hpVar, String str2, boolean z2) throws IOException {
        String str3;
        if (str == null) {
            return new a(201);
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        int length = bArr.length;
        if (hp.GZIP == hpVar && length > 128) {
            bArr = l(bArr);
            str3 = "gzip";
        } else if (hp.DEFLATER != hpVar || length <= 128) {
            str3 = null;
        } else {
            bArr = hp(bArr);
            str3 = "deflate";
        }
        String str4 = str3;
        byte[] bArr2 = bArr;
        if (bArr2 == null) {
            return new a(202);
        }
        if (!z2) {
            return hp(str, bArr2, str2, str4, "POST", true, false);
        }
        byte[] bArrA = TTEncryptUtils.a(bArr2, bArr2.length);
        if (bArrA != null) {
            if (TextUtils.isEmpty(new URL(str).getQuery())) {
                if (!str.endsWith("?")) {
                    str = str + "?";
                }
            } else if (!str.endsWith("&")) {
                str = str + "&";
            }
            str = str + "encrypt=true";
            str2 = "application/octet-stream;tt-data=a";
            bArr2 = bArrA;
        }
        return hp(str, bArr2, str2, str4, "POST", true, true);
    }

    private static byte[] l(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                e.l(th);
                gZIPOutputStream.close();
                return null;
            } catch (Throwable th2) {
                gZIPOutputStream.close();
                throw th2;
            }
        }
    }

    public static String l(Map map) {
        return s.w().jx();
    }

    private static byte[] hp(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        while (!deflater.finished()) {
            byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
        }
        deflater.end();
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005b A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:14:0x002e, B:16:0x0034, B:17:0x0038, B:19:0x003e, B:21:0x0046, B:25:0x005b, B:28:0x0066, B:30:0x006d, B:31:0x0072, B:33:0x0079, B:35:0x007e, B:39:0x0090, B:44:0x0098, B:45:0x009b, B:46:0x009c, B:48:0x00a4, B:66:0x00da, B:70:0x00f6, B:71:0x00fd, B:26:0x0060), top: B:88:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:14:0x002e, B:16:0x0034, B:17:0x0038, B:19:0x003e, B:21:0x0046, B:25:0x005b, B:28:0x0066, B:30:0x006d, B:31:0x0072, B:33:0x0079, B:35:0x007e, B:39:0x0090, B:44:0x0098, B:45:0x009b, B:46:0x009c, B:48:0x00a4, B:66:0x00da, B:70:0x00f6, B:71:0x00fd, B:26:0x0060), top: B:88:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0066 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:14:0x002e, B:16:0x0034, B:17:0x0038, B:19:0x003e, B:21:0x0046, B:25:0x005b, B:28:0x0066, B:30:0x006d, B:31:0x0072, B:33:0x0079, B:35:0x007e, B:39:0x0090, B:44:0x0098, B:45:0x009b, B:46:0x009c, B:48:0x00a4, B:66:0x00da, B:70:0x00f6, B:71:0x00fd, B:26:0x0060), top: B:88:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:14:0x002e, B:16:0x0034, B:17:0x0038, B:19:0x003e, B:21:0x0046, B:25:0x005b, B:28:0x0066, B:30:0x006d, B:31:0x0072, B:33:0x0079, B:35:0x007e, B:39:0x0090, B:44:0x0098, B:45:0x009b, B:46:0x009c, B:48:0x00a4, B:66:0x00da, B:70:0x00f6, B:71:0x00fd, B:26:0x0060), top: B:88:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0079 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:14:0x002e, B:16:0x0034, B:17:0x0038, B:19:0x003e, B:21:0x0046, B:25:0x005b, B:28:0x0066, B:30:0x006d, B:31:0x0072, B:33:0x0079, B:35:0x007e, B:39:0x0090, B:44:0x0098, B:45:0x009b, B:46:0x009c, B:48:0x00a4, B:66:0x00da, B:70:0x00f6, B:71:0x00fd, B:26:0x0060), top: B:88:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f6 A[Catch: all -> 0x0052, TRY_ENTER, TryCatch #1 {all -> 0x0052, blocks: (B:14:0x002e, B:16:0x0034, B:17:0x0038, B:19:0x003e, B:21:0x0046, B:25:0x005b, B:28:0x0066, B:30:0x006d, B:31:0x0072, B:33:0x0079, B:35:0x007e, B:39:0x0090, B:44:0x0098, B:45:0x009b, B:46:0x009c, B:48:0x00a4, B:66:0x00da, B:70:0x00f6, B:71:0x00fd, B:26:0x0060), top: B:88:0x002e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.byazt.ms.a hp(java.lang.String r5, byte[] r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ms.l.hp(java.lang.String, byte[], java.lang.String, java.lang.String, java.lang.String, boolean, boolean):com.byazt.ms.a");
    }

    public static a hp(String str, String str2) {
        return hp(str, str2, hp());
    }

    public static String hp(Map map) {
        return s.w().l();
    }

    public static a hp(w wVar) {
        if (wVar == null) {
            return new a(201);
        }
        try {
            return hp(2097152L, wVar.hp(), wVar.jx(), hp.GZIP, "application/json; charset=utf-8", wVar.l());
        } catch (Throwable th) {
            e.l(th);
            return new a(207, th);
        }
    }

    public static a hp(String str, String str2, boolean z2) {
        try {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                return hp(2097152L, str, str2.getBytes(), hp.GZIP, "application/json; charset=utf-8", z2);
            }
            return new a(201);
        } catch (Throwable th) {
            e.l(th);
            return new a(207, th);
        }
    }

    private static byte[] hp(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (-1 != i2) {
                byteArrayOutputStream.write(bArr, 0, i2);
            } else {
                inputStream.close();
                try {
                    return byteArrayOutputStream.toByteArray();
                } finally {
                    com.byazt.kw.a.hp(byteArrayOutputStream);
                }
            }
        }
    }
}
