package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.je;
import com.beizi.fusion.qo;
import com.beizi.fusion.xn;

/* loaded from: classes2.dex */
public class ScopeSimpleView extends View implements je {

    /* renamed from: a, reason: collision with root package name */
    private String f12869a;

    /* renamed from: b, reason: collision with root package name */
    protected RenderModel f12870b;

    /* renamed from: c, reason: collision with root package name */
    protected AssetModel f12871c;

    /* renamed from: d, reason: collision with root package name */
    private ScopeExpressContainer f12872d;

    public ScopeSimpleView(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.je
    public void bindAssetModel(AssetModel assetModel) {
        this.f12871c = assetModel;
    }

    public void bindRenderModel(RenderModel renderModel) {
        this.f12870b = renderModel;
    }

    public void fillContent(je.a aVar) {
        RenderModel renderModel = this.f12870b;
        if (renderModel == null || renderModel.getViewModel() == null) {
            return;
        }
        ViewModel viewModel = this.f12870b.getViewModel();
        xn.a(getContext(), this, viewModel.getBgColor(), qo.i(viewModel.getBorderSize()), viewModel.getBorderColor(), xn.a(viewModel.getBorderRadius(), getLayoutParams().height));
        aVar.b(this.f12870b.getId());
    }

    @Override // com.beizi.fusion.je
    public ScopeExpressContainer getExpressRoot() {
        return this.f12872d;
    }

    @Override // com.beizi.fusion.je
    public int getLayer() {
        return this.f12870b.getLayer();
    }

    @Override // com.beizi.fusion.je
    public String getScopeViewID() {
        return this.f12869a;
    }

    @Override // com.beizi.fusion.je
    public void onViewDestroy() {
    }

    public void onViewPause(boolean z2) {
    }

    public void onViewResume(boolean z2) {
    }

    @Override // com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        this.f12872d = scopeExpressContainer;
    }

    @Override // com.beizi.fusion.je
    public void setScopeViewID(String str) {
        this.f12869a = str;
        setId(qo.i(str));
    }

    public ScopeSimpleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeSimpleView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeSimpleView(Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
