package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.common.analyse2.db.AnalyseEventDBModel;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
class l2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final la f14777a;

    /* renamed from: b, reason: collision with root package name */
    private final q2 f14778b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f14779c;

    public l2(Context context, la laVar, q2 q2Var) {
        this.f14779c = context.getApplicationContext();
        this.f14778b = q2Var;
        this.f14777a = laVar;
    }

    private void a() {
        if (this.f14777a != null) {
            long jA = n6.a(3);
            rm.a("AnalyseDBHistoryTask", "删除过期的日志... 共计: " + this.f14777a.a(AnalyseEventDBModel.class, StrategyEventDBModel.COLUMN_EVENT_TIME, jA + ""));
        }
    }

    private List b() {
        la laVar = this.f14777a;
        if (laVar == null) {
            return null;
        }
        List listA = laVar.a(AnalyseEventDBModel.class, laVar.a(StrategyEventDBModel.COLUMN_EVENT_TIME));
        StringBuilder sb = new StringBuilder();
        sb.append("从数据库查询数据...");
        sb.append(listA != null ? Integer.valueOf(listA.size()) : " 历史数据为空...");
        rm.a("AnalyseDBHistoryTask", sb.toString());
        return listA;
    }

    @Override // java.lang.Runnable
    public void run() {
        a();
        List listB = b();
        if (listB == null || listB.isEmpty()) {
            return;
        }
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            ((AnalyseEventDBModel) it.next()).a(true);
        }
        r2 r2Var = new r2(this.f14779c, this.f14777a, this.f14778b);
        r2Var.c(listB);
        r2Var.run();
    }
}
