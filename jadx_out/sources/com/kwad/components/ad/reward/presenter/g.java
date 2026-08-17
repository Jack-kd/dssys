package com.kwad.components.ad.reward.presenter;

import androidx.annotation.Nullable;
import com.kwad.components.core.j.a;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.internal.api.SceneImpl;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes4.dex */
public final class g extends b implements a.InterfaceC0542a {
    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() throws JSONException {
        super.ay();
        boolean zLZ = com.kwad.sdk.core.local.a.LZ();
        com.kwad.sdk.core.d.c.d("RewardInnerAdLoadPresenter", "onBind localCheckResult: " + zLZ);
        SceneImpl sceneImpl = this.mAdTemplate.mAdScene;
        if (sceneImpl == null || !zLZ) {
            return;
        }
        com.kwad.components.core.j.a.a(sceneImpl, this);
    }

    @Override // com.kwad.components.core.j.a.InterfaceC0542a
    public final void e(@Nullable List<com.kwad.components.core.j.c> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.kwad.sdk.core.d.c.d("RewardInnerAdLoadPresenter", "onInnerAdLoad: " + list.size());
        AdTemplate adTemplate = list.get(0).getAdTemplate();
        boolean zDf = com.kwad.sdk.core.response.helper.b.df(adTemplate);
        List<a.InterfaceC0542a> listHd = this.uj.hd();
        if (zDf) {
            com.kwad.sdk.core.local.a.g(com.kwad.sdk.core.response.helper.b.dc(adTemplate), com.kwad.sdk.core.response.helper.b.dd(adTemplate));
            if (listHd != null) {
                Iterator<a.InterfaceC0542a> it = listHd.iterator();
                while (it.hasNext()) {
                    it.next().e(list);
                }
            }
        }
    }

    @Override // com.kwad.components.core.j.a.InterfaceC0542a
    public final void onError(int i2, String str) {
        List<a.InterfaceC0542a> listHd = this.uj.hd();
        if (listHd != null) {
            Iterator<a.InterfaceC0542a> it = listHd.iterator();
            while (it.hasNext()) {
                it.next().onError(i2, str);
            }
        }
    }

    @Override // com.kwad.components.core.j.a.InterfaceC0542a
    public final void onRequestResult(int i2) {
        List<a.InterfaceC0542a> listHd = this.uj.hd();
        if (listHd != null) {
            Iterator<a.InterfaceC0542a> it = listHd.iterator();
            while (it.hasNext()) {
                it.next().onRequestResult(i2);
            }
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
    }
}
