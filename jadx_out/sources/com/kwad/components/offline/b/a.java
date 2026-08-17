package com.kwad.components.offline.b;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.adLive.IAdLiveOfflineCompo;
import com.kwad.components.offline.api.core.adlive.IAdLiveEndRequest;
import com.kwad.components.offline.api.core.adlive.IAdLiveOfflineView;
import com.kwad.components.offline.api.core.adlive.IAdLivePlayModule;

/* loaded from: classes4.dex */
public class a implements com.kwad.components.core.offline.a.c.a {
    private final IAdLiveOfflineCompo axn;

    public a(@NonNull IAdLiveOfflineCompo iAdLiveOfflineCompo) {
        this.axn = iAdLiveOfflineCompo;
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final IAdLiveEndRequest getAdLiveEndRequest(String str) {
        return this.axn.getAdLiveEndRequest(str);
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final IAdLivePlayModule getAdLivePlayModule(IAdLiveOfflineView iAdLiveOfflineView, String str, String str2, String str3, long j2, int i2) {
        return this.axn.getAdLivePlayModule(iAdLiveOfflineView, str, str2, str3, j2, i2);
    }

    @Override // com.kwad.sdk.components.b
    public final Class<a> getComponentsType() {
        return a.class;
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final IAdLiveOfflineView getView(Context context, int i2) {
        return this.axn.getView(context, i2);
    }

    @Override // com.kwad.sdk.components.b
    public final void init(Context context) {
    }

    @Override // com.kwad.sdk.components.b
    public final int priority() {
        return this.axn.priority();
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final boolean tu() {
        return this.axn.getState() == IAdLiveOfflineCompo.AdLiveState.READY;
    }
}
