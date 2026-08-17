package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.StrategyFilterModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.unite.UniteControlModel;

/* loaded from: classes2.dex */
public class mo {

    /* renamed from: c, reason: collision with root package name */
    private final Context f15189c;

    /* renamed from: d, reason: collision with root package name */
    private long f15190d;

    /* renamed from: a, reason: collision with root package name */
    private final String f15187a = "asnp_ad_%s_common";

    /* renamed from: b, reason: collision with root package name */
    private final String f15188b = "%s_unite";

    /* renamed from: e, reason: collision with root package name */
    private final String f15191e = m0.a();

    public mo(Context context) {
        this.f15189c = context;
    }

    public boolean a(StrategyFilterModel strategyFilterModel) {
        UniteControlModel uniteControlModel = strategyFilterModel.getUniteControlModel();
        if (uniteControlModel != null) {
            int random = uniteControlModel.getRandom();
            long duration = uniteControlModel.getDuration();
            long jA = a();
            long jCurrentTimeMillis = System.currentTimeMillis() - jA;
            if (jA > 0 && duration > 0 && jCurrentTimeMillis < duration && random < this.f15190d && random != 100) {
                return true;
            }
        }
        return false;
    }

    public void b(long j2) {
        this.f15190d = j2;
    }

    public void a(long j2) {
        p0.b(this.f15189c, String.format("asnp_ad_%s_common", this.f15191e), String.format("%s_unite", this.f15191e), j2);
    }

    private long a() {
        return p0.a(this.f15189c, String.format("asnp_ad_%s_common", this.f15191e), String.format("%s_unite", this.f15191e), 0L);
    }
}
