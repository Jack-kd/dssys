package com.umeng.commonsdk.deeplink;

import com.anythink.core.common.m.AbstractC1114b;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.ca;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
final class f {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50054a = "DeepLinkRequest";

    public interface a {
        void a(int i2, Throwable th);

        void a(JSONObject jSONObject, String str, String str2);
    }

    private f() {
    }

    public static void a(JSONObject jSONObject, a aVar) {
        if (aVar == null) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL request start: url=https://one.umops.com/api/deferredLink");
        HttpsURLConnection httpsURLConnection = null;
        try {
            try {
                byte[] bytes = jSONObject.toString().getBytes("UTF-8");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ay.a(bytes, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byte[] bytes2 = UMConfigure.sAppkey.getBytes("UTF-8");
                byte[] bArrA = ay.a(byteArray, bytes2);
                HttpsURLConnection httpsURLConnection2 = (HttpsURLConnection) new URL("https://one.umops.com/api/deferredLink").openConnection();
                try {
                    SSLContext sSLContext = SSLContext.getInstance("TLS");
                    sSLContext.init(null, null, new SecureRandom());
                    httpsURLConnection2.setSSLSocketFactory(sSLContext.getSocketFactory());
                    httpsURLConnection2.setRequestMethod("POST");
                    httpsURLConnection2.setConnectTimeout(ca.f49002b);
                    httpsURLConnection2.setReadTimeout(ca.f49002b);
                    httpsURLConnection2.setDoOutput(true);
                    httpsURLConnection2.setDoInput(true);
                    httpsURLConnection2.addRequestProperty(AbstractC1114b.f5589g, "application/json");
                    httpsURLConnection2.addRequestProperty("appkey", UMConfigure.sAppkey);
                    httpsURLConnection2.connect();
                    OutputStream outputStream = httpsURLConnection2.getOutputStream();
                    outputStream.write(bArrA);
                    outputStream.flush();
                    outputStream.close();
                    if (httpsURLConnection2.getResponseCode() == 200) {
                        InputStream inputStream = httpsURLConnection2.getInputStream();
                        try {
                            String str = new String(ay.a(HelperUtils.readStreamToByteArray(inputStream), bytes2), "UTF-8");
                            JSONObject jSONObject2 = new JSONObject(str);
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL response: " + str);
                            int iOptInt = jSONObject2.optInt("status", 0);
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL response status=" + iOptInt);
                            if (iOptInt == 1) {
                                aVar.a(jSONObject2.optJSONObject("params"), jSONObject2.optString("targetPath", ""), jSONObject2.optString("refId", ""));
                            } else {
                                aVar.a(-1, new Exception("服务端匹配失败。"));
                            }
                            HelperUtils.safeClose(inputStream);
                        } catch (Throwable th) {
                            HelperUtils.safeClose(inputStream);
                            throw th;
                        }
                    } else {
                        aVar.a(-4, new Exception("网络错误。"));
                    }
                    httpsURLConnection2.disconnect();
                } catch (Throwable th2) {
                    th = th2;
                    httpsURLConnection = httpsURLConnection2;
                    try {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL request error: " + th.getMessage());
                        aVar.a(-4, new Exception("网络错误。"));
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                    } catch (Throwable th3) {
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.disconnect();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
