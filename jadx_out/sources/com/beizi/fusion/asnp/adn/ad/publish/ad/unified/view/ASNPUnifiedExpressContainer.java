package com.beizi.fusion.asnp.adn.ad.publish.ad.unified.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.ic;
import com.beizi.fusion.kf;

/* loaded from: classes2.dex */
public class ASNPUnifiedExpressContainer extends ScopeExpressContainer {
    public ASNPUnifiedExpressContainer(@NonNull Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer
    public void a(ReportModel3 reportModel3, ic icVar, kf kfVar) {
        super.a(reportModel3, icVar, kfVar);
        getMonitor().a();
    }

    public ASNPUnifiedExpressContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ASNPUnifiedExpressContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ASNPUnifiedExpressContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
