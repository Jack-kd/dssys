package com.byazt.au;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.ip.IDownloadHttpService;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import okhttp3.Call;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

@com.byazt.kj.hp(hp = {0, 1, 273, 94})
/* loaded from: classes2.dex */
public class eb implements IDownloadHttpService {
    public final com.byazt.xq.s<String, OkHttpClient> hp = new com.byazt.xq.s<>(4, 8);

    private OkHttpClient hp(String str, final String str2) {
        try {
            final String host = Uri.parse(str).getHost();
            if (!TextUtils.isEmpty(host) && !TextUtils.isEmpty(str2)) {
                String str3 = host + "_" + str2;
                synchronized (this.hp) {
                    try {
                        OkHttpClient okHttpClient = this.hp.get(str3);
                        if (okHttpClient != null) {
                            return okHttpClient;
                        }
                        OkHttpClient.Builder builderN = com.byazt.yk.jx.n();
                        builderN.dns(new Dns() { // from class: com.byazt.au.eb.2
                        });
                        OkHttpClient okHttpClientBuild = builderN.build();
                        synchronized (this.hp) {
                            this.hp.put(str3, okHttpClientBuild);
                        }
                        return okHttpClientBuild;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return com.byazt.yk.jx.ec();
    }

    @Override // com.byazt.ip.IDownloadHttpService
    public com.byazt.ip.q downloadWithConnection(int i2, String str, List<com.byazt.fu.jx> list) throws IOException {
        String strL;
        Request.Builder builderUrl = new Request.Builder().url(str);
        if (list == null || list.size() <= 0) {
            strL = null;
        } else {
            strL = null;
            for (com.byazt.fu.jx jxVar : list) {
                String strHp = jxVar.hp();
                if (strL == null && "ss_d_request_host_ip_114".equals(strHp)) {
                    strL = jxVar.l();
                } else {
                    builderUrl.addHeader(strHp, com.byazt.xq.a.eb(jxVar.l()));
                }
            }
        }
        OkHttpClient okHttpClientHp = !TextUtils.isEmpty(strL) ? hp(str, strL) : com.byazt.yk.jx.ec();
        if (okHttpClientHp == null) {
            throw new IOException("can't get httpClient");
        }
        final Call callNewCall = okHttpClientHp.newCall(builderUrl.build());
        final Response responseExecute = callNewCall.execute();
        if (responseExecute == null) {
            throw new IOException("can't get response");
        }
        final ResponseBody responseBodyBody = responseExecute.body();
        if (responseBodyBody == null) {
            return null;
        }
        InputStream inputStreamByteStream = responseBodyBody.byteStream();
        String strHeader = responseExecute.header("Content-Encoding");
        final InputStream gZIPInputStream = (strHeader == null || !"gzip".equalsIgnoreCase(strHeader) || (inputStreamByteStream instanceof GZIPInputStream)) ? inputStreamByteStream : new GZIPInputStream(inputStreamByteStream);
        return new com.byazt.ip.w() { // from class: com.byazt.au.eb.1
            @Override // com.byazt.ip.q
            public InputStream hp() throws IOException {
                return gZIPInputStream;
            }

            @Override // com.byazt.ip.q
            public void j() {
                try {
                    ResponseBody responseBody = responseBodyBody;
                    if (responseBody != null) {
                        responseBody.close();
                    }
                    Call call = callNewCall;
                    if (call == null || call.getCanceled()) {
                        return;
                    }
                    callNewCall.cancel();
                } catch (Throwable unused) {
                }
            }

            @Override // com.byazt.ip.eb
            public void jx() {
                Call call = callNewCall;
                if (call == null || call.getCanceled()) {
                    return;
                }
                callNewCall.cancel();
            }

            @Override // com.byazt.ip.eb
            public int l() throws IOException {
                return responseExecute.code();
            }

            @Override // com.byazt.ip.hp
            public String w() {
                return "";
            }

            @Override // com.byazt.ip.eb
            public String hp(String str2) {
                return responseExecute.header(str2);
            }
        };
    }
}
