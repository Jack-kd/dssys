package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.czhj.sdk.logger.SigmobLog;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    static final int f38955a = 8192;

    /* renamed from: b, reason: collision with root package name */
    static final int f38956b = 16;

    public static String a(String str) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return null;
        }
        return singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    public static String b(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Error encoding url", e2);
        }
    }

    public static String c(String str) {
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Error decoding url", e2);
        }
    }

    public static String d(String str) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b3 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return stringBuffer.toString();
    }

    public static String a(byte[] bArr, int i2) {
        int iMin = Math.min(16, Math.max(i2, 0));
        String string = Arrays.toString(Arrays.copyOfRange(bArr, 0, iMin));
        if (iMin >= i2) {
            return string;
        }
        return string.substring(0, string.length() - 1) + ", ...]";
    }

    public static void a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                SigmobLog.e("Error closing resource", e2);
            }
        }
    }

    public static void a(byte[] bArr, long j2, int i2) {
        n.a(bArr, "Buffer must be not null!");
        boolean z2 = false;
        n.a(j2 >= 0, "Data offset must be positive!");
        if (i2 >= 0 && i2 <= bArr.length) {
            z2 = true;
        }
        n.a(z2, "Length must be in range [0..buffer.length]");
    }
}
