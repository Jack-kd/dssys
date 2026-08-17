package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.StrategyFilterModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.frequency.StrategyFrequencyModel;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class lo {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14953a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14954b;

    public lo(Context context, String str) {
        this.f14953a = context;
        this.f14954b = str;
    }

    public boolean a(StrategyFilterModel strategyFilterModel) {
        List<StrategyFrequencyModel> frequencyModels;
        if (strategyFilterModel == null || (frequencyModels = strategyFilterModel.getFrequencyModels()) == null || frequencyModels.isEmpty()) {
            return false;
        }
        for (StrategyFrequencyModel strategyFrequencyModel : frequencyModels) {
            LinkedList linkedListB = ((q0) r0.a().b(this.f14953a)).b(this.f14954b, strategyFrequencyModel.getEventCode());
            long relativeTime = strategyFrequencyModel.getRelativeTime();
            long[] absoluteTime = strategyFrequencyModel.getAbsoluteTime();
            int count = strategyFrequencyModel.getCount();
            if (linkedListB != null && linkedListB.size() >= count) {
                if (a(relativeTime, linkedListB, count)) {
                    return true;
                }
                return a(absoluteTime, linkedListB);
            }
        }
        return false;
    }

    private boolean a(long[] jArr, LinkedList linkedList) {
        return jArr != null && jArr.length > 1 && a(jArr) && ((StrategyEventDBModel) linkedList.getLast()).getEventTime() > jArr[0];
    }

    private boolean a(long j2, LinkedList linkedList, int i2) {
        return j2 > 0 && ((StrategyEventDBModel) linkedList.get(linkedList.size() - i2)).getEventTime() + j2 > System.currentTimeMillis();
    }

    private boolean a(long[] jArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return jArr[0] <= jCurrentTimeMillis && jCurrentTimeMillis <= jArr[1];
    }
}
