package com.beizi.fusion;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class l5 {

    public interface a {
        Object a(Object obj);
    }

    public static Object a(List list, Object obj, rb rbVar) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            Object obj2 = list.get(i2);
            if (obj2 != null && rbVar.fetch(obj2, obj)) {
                return obj2;
            }
        }
        return null;
    }

    public static List b(List list, Object obj, rb rbVar) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null && rbVar.fetch(next, obj)) {
                arrayList.add(next);
                it.remove();
            }
        }
        return arrayList;
    }

    public static List a(List list, a aVar) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.a(it.next()));
        }
        return arrayList;
    }
}
