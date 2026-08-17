package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;

/* loaded from: classes2.dex */
public interface je {

    public interface a {
        void a(String str);

        void b(String str);
    }

    void bindAssetModel(AssetModel assetModel);

    void bindRenderModel(RenderModel renderModel);

    void fillContent(a aVar);

    Context getContext();

    ScopeExpressContainer getExpressRoot();

    int getLayer();

    String getScopeViewID();

    void onViewDestroy();

    void onViewPause(boolean z2);

    void onViewResume(boolean z2);

    void setExpressRoot(ScopeExpressContainer scopeExpressContainer);

    void setScopeViewID(String str);
}
