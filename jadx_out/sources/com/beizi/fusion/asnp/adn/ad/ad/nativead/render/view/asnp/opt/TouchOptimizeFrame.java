package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;

/* loaded from: classes2.dex */
public class TouchOptimizeFrame extends BaseOptimizeFrame {

    /* renamed from: d, reason: collision with root package name */
    private final boolean f12745d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f12746e;

    public TouchOptimizeFrame(@NonNull Context context, OptimizeModel optimizeModel, boolean z2, boolean z3) {
        super(context, optimizeModel);
        this.f12745d = z2;
        this.f12746e = z3;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.BaseOptimizeFrame
    public void addToWindow() {
        onViewReappear();
        if (this.f12744c instanceof ViewGroup) {
            ((ViewGroup) this.f12744c).addView(this, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public boolean isParentUp() {
        return this.f12746e;
    }

    public boolean isQuickTouch() {
        return this.f12745d;
    }
}
