package com.beizi.fusion;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class lp extends ea {
    public lp(Context context, da daVar, EnumC1130d enumC1130d) {
        super(context, daVar, enumC1130d);
    }

    @Override // com.beizi.fusion.ea
    public void a(List list) {
        this.f13693d = true;
        df dfVar = (df) c();
        if (dfVar != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new pp((td) it.next()));
            }
            dfVar.a(arrayList);
        }
    }
}
