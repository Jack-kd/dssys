package com.beizi.fusion;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class li extends ea {
    public li(Context context, da daVar, EnumC1130d enumC1130d) {
        super(context, daVar, enumC1130d);
    }

    @Override // com.beizi.fusion.ea
    public void a(List list) {
        this.f13693d = true;
        sd sdVar = (sd) c();
        if (sdVar != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new zo((td) it.next()));
            }
            sdVar.a(arrayList);
        }
    }
}
