package com.beizi.fusion;

import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.init.AnalyseEventModel;
import com.beizi.fusion.o2;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public final class p2 {

    /* renamed from: a, reason: collision with root package name */
    private final LinkedList f15484a = new LinkedList();

    public p2(String str, String str2, String str3, List list, o2.c cVar) throws NumberFormatException {
        Collections.reverse(list);
        Iterator it = list.iterator();
        o2 o2Var = null;
        while (it.hasNext()) {
            AnalyseEventModel analyseEventModel = (AnalyseEventModel) it.next();
            o2 o2Var2 = new o2(str, str2, str3);
            o2Var2.a(cVar);
            o2Var2.a(analyseEventModel);
            if (o2Var != null) {
                o2Var2.d(o2Var);
            }
            this.f15484a.addFirst(o2Var2);
            o2Var = o2Var2;
        }
    }

    public void a(AnalyseSimpleLog analyseSimpleLog) {
        LinkedList linkedList = this.f15484a;
        if (linkedList == null || linkedList.getFirst() == null) {
            return;
        }
        ((o2) this.f15484a.getFirst()).c(analyseSimpleLog);
    }
}
