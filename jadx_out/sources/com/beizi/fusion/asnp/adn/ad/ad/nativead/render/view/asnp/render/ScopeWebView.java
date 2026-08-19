package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.je;
import com.beizi.fusion.qo;

/* loaded from: classes2.dex */
public class ScopeWebView extends BasicWebView implements je {

    /* renamed from: b, reason: collision with root package name */
    private String f12930b;

    /* renamed from: c, reason: collision with root package name */
    protected RenderModel f12931c;

    /* renamed from: d, reason: collision with root package name */
    protected AssetModel f12932d;

    /* renamed from: e, reason: collision with root package name */
    private ScopeExpressContainer f12933e;

    public ScopeWebView(@NonNull Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.je
    public void bindAssetModel(AssetModel assetModel) {
        this.f12932d = assetModel;
    }

    @Override // com.beizi.fusion.je
    public void bindRenderModel(RenderModel renderModel) {
        this.f12931c = renderModel;
    }

    @Override // com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        if (aVar != null) {
            aVar.b(this.f12931c.getId());
        }
    }

    @Override // com.beizi.fusion.je
    public ScopeExpressContainer getExpressRoot() {
        return this.f12933e;
    }

    @Override // com.beizi.fusion.je
    public int getLayer() {
        return this.f12931c.getLayer();
    }

    @Override // com.beizi.fusion.je
    public String getScopeViewID() {
        return this.f12930b;
    }

    @Override // com.beizi.fusion.je
    public void onViewDestroy() {
    }

    @Override // com.beizi.fusion.je
    public void onViewPause(boolean z2) {
    }

    @Override // com.beizi.fusion.je
    public void onViewResume(boolean z2) {
    }

    @Override // com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        this.f12933e = scopeExpressContainer;
    }

    @Override // com.beizi.fusion.je
    public void setScopeViewID(String str) {
        this.f12930b = str;
        setId(qo.i(str));
    }

    public ScopeWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
