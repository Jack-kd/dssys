package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeWebView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.bd;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class ScopeInteractionWebView extends ScopeWebView implements bd {
    public ScopeInteractionWebView(@NonNull Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.bd
    public void bindInteractionForm(zc zcVar) {
        RenderModel renderModel = this.f12931c;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return;
        }
        zcVar.a(this.f12931c.getInteractionModel());
    }

    @Override // com.beizi.fusion.bd
    public String getActionType() {
        RenderModel renderModel = this.f12931c;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12931c.getInteractionModel().getExecution();
    }

    @Override // com.beizi.fusion.bd
    public String getInteractionType() {
        RenderModel renderModel = this.f12931c;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12931c.getInteractionModel().getBindEvent();
    }

    public ScopeInteractionWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeInteractionWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeInteractionWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
