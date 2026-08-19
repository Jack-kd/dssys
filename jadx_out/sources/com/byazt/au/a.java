package com.byazt.au;

import java.io.IOException;
import java.util.List;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

@com.byazt.kj.hp(hp = {0, 1, 273, 54})
/* loaded from: classes2.dex */
public class a implements com.byazt.ip.s {
    @Override // com.byazt.ip.s
    public com.byazt.ip.eb hp(String str, List<com.byazt.fu.jx> list) throws IOException {
        OkHttpClient okHttpClientEc = com.byazt.yk.jx.ec();
        if (okHttpClientEc == null) {
            throw new IOException("can't get httpClient");
        }
        Request.Builder builderHead = new Request.Builder().url(str).head();
        if (list != null && list.size() > 0) {
            for (com.byazt.fu.jx jxVar : list) {
                builderHead.addHeader(jxVar.hp(), com.byazt.xq.a.eb(jxVar.l()));
            }
        }
        final Call callNewCall = okHttpClientEc.newCall(builderHead.build());
        final Response responseExecute = callNewCall.execute();
        if (responseExecute == null) {
            throw new IOException("can't get response");
        }
        if (com.byazt.xq.hp.hp(2097152)) {
            responseExecute.close();
        }
        return new com.byazt.ip.eb() { // from class: com.byazt.au.a.1
            @Override // com.byazt.ip.eb
            public String hp(String str2) {
                return responseExecute.header(str2);
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
        };
    }
}
