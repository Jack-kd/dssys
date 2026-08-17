package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;

/* loaded from: classes2.dex */
public class ScopeInteractionTagView extends ScopeInteractionTextView {
    public ScopeInteractionTagView(@NonNull Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView
    public void a() {
        RenderModel renderModel = this.f12876d;
        if (renderModel == null || renderModel.getViewModel() == null) {
            return;
        }
        setText(this.f12876d.getViewModel().getCMD5());
    }

    public ScopeInteractionTagView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeInteractionTagView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
