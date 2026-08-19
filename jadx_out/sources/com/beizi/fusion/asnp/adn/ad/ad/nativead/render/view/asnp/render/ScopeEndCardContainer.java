package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;

/* loaded from: classes2.dex */
public class ScopeEndCardContainer extends ScopeViewGroup {
    public ScopeEndCardContainer(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        super.setExpressRoot(scopeExpressContainer);
        ScopeExpressContainer.d.a(scopeExpressContainer, (ViewGroup) this);
    }

    public ScopeEndCardContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeEndCardContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeEndCardContainer(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
