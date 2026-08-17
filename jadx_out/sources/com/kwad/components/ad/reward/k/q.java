package com.kwad.components.ad.reward.k;

import android.content.DialogInterface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.webview.jshandler.z;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public final class q extends z {
    private WeakReference<com.kwad.components.ad.reward.g> Cf;
    private long zV;

    public q(@NonNull com.kwad.sdk.core.webview.b bVar, @Nullable com.kwad.components.core.e.d.d dVar, @Nullable com.kwad.components.ad.reward.g gVar, long j2, @Nullable com.kwad.sdk.core.webview.d.a.a aVar, @Nullable DialogInterface.OnDismissListener onDismissListener) {
        super(bVar, dVar, aVar, onDismissListener);
        this.zV = j2;
        if (gVar != null) {
            this.Cf = new WeakReference<>(gVar);
        }
    }

    @Override // com.kwad.components.core.webview.jshandler.z
    public final a.C0529a a(a.C0529a c0529a, com.kwad.sdk.core.webview.d.b.a aVar, AdTemplate adTemplate) {
        long playDuration;
        WeakReference<com.kwad.components.ad.reward.g> weakReference = this.Cf;
        if (weakReference == null || weakReference.get() == null) {
            playDuration = this.zV;
            if (playDuration <= 0) {
                playDuration = 0;
            }
        } else {
            playDuration = this.Cf.get().sz.getPlayDuration();
        }
        return super.a(c0529a, aVar, adTemplate).E(playDuration);
    }

    @Override // com.kwad.components.core.webview.jshandler.z
    public final void kN() {
        super.kN();
        if (this.apJ != null) {
            com.kwad.components.ad.reward.c.a.ih().e(this.apJ.getAdTemplate(), com.kwad.components.ad.reward.c.b.STATUS_NONE);
        }
    }
}
