package com.byazt.yj;

import com.byazt.yj.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1283, 45})
/* loaded from: classes3.dex */
public class e {
    public static float hp(float f2) {
        return (float) Math.ceil((f2 * 16.0f) / 16.0f);
    }

    public static List<l.hp> hp(float f2, List<l.hp> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<l.hp> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((l.hp) it.next().clone());
        }
        int size = arrayList.size();
        boolean z2 = true;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            l.hp hpVar = (l.hp) obj;
            if (hpVar.f27963l) {
                i2 = (int) (i2 + hpVar.hp);
            } else {
                i3 = (int) (i3 + hpVar.hp);
                z2 = false;
            }
        }
        if (!z2 || f2 <= i2) {
            float f3 = i2;
            float f4 = f2 < f3 ? f2 / f3 : 1.0f;
            float f5 = f2 > f3 ? (f2 - f3) / i3 : 0.0f;
            if (f5 > 1.0f) {
                ArrayList arrayList2 = new ArrayList();
                int size2 = arrayList.size();
                boolean z3 = false;
                int i5 = 0;
                while (i5 < size2) {
                    Object obj2 = arrayList.get(i5);
                    i5++;
                    l.hp hpVar2 = (l.hp) obj2;
                    if (!hpVar2.f27963l) {
                        float f6 = hpVar2.jx;
                        if (f6 != 0.0f && hpVar2.hp * f5 > f6) {
                            hpVar2.hp = f6;
                            hpVar2.f27963l = true;
                            z3 = true;
                        }
                    }
                    arrayList2.add(hpVar2);
                }
                if (z3) {
                    return hp(f2, arrayList2);
                }
            }
            int size3 = arrayList.size();
            int i6 = 0;
            int i7 = 0;
            while (i7 < size3) {
                Object obj3 = arrayList.get(i7);
                i7++;
                l.hp hpVar3 = (l.hp) obj3;
                if (hpVar3.f27963l) {
                    hpVar3.hp = hp(hpVar3.hp * f4);
                } else {
                    hpVar3.hp = hp(hpVar3.hp * f5);
                }
                i6 = (int) (i6 + hpVar3.hp);
            }
            float f7 = i6;
            if (f7 < f2) {
                float f8 = f2 - f7;
                for (int size4 = 0; size4 < arrayList.size() && f8 > 0.0f; size4 = (size4 + 1) % arrayList.size()) {
                    l.hp hpVar4 = (l.hp) arrayList.get(size4);
                    if ((f2 < f3 && hpVar4.f27963l) || (f2 > f3 && !hpVar4.f27963l)) {
                        hpVar4.hp += 0.0625f;
                        f8 -= 0.0625f;
                    }
                }
            }
        }
        return arrayList;
    }
}
