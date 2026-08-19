package com.byazt.ney;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import com.byazt.tgw.e;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1539, 30})
/* loaded from: classes3.dex */
public class jx {
    public static List<e> hp(com.byazt.tgw.l lVar, String str) {
        return hp(lVar, str, 0.0d, 0.0d);
    }

    private static void l(double d2, double d3, double d4, com.byazt.tgw.l lVar, List<e> list) {
        if (d3 < d4 || d3 <= 0.0d || d2 < lVar.d()) {
            return;
        }
        if (d2 > lVar.o() && d4 <= 0.0d) {
            list.addAll(lVar.rz());
            return;
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d2 * d3);
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        double dDoubleValue = bigDecimalValueOf.setScale(2, roundingMode).doubleValue();
        double dDoubleValue2 = BigDecimal.valueOf(d2 * d4).setScale(2, roundingMode).doubleValue();
        List<e> listRz = lVar.rz();
        double dB = -1.0d;
        double dB2 = -1.0d;
        for (int i2 = 0; i2 < listRz.size(); i2++) {
            e eVar = listRz.get(i2);
            if (eVar.ec() == 0) {
                double dDoubleValue3 = BigDecimal.valueOf(eVar.b()).setScale(2, RoundingMode.HALF_UP).doubleValue();
                if (dDoubleValue3 <= dDoubleValue && dDoubleValue3 >= dDoubleValue2) {
                    if (dB == -1.0d || dB < eVar.b()) {
                        dB = eVar.b();
                    }
                    if (dB2 == -1.0d || dB2 > eVar.b()) {
                        dB2 = eVar.b();
                    }
                    list.add(eVar);
                }
            } else {
                list.add(eVar);
            }
        }
        lVar.s().put("max_ecpm", Double.valueOf(dB));
        lVar.s().put("min_ecpm", Double.valueOf(dB2));
        lVar.s().put("upper_cpm_x", Double.valueOf(dDoubleValue));
    }

    public static List<e> hp(com.byazt.tgw.l lVar, String str, double d2, double d3) {
        int i2;
        int i3;
        double dHp;
        if (lVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        com.byazt.tgw.j jVarW = com.byazt.di.l.l().w(str);
        if (jVarW != null) {
            double dHp2 = jVarW.hp();
            double dL = jVarW.l();
            int iJx = jVarW.jx();
            if (lVar.q() == 3 || lVar.q() == 4) {
                i3 = 1;
                i2 = 0;
                double[] dArrHp = l.j().hp(lVar.q(), d2, d3, lVar.r(), str);
                dHp = dArrHp[0];
                lVar.s().put("price_from", Integer.valueOf((int) dArrHp[1]));
            } else {
                if (lVar.q() == 2) {
                    dHp = l.j().hp(3, str, iJx);
                    i3 = 1;
                } else {
                    i3 = 1;
                    dHp = 0.0d;
                }
                i2 = 0;
            }
            if (!jVarW.w() && dHp > 0.0d) {
                if (jVarW.getType() == i3) {
                    l(dHp, dHp2, dL, lVar, copyOnWriteArrayList);
                } else if (jVarW.getType() == 2) {
                    hp(dHp, dHp2, dL, lVar, copyOnWriteArrayList);
                }
                List<com.byazt.tgw.jx> listA = com.byazt.di.l.l().a(String.valueOf(lVar.xh()));
                if (listA != null) {
                    Iterator<com.byazt.tgw.jx> it = listA.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        com.byazt.tgw.jx next = it.next();
                        if (dHp > next.a() && dHp <= next.w()) {
                            lVar.s().put("user_label_value", next);
                            break;
                        }
                    }
                }
            }
            lVar.s().put(a.C0051a.f3218o, jVarW.j());
            lVar.s().put("ecpm", Double.valueOf(dHp));
            lVar.s().put("rule_in_use", Integer.valueOf(copyOnWriteArrayList.size() == 0 ? i2 : i3));
            lVar.s().put("group_type", Integer.valueOf(lVar.q()));
        } else {
            i2 = 0;
        }
        if (com.byazt.aw.l.l()) {
            if (copyOnWriteArrayList.size() != 0) {
                for (int i4 = i2; i4 < copyOnWriteArrayList.size(); i4++) {
                    com.byazt.aw.l.hp("DynamicRuleCalculate", "rit：" + ((e) copyOnWriteArrayList.get(i4)).vv() + ",level：" + ((e) copyOnWriteArrayList.get(i4)).o());
                }
            } else {
                com.byazt.aw.l.hp("DynamicRuleCalculate", "走原waterfall，inUse ： 不生效");
            }
        }
        return copyOnWriteArrayList.size() != 0 ? copyOnWriteArrayList : lVar.rz();
    }

    private static void hp(double d2, double d3, double d4, com.byazt.tgw.l lVar, List<e> list) {
        if (lVar == null || d3 == 0.0d || d2 < lVar.d()) {
            return;
        }
        if (d2 > lVar.o() && d4 <= 0.0d) {
            list.addAll(lVar.rz());
        } else {
            hp(lVar, d2, d3, d4, list);
        }
    }

    public static void hp(com.byazt.tgw.l lVar, double d2, double d3, double d4, List<e> list) {
        double d5;
        Map<Integer, List<e>> mapYr = lVar.yr();
        if (mapYr != null) {
            ArrayList arrayList = new ArrayList(mapYr.keySet());
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (((Integer) arrayList.get(i3)).intValue() > 0) {
                    arrayList2.add(arrayList.get(i3));
                } else {
                    List<e> list2 = mapYr.get(arrayList.get(i3));
                    if (list2 != null) {
                        list.addAll(list2);
                    }
                }
            }
            com.byazt.qca.l.hp(arrayList2);
            int size = arrayList2.size();
            if (size <= 0) {
                return;
            }
            int iMax = -1;
            int iMin = size;
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                double d6 = i4;
                List<e> list3 = mapYr.get(arrayList2.get(i4));
                if (list3 != null) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= list3.size()) {
                            break;
                        }
                        e eVar = list3.get(i5);
                        if (eVar != null && eVar.ec() == 0) {
                            double dDoubleValue = BigDecimal.valueOf(eVar.b()).setScale(2, RoundingMode.HALF_UP).doubleValue();
                            if (d2 == dDoubleValue) {
                                if (iMax < 0) {
                                    iMax = Math.max((int) (d6 - d3), 0);
                                }
                                if (iMin == size || d2 == dDoubleValue) {
                                    if (d4 > 0.0d) {
                                        iMin = Math.min((int) (d6 + d4), size - 1);
                                    }
                                }
                            } else if (d2 > dDoubleValue) {
                                if (iMax < 0) {
                                    d5 = 2.0d;
                                    iMax = Math.max((int) Math.ceil(((d6 + (d6 - 1.0d)) / 2.0d) - d3), 0);
                                } else {
                                    d5 = 2.0d;
                                }
                                if (iMin == size) {
                                    if (d4 > 0.0d) {
                                        iMin = Math.min((int) Math.floor(((d6 + (d6 - 1.0d)) / d5) + d4), size - 1);
                                    }
                                }
                            }
                        }
                        i5++;
                    }
                    iMin = size - 1;
                }
            }
            if (iMax < 0) {
                iMax = 0;
            }
            if (iMin >= size) {
                iMin = size - 1;
            }
            int i6 = iMax;
            double d7 = -1.0d;
            double dB = -1.0d;
            double dB2 = -1.0d;
            while (i6 <= iMin) {
                List<e> list4 = mapYr.get(arrayList2.get(i6));
                if (list4 != null && list4.size() != 0) {
                    while (i2 < list4.size()) {
                        e eVar2 = list4.get(i2);
                        if (eVar2 != null) {
                            if (dB < eVar2.b() || dB == -1.0d) {
                                dB = eVar2.b();
                            }
                            if (dB2 > eVar2.b() || dB2 == -1.0d) {
                                dB2 = eVar2.b();
                            }
                            list.add(eVar2);
                            if (i6 == iMax) {
                                d7 = dB;
                            }
                        }
                        i2++;
                    }
                }
                i6++;
                i2 = 0;
            }
            lVar.s().put("upper_cpm_x", Double.valueOf(d7));
            lVar.s().put("max_ecpm", Double.valueOf(dB));
            lVar.s().put("min_ecpm", Double.valueOf(dB2));
        }
    }
}
