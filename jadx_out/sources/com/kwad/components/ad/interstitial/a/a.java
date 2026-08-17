package com.kwad.components.ad.interstitial.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.kwad.components.ad.interstitial.report.b;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.videocache.f;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.y;
import java.io.File;

/* loaded from: classes4.dex */
public final class a {
    public static boolean w(@NonNull AdTemplate adTemplate) {
        boolean zA;
        String strM = com.kwad.sdk.core.response.helper.a.M(e.eO(adTemplate));
        if (TextUtils.isEmpty(strM)) {
            b.eX().b(adTemplate, "empty videoUrl");
            return false;
        }
        b.eX().B(adTemplate);
        int iGa = com.kwad.sdk.core.config.e.Ga();
        String str = "";
        if (iGa < 0) {
            File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(strM);
            if (y.Q(fileCO)) {
                zA = true;
            } else {
                a.C0614a c0614a = new a.C0614a();
                zA = com.kwad.sdk.core.diskcache.b.a.Lx().a(strM, c0614a);
                str = c0614a.msg;
            }
            adTemplate.setDownloadSize(fileCO != null ? fileCO.length() : 0L);
            adTemplate.setDownloadType(2);
        } else if (iGa > 0) {
            a.C0614a c0614a2 = new a.C0614a();
            f fVarB = com.kwad.sdk.core.config.e.KA() == 1 ? com.kwad.sdk.core.videocache.c.a.b(ServiceProvider.getContext(), 1, 0) : com.kwad.sdk.core.config.e.KA() == 2 ? com.kwad.sdk.core.videocache.c.a.b(ServiceProvider.getContext(), 1, 1) : com.kwad.sdk.core.videocache.c.a.cm(ServiceProvider.getContext());
            zA = !fVarB.fz(strM) ? fVarB.a(strM, iGa * 1024, c0614a2, null) : true;
            str = c0614a2.msg;
            adTemplate.setDownloadSize(iGa * 1024);
            adTemplate.setDownloadType(3);
        } else {
            adTemplate.setDownloadSize(0L);
            adTemplate.setDownloadType(1);
            zA = true;
        }
        if (zA) {
            adTemplate.setDownloadStatus(1);
            return zA;
        }
        adTemplate.setDownloadStatus(2);
        b.eX().b(adTemplate, str);
        com.kwad.components.ad.interstitial.report.realtime.a.fd();
        com.kwad.components.ad.interstitial.report.realtime.a.b(str, adTemplate);
        return zA;
    }
}
