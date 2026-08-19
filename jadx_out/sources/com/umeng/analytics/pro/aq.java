package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;

/* loaded from: classes5.dex */
public class aq {

    /* renamed from: a, reason: collision with root package name */
    private static HostnameVerifier f48701a;

    private static HostnameVerifier a() {
        if (f48701a == null) {
            f48701a = new HostnameVerifier() { // from class: com.umeng.analytics.pro.aq.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    if (TextUtils.isEmpty(str)) {
                        return false;
                    }
                    return "pre-ucc.umeng.com".equalsIgnoreCase(str) || "ucc.umeng.com".equalsIgnoreCase(str) || "aspect-upush.umeng.com".equalsIgnoreCase(str) || "pre-msg.umengcloud.com".equalsIgnoreCase(str) || "ulogs.umeng.com".equalsIgnoreCase(str) || "preulogs.umeng.com".equalsIgnoreCase(str) || "cnlogs.umeng.com".equalsIgnoreCase(str);
                }
            };
        }
        return f48701a;
    }

    public static byte[] a(String str, String str2) {
        return a(str, str2.getBytes());
    }

    public static byte[] a(String str, byte[] bArr) {
        byte[] streamToByteArray;
        byte[] bArrA = null;
        try {
            HttpsURLConnection httpsURLConnectionA = a(str, "ak", ay.a(bArr, UMConfigure.sAppkey.getBytes()));
            if (httpsURLConnectionA != null && httpsURLConnectionA.getResponseCode() == 200) {
                InputStream inputStream = httpsURLConnectionA.getInputStream();
                try {
                    streamToByteArray = HelperUtils.readStreamToByteArray(inputStream);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    String headerField = httpsURLConnectionA.getHeaderField("ak");
                    if (!TextUtils.isEmpty(headerField)) {
                        bArrA = ay.a(streamToByteArray, headerField.getBytes());
                    } else {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "ccg 应答不包含ak!");
                    }
                    HelperUtils.safeClose(inputStream);
                    return bArrA;
                } catch (Throwable th2) {
                    th = th2;
                    HelperUtils.safeClose(inputStream);
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static void a(String str, byte[] bArr, String str2) {
        byte[] bArrA;
        int responseCode;
        HttpsURLConnection httpsURLConnectionA = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ay.a(bArr, byteArrayOutputStream);
                bArrA = ay.a(byteArrayOutputStream.toByteArray(), UMConfigure.sAppkey.getBytes());
            } catch (Throwable unused) {
                bArrA = null;
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = "appkey";
            }
            httpsURLConnectionA = a(str, str2, bArrA);
            if (httpsURLConnectionA != null && (responseCode = httpsURLConnectionA.getResponseCode()) != 200) {
                String str3 = "SC";
                if (ar.f48703b.equals(str)) {
                    str3 = "UMC";
                } else if (ar.f48704c.equals(str)) {
                    str3 = "EkvError";
                }
                UMRTLog.e(UMRTLog.RTLOG_TAG, str3 + " event report error, http error code: " + responseCode);
            }
            if (httpsURLConnectionA == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (httpsURLConnectionA == null) {
                    return;
                }
            } catch (Throwable th2) {
                if (httpsURLConnectionA != null) {
                    try {
                        httpsURLConnectionA.disconnect();
                    } catch (Throwable unused2) {
                    }
                }
                throw th2;
            }
        }
        try {
            httpsURLConnectionA.disconnect();
        } catch (Throwable unused3) {
        }
    }

    private static HttpsURLConnection a(String str, String str2, byte[] bArr) throws NoSuchAlgorithmException, IOException, KeyManagementException {
        HttpsURLConnection httpsURLConnection;
        HttpsURLConnection httpsURLConnection2 = null;
        try {
            httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, null, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(a());
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setConnectTimeout(ca.f49002b);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setReadTimeout(ca.f49002b);
            httpsURLConnection.addRequestProperty(AbstractC1114b.f5589g, "application/octet-stream");
            httpsURLConnection.addRequestProperty(str2, UMConfigure.sAppkey);
            httpsURLConnection.setRequestProperty("User-Agent", DeviceConfig.getCustomAgt());
            httpsURLConnection.connect();
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.flush();
            outputStream.close();
            return httpsURLConnection;
        } catch (Exception e3) {
            e = e3;
            httpsURLConnection2 = httpsURLConnection;
            e.printStackTrace();
            return httpsURLConnection2;
        }
    }
}
