package com.beizi.fusion;

import android.content.Context;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class l0 {
    public static void a(Context context) {
        aq.b().a(context);
        qf.b().a(context);
    }

    public static void a(Context context, List list, List list2, List list3) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                qf.b().a(context, (String) it.next(), sh.TEMPORARY);
            }
        }
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                qf.b().a(context, (String) it2.next(), sh.PERMANENT);
            }
        }
        if (list3 != null) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                aq.b().a(context, (String) it3.next(), sh.TEMPORARY);
            }
        }
    }
}
