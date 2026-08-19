package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.ca;
import com.umeng.analytics.pro.ce;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.r;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: c, reason: collision with root package name */
    private static boolean f50327c = false;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f50328d = false;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f50329e = false;

    /* renamed from: a, reason: collision with root package name */
    private Context f50330a;

    /* renamed from: b, reason: collision with root package name */
    private b f50331b;

    public c(Context context) {
        this.f50330a = context;
    }

    private void b() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f50330a, "domain_p", "");
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f50330a, "domain_s", "");
        if (!TextUtils.isEmpty(strImprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(strImprintProperty);
        }
        if (!TextUtils.isEmpty(strImprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(strImprintProperty2);
        }
        String strImprintProperty3 = UMEnvelopeBuild.imprintProperty(this.f50330a, "oversea_domain_p", "");
        String strImprintProperty4 = UMEnvelopeBuild.imprintProperty(this.f50330a, "oversea_domain_s", "");
        if (!TextUtils.isEmpty(strImprintProperty3)) {
            UMServerURL.OVERSEA_DEFAULT_URL = DataHelper.assembleURL(strImprintProperty3);
        }
        if (!TextUtils.isEmpty(strImprintProperty4)) {
            UMServerURL.OVERSEA_SECONDARY_URL = DataHelper.assembleURL(strImprintProperty4);
        }
        AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.OVERSEA_DEFAULT_URL, UMServerURL.OVERSEA_SECONDARY_URL};
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.f50220b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.f50220b.startsWith("460") || com.umeng.commonsdk.statistics.b.f50220b.startsWith("461")) {
            AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
        }
    }

    private void c() {
        if (f50329e) {
            return;
        }
        ImprintHandler.getImprintService(this.f50330a).registImprintCallback(AnalyticsConstants.CFG_FIELD_KEY, new UMImprintChangeCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.1
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                if (FieldManager.b()) {
                    FieldManager.a().a(c.this.f50330a, str2);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> apply imprint change and exit: key=" + str + "; value= " + str2);
                    UMWorkDispatch.sendEvent(c.this.f50330a, com.umeng.commonsdk.internal.a.f50119w, com.umeng.commonsdk.internal.b.a(c.this.f50330a).a(), null);
                }
            }
        });
        f50329e = true;
    }

    private void d() {
        if (f50328d) {
            return;
        }
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 注册零号报文 imprint 应答处理回调。");
        ImprintHandler.getImprintService(this.f50330a).registPreProcessCallback(AnalyticsConstants.ZERO_RESPONSE_FLAG, new UMImprintPreProcessCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.2
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback
            public boolean onPreProcessImprintKey(String str, String str2) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> onImprintValueChanged: key=" + str + "; value= " + str2);
                FieldManager.a().a(c.this.f50330a);
                UMWorkDispatch.sendEvent(c.this.f50330a, com.umeng.commonsdk.internal.a.f50115s, com.umeng.commonsdk.internal.b.a(c.this.f50330a).a(), null);
                ImprintHandler.getImprintService(c.this.f50330a).a(AnalyticsConstants.ZERO_RESPONSE_FLAG);
                return true;
            }
        });
        ImprintHandler.getImprintService(this.f50330a).registImprintCallback(AnalyticsConstants.CFG_FIELD_KEY, new UMImprintChangeCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.3
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> first onImprintValueChanged: key=" + str + "; value= " + str2);
                FieldManager.a().a(c.this.f50330a, str2);
                UMWorkDispatch.sendEvent(c.this.f50330a, com.umeng.commonsdk.internal.a.f50115s, com.umeng.commonsdk.internal.b.a(c.this.f50330a).a(), null);
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv zcfg response: foregound count timer enabled.");
                    if (!UMWorkDispatch.eventHasExist()) {
                        UMWorkDispatch.sendEventEx(c.this.f50330a, r.a.f49617E, CoreProtocol.getInstance(c.this.f50330a), null, 0L);
                    }
                }
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50470F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv zcfg response: FirstResumeTrigger enabled.");
                    o.a(c.this.f50330a).b(c.this.f50330a);
                }
                ImprintHandler.getImprintService(c.this.f50330a).unregistImprintCallback(AnalyticsConstants.CFG_FIELD_KEY, this);
            }
        });
        f50328d = true;
    }

    public void a(b bVar) {
        this.f50331b = bVar;
    }

    private void a() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f50330a, "domain_p", "");
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f50330a, "domain_s", "");
        if (!TextUtils.isEmpty(strImprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(strImprintProperty);
        }
        if (!TextUtils.isEmpty(strImprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(strImprintProperty2);
        }
        AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
    }

    private byte[] c(byte[] bArr, String str) {
        if (ca.a().b()) {
            return a(bArr, str.replace("ulogs", "cnlogs"));
        }
        return a(bArr, str);
    }

    public byte[] a(byte[] bArr, boolean z2, boolean z3, String str) throws IOException {
        if (SdkVersion.SDK_TYPE == 0) {
            a();
        } else {
            UMServerURL.DEFAULT_URL = UMServerURL.OVERSEA_DEFAULT_URL;
            UMServerURL.SECONDARY_URL = UMServerURL.OVERSEA_SECONDARY_URL;
            b();
        }
        byte[] bArrA = null;
        int i2 = 0;
        while (true) {
            String[] strArr = AnalyticsConstants.APPLOG_URL_LIST;
            if (i2 >= strArr.length) {
                return bArrA;
            }
            String str2 = strArr[i2];
            if (z3) {
                d();
            } else {
                c();
            }
            String str3 = str2 + File.separator + str;
            if (SdkVersion.SDK_TYPE != 0) {
                bArrA = a(bArr, str3);
            } else if (i2 == 0) {
                bArrA = b(bArr, str3);
            } else {
                bArrA = c(bArr, str3);
            }
            if (bArrA != null) {
                b bVar = this.f50331b;
                if (bVar != null) {
                    bVar.onRequestSucceed(z2);
                }
                return bArrA;
            }
            b bVar2 = this.f50331b;
            if (bVar2 != null) {
                bVar2.onRequestFailed();
            }
            i2++;
        }
    }

    private byte[] b(byte[] bArr, String str) throws IOException {
        if (ca.a().b()) {
            if (!str.contains("preulogs")) {
                str = str.replace("ulogs", "cnlogs");
            }
            String strB = ca.b(str);
            String strC = ce.b().c();
            if (!TextUtils.isEmpty(strC)) {
                str = ca.a(strC, strB);
            }
            byte[] bArrA = a(bArr, str);
            if (bArrA == null) {
                String strA = ca.a().a(strB);
                if (!TextUtils.isEmpty(strA) && !str.equalsIgnoreCase(strA)) {
                    return a(bArr, strA);
                }
            }
            return bArrA;
        }
        return a(bArr, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0189: IF  (r6 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:85:0x0195, block:B:80:0x0189 */
    public byte[] a(byte[] bArr, String str) throws IOException {
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        OutputStream outputStream2;
        UMRTLog.i(UMRTLog.RTLOG_TAG, "[有状态] 上报url: " + str);
        try {
            try {
                b bVar = this.f50331b;
                if (bVar != null) {
                    bVar.onRequestStart();
                }
                httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                try {
                    boolean z2 = true;
                    if (!f50327c) {
                        httpsURLConnection.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        sSLContext.init(null, null, new SecureRandom());
                        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                        f50327c = true;
                    }
                    httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                    httpsURLConnection.setRequestProperty("X-Umeng-Sdk", a.a(this.f50330a).b());
                    httpsURLConnection.setRequestProperty(AbstractC1114b.f5589g, a.a(this.f50330a).a());
                    httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                    httpsURLConnection.setRequestProperty("X-Umeng-Pro-Ver", "1.0.0");
                    httpsURLConnection.setRequestProperty("SM-IMP", "1");
                    httpsURLConnection.setRequestProperty("User-Agent", DeviceConfig.getCustomAgt());
                    httpsURLConnection.setConnectTimeout(KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
                    httpsURLConnection.setReadTimeout(KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setUseCaches(false);
                    outputStream = httpsURLConnection.getOutputStream();
                    try {
                        outputStream.write(bArr);
                        outputStream.flush();
                        httpsURLConnection.connect();
                        b bVar2 = this.f50331b;
                        if (bVar2 != null) {
                            bVar2.onRequestEnd();
                        }
                        int responseCode = httpsURLConnection.getResponseCode();
                        String headerField = httpsURLConnection.getHeaderField(AbstractC1114b.f5589g);
                        if (TextUtils.isEmpty(headerField) || !headerField.equalsIgnoreCase("application/thrift")) {
                            z2 = false;
                        }
                        String str2 = AnalyticsConstants.OS;
                        if (responseCode == 200 && z2) {
                            InputStream inputStream = httpsURLConnection.getInputStream();
                            try {
                                byte[] streamToByteArray = HelperUtils.readStreamToByteArray(inputStream);
                                try {
                                    outputStream.close();
                                } catch (Exception e2) {
                                    UMCrashManager.reportCrash(this.f50330a, e2);
                                }
                                try {
                                    httpsURLConnection.getInputStream().close();
                                } catch (IOException unused) {
                                }
                                httpsURLConnection.disconnect();
                                return streamToByteArray;
                            } finally {
                                HelperUtils.safeClose(inputStream);
                            }
                        }
                        try {
                            outputStream.close();
                        } catch (Exception e3) {
                            UMCrashManager.reportCrash(this.f50330a, e3);
                        }
                        try {
                            httpsURLConnection.getInputStream().close();
                        } catch (IOException unused2) {
                        }
                        httpsURLConnection.disconnect();
                        return null;
                    } catch (UnknownHostException unused3) {
                        UMLog.aq("A_10200", 2, "\\|");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e4) {
                                UMCrashManager.reportCrash(this.f50330a, e4);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (IOException unused4) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (SSLHandshakeException unused5) {
                        UMLog.aq("A_10201", 2, "\\|");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e5) {
                                UMCrashManager.reportCrash(this.f50330a, e5);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (IOException unused6) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (Throwable unused7) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e6) {
                                UMCrashManager.reportCrash(this.f50330a, e6);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (IOException unused8) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    }
                } catch (UnknownHostException unused9) {
                    outputStream = null;
                } catch (SSLHandshakeException unused10) {
                    outputStream = null;
                } catch (Throwable unused11) {
                    outputStream = null;
                }
            } catch (Throwable th) {
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (Exception e7) {
                        UMCrashManager.reportCrash(this.f50330a, e7);
                    }
                }
                if (str != 0) {
                    try {
                        str.getInputStream().close();
                    } catch (IOException unused12) {
                    }
                    str.disconnect();
                    throw th;
                }
                throw th;
            }
        } catch (UnknownHostException unused13) {
            httpsURLConnection = null;
            outputStream = null;
        } catch (SSLHandshakeException unused14) {
            httpsURLConnection = null;
            outputStream = null;
        } catch (Throwable unused15) {
            httpsURLConnection = null;
            outputStream = null;
        }
    }
}
