package com.kwad.components.ad.d;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.components.ad.reward.monitor.c;
import com.kwad.components.ad.reward.monitor.d;
import com.kwad.components.core.video.k;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.AdVideoPreCacheConfig;
import com.kwad.sdk.core.videocache.f;
import com.kwad.sdk.export.proxy.AdHttpResponseListener;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.y;
import java.io.File;

/* loaded from: classes4.dex */
public final class b {
    @WorkerThread
    public static boolean a(@NonNull AdTemplate adTemplate, boolean z2, final AdVideoPreCacheConfig adVideoPreCacheConfig, final a aVar) {
        String str;
        String strM = com.kwad.sdk.core.response.helper.a.M(e.eO(adTemplate));
        if (TextUtils.isEmpty(strM)) {
            return false;
        }
        final long adVideoPreCacheSize = adVideoPreCacheConfig.getAdVideoPreCacheSize() * 1024;
        boolean zA = true;
        if (adVideoPreCacheSize > 0) {
            long j2 = adVideoPreCacheConfig.isContinueLoadingAll() ? -1L : adVideoPreCacheSize;
            a.C0614a c0614a = new a.C0614a();
            f fVarCm = com.kwad.sdk.core.videocache.c.a.cm(ServiceProvider.getContext());
            if (fVarCm.fy(strM)) {
                a(aVar);
            } else {
                zA = fVarCm.a(strM, j2, c0614a, new AdHttpResponseListener() { // from class: com.kwad.components.ad.d.b.1
                    private boolean cr = false;

                    @Override // com.kwad.sdk.export.proxy.AdHttpResponseListener
                    public final boolean onReadProgress(long j3, long j4) {
                        if ((j3 >= adVideoPreCacheSize || j3 >= j4) && !this.cr) {
                            this.cr = true;
                            b.a(aVar);
                            if (!adVideoPreCacheConfig.isContinueLoadingAll()) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // com.kwad.sdk.export.proxy.AdHttpResponseListener
                    public final void onResponseEnd() {
                    }

                    @Override // com.kwad.sdk.export.proxy.AdHttpResponseListener
                    public final void onResponseStart() {
                    }
                });
            }
            str = c0614a.msg;
        } else {
            str = "";
            if (adVideoPreCacheSize < 0) {
                File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(strM);
                if (!y.Q(fileCO)) {
                    a.C0614a c0614a2 = new a.C0614a();
                    zA = com.kwad.sdk.core.diskcache.b.a.Lx().a(strM, c0614a2);
                    str = c0614a2.msg;
                }
                adTemplate.setDownloadSize(fileCO != null ? fileCO.length() : 0L);
                if (zA) {
                    a(aVar);
                }
            } else {
                a(aVar);
            }
        }
        if (zA) {
            k.n(strM, adVideoPreCacheConfig.getAdVideoPreCacheSize());
            return zA;
        }
        d.a(z2, adTemplate, str);
        c.a(z2, adTemplate);
        a(aVar, str);
        return zA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.ai();
    }

    private static void a(a aVar, String str) {
        if (aVar == null) {
            return;
        }
        aVar.aj();
    }
}
