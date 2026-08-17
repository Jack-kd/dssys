package com.beizi.fusion;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.StrategyFilterModel;

/* loaded from: classes2.dex */
public class ko {

    /* renamed from: a, reason: collision with root package name */
    private long f14776a = 0;

    public void a(long j2) {
        this.f14776a = j2;
    }

    public boolean a(StrategyFilterModel strategyFilterModel) {
        return strategyFilterModel != null && ((long) strategyFilterModel.getMinTime()) > 0 && this.f14776a <= ((long) strategyFilterModel.getMinTime());
    }
}
