package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;

/* loaded from: classes2.dex */
public class SlideOptimizeFrame extends BaseOptimizeFrame {
    public SlideOptimizeFrame(@NonNull Context context, OptimizeModel optimizeModel) {
        super(context, optimizeModel);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.BaseOptimizeFrame
    public void addToWindow() {
        onViewReappear();
        if (this.f12744c instanceof ViewGroup) {
            ((ViewGroup) this.f12744c).addView(this, new ViewGroup.LayoutParams(1, 1));
        }
    }
}
