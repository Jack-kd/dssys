package com.kwad.components.core.webview.jshandler;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.core.response.model.AdTemplate;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class m implements com.kwad.sdk.core.webview.c.a {
    private com.kwad.components.core.e.d.d QS;
    private KsAppDownloadListener aph;
    private AdTemplate mAdTemplate;
    private Context mContext;
    private com.kwad.sdk.core.webview.c.c re;

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public String apH;
        public String packageName;
    }

    @KsJson
    public static class b extends com.kwad.sdk.core.response.a.a {
        public int apI;
        public int progress;
        public long soFarBytes;
        public int status;
        public long totalBytes;
    }

    public m(Context context, AdTemplate adTemplate) {
        this.mContext = context;
        this.mAdTemplate = adTemplate;
    }

    private synchronized void r(String str, String str2) {
        this.QS = new com.kwad.components.core.e.d.d(this.mAdTemplate, null, str, str2);
        if (this.aph == null) {
            KsAppDownloadListener ksAppDownloadListenerYr = yr();
            this.aph = ksAppDownloadListenerYr;
            this.QS.b(ksAppDownloadListenerYr);
        }
    }

    private static boolean s(String str, String str2) {
        return TextUtils.isEmpty(str) || TextUtils.isEmpty(str2);
    }

    private KsAppDownloadListener yr() {
        return new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.core.webview.jshandler.m.1
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                m.this.s(0, 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                m.this.s(8, 100);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                m.this.s(0, 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                m.this.s(12, 100);
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i2) {
                m.this.s(4, i2);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i2) {
                if (i2 == 0) {
                    m.this.s(1, 0);
                } else {
                    m.this.s(2, i2);
                }
            }
        };
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "installAppForDownload";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.re = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(int i2, int i3) {
        if (this.re != null) {
            b bVar = new b();
            bVar.status = i2;
            bVar.progress = i3;
            AdTemplate adTemplate = this.mAdTemplate;
            if (adTemplate != null) {
                bVar.totalBytes = com.kwad.sdk.core.response.helper.e.eO(adTemplate).totalBytes;
                long j2 = com.kwad.sdk.core.response.helper.e.eO(this.mAdTemplate).soFarBytes;
                bVar.soFarBytes = j2;
                long j3 = bVar.totalBytes;
                if (j3 > 0) {
                    bVar.apI = (int) ((j2 * 100.0f) / j3);
                } else {
                    bVar.apI = 0;
                }
            }
            this.re.b(bVar);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        this.re = cVar;
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(str));
            if (s(aVar.apH, aVar.packageName)) {
                cVar.onError(-1, "param is empty");
                return;
            }
            if (this.QS == null) {
                r(aVar.apH, aVar.packageName);
            }
            a.C0529a c0529aAv = new a.C0529a(this.mContext).as(true).at(false).aJ(this.mAdTemplate).av(false);
            if (this.QS.w(c0529aAv)) {
                return;
            }
            this.QS.d(this.aph);
            this.QS.v(c0529aAv);
        } catch (Exception unused) {
            cVar.onError(-1, "data parse error");
        }
    }
}
