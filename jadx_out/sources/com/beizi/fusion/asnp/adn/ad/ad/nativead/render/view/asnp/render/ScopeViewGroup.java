package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.ip;
import com.beizi.fusion.je;
import com.beizi.fusion.qo;
import com.beizi.fusion.xn;

/* loaded from: classes2.dex */
public class ScopeViewGroup extends RelativeLayout implements je {

    /* renamed from: a, reason: collision with root package name */
    private String f12926a;

    /* renamed from: b, reason: collision with root package name */
    protected RenderModel f12927b;

    /* renamed from: c, reason: collision with root package name */
    protected AssetModel f12928c;

    /* renamed from: d, reason: collision with root package name */
    private ScopeExpressContainer f12929d;

    public ScopeViewGroup(Context context) {
        super(context);
    }

    private void a(boolean z2) {
        if (getChildCount() > 0) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt instanceof je) {
                    ((je) childAt).onViewPause(z2);
                }
            }
        }
    }

    private void b(boolean z2) {
        if (getChildCount() > 0) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt instanceof je) {
                    ((je) childAt).onViewResume(z2);
                }
            }
        }
    }

    @Override // com.beizi.fusion.je
    public void bindAssetModel(AssetModel assetModel) {
        this.f12928c = assetModel;
    }

    public void bindRenderModel(RenderModel renderModel) {
        this.f12927b = renderModel;
    }

    public void fillContent(je.a aVar) {
        ScopeViewGroup scopeViewGroup;
        RenderModel renderModel = this.f12927b;
        if (renderModel != null) {
            ViewModel viewModel = renderModel.getViewModel();
            if (viewModel != null) {
                scopeViewGroup = this;
                xn.a(getContext(), scopeViewGroup, ip.a().a(viewModel.getBgColor()), qo.i(viewModel.getBorderSize()), viewModel.getBorderColor(), xn.a(viewModel.getBorderRadius(), getLayoutParams().height));
            } else {
                scopeViewGroup = this;
            }
            aVar.b(scopeViewGroup.f12927b.getId());
        }
    }

    @Override // com.beizi.fusion.je
    public ScopeExpressContainer getExpressRoot() {
        return this.f12929d;
    }

    @Override // com.beizi.fusion.je
    public int getLayer() {
        return this.f12927b.getLayer();
    }

    @Override // com.beizi.fusion.je
    public String getScopeViewID() {
        return this.f12926a;
    }

    public void onViewDestroy() {
        if (getChildCount() > 0) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt instanceof je) {
                    ((je) childAt).onViewDestroy();
                }
            }
        }
    }

    public void onViewPause(boolean z2) {
        a(z2);
    }

    public void onViewResume(boolean z2) {
        b(z2);
    }

    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        this.f12929d = scopeExpressContainer;
    }

    @Override // com.beizi.fusion.je
    public void setScopeViewID(String str) {
        this.f12926a = str;
        setId(qo.i(str));
    }

    public ScopeViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeViewGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeViewGroup(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
