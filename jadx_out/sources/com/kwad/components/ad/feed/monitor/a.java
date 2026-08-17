package com.kwad.components.ad.feed.monitor;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.videocache.f;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.y;
import java.io.File;

/* loaded from: classes4.dex */
public final class a {
    public static Pair<Integer, String> q(@NonNull AdTemplate adTemplate) {
        String strM = com.kwad.sdk.core.response.helper.a.M(e.eO(adTemplate));
        if (TextUtils.isEmpty(strM)) {
            return new Pair<>(2, "empty videoUrl");
        }
        int iGa = com.kwad.sdk.core.config.e.Ga();
        int i2 = 1;
        String str = "";
        if (iGa < 0) {
            File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(strM);
            if (!y.Q(fileCO)) {
                a.C0614a c0614a = new a.C0614a();
                int i3 = com.kwad.sdk.core.diskcache.b.a.Lx().a(strM, c0614a) ? 1 : 2;
                str = c0614a.msg;
                i2 = i3;
            }
            adTemplate.setDownloadSize(fileCO != null ? fileCO.length() : 0L);
        } else if (iGa > 0) {
            a.C0614a c0614a2 = new a.C0614a();
            f fVarCm = com.kwad.sdk.core.videocache.c.a.cm(ServiceProvider.getContext());
            if (!fVarCm.fz(strM)) {
                i2 = fVarCm.a(strM, (long) (iGa * 1024), c0614a2, null) ? 1 : 2;
            }
            str = c0614a2.msg;
            adTemplate.setDownloadSize(iGa * 1024);
        } else {
            adTemplate.setDownloadSize(0L);
        }
        return new Pair<>(Integer.valueOf(i2), str);
    }
}
