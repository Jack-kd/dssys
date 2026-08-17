package com.byazt.yj;

import android.text.TextUtils;
import com.byazt.fub.zy;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1283, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public int f27957a;
    public double eb;

    /* renamed from: q, reason: collision with root package name */
    public zy f27960q;

    /* renamed from: s, reason: collision with root package name */
    public String f27961s;

    /* renamed from: w, reason: collision with root package name */
    public double f27962w;
    public Map<String, jx> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, jx> f27959l = new HashMap();
    public Map<String, jx> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public double f27958j = Math.random();

    @com.byazt.kj.hp(hp = {0, 1, 1283, 123})
    public static class hp implements Cloneable {
        public float hp;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public boolean f27963l;

        public Object clone() {
            try {
                return (hp) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1283, 1157})
    public static class jx {
        public float hp;

        /* renamed from: l, reason: collision with root package name */
        public float f27964l;

        public jx() {
        }

        public String toString() {
            return "UnitSize{width=" + this.hp + ", height=" + this.f27964l + '}';
        }

        public jx(float f2, float f3) {
            this.hp = f2;
            this.f27964l = f3;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1283, 1376})
    /* renamed from: com.byazt.yj.l$l, reason: collision with other inner class name */
    public static class C0420l {
        public float hp;

        /* renamed from: j, reason: collision with root package name */
        public double f27965j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f27966l;

        /* renamed from: w, reason: collision with root package name */
        public float f27967w;

        public static JSONObject hp(C0420l c0420l) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("fontSize", c0420l.hp);
                jSONObject.put("letterSpacing", c0420l.f27966l);
                jSONObject.put("lineHeight", c0420l.f27965j);
                jSONObject.put("maxWidth", c0420l.f27967w);
                jSONObject.put("fontWeight", c0420l.jx);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public l(double d2, int i2, double d3, String str, zy zyVar) {
        this.f27962w = d2;
        this.f27957a = i2;
        this.eb = d3;
        this.f27961s = str;
        this.f27960q = zyVar;
    }

    private jx a(com.byazt.nw.s sVar, float f2, float f3) {
        com.byazt.nw.a aVarW = sVar.e().w();
        float fVv = aVarW.vv();
        int iZx = aVarW.zx();
        double dHd = aVarW.hd();
        int iVq = aVarW.vq();
        boolean zMp = aVarW.mp();
        boolean zEa = aVarW.ea();
        int iM = aVarW.m();
        C0420l c0420l = new C0420l();
        c0420l.hp = fVv;
        c0420l.f27966l = iZx;
        c0420l.jx = iVq;
        c0420l.f27965j = dHd;
        c0420l.f27967w = f2;
        return hp(sVar.e().l(), c0420l, zMp, zEa, iM, sVar);
    }

    private jx w(com.byazt.nw.s sVar, float f2, float f3) {
        String str = sVar.jx() + "_" + f2 + "_" + f3;
        if (this.jx.containsKey(str)) {
            return this.jx.get(str);
        }
        jx jxVarA = a(sVar, f2, f3);
        this.jx.put(str, jxVarA);
        return jxVarA;
    }

    public jx hp(com.byazt.nw.s sVar, float f2, float f3) {
        float f4;
        if (TextUtils.isEmpty(sVar.e().l()) && sVar.e().w().nr() == null) {
            return new jx(0.0f, 0.0f);
        }
        if (TextUtils.equals(sVar.e().getType(), "creative-playable-bait")) {
            return new jx(0.0f, 0.0f);
        }
        float fS = sVar.s();
        float fQ = sVar.q();
        com.byazt.nw.a aVarW = sVar.e().w();
        String strWv = aVarW.wv();
        String strD = aVarW.d();
        float fZy = sVar.zy();
        float fK = sVar.k();
        float fV = sVar.v();
        float fU = sVar.u();
        if (TextUtils.equals(strWv, "fixed")) {
            f2 = Math.min(fS, f2);
            if (TextUtils.equals(strD, LiveConfigKey.AUTO)) {
                f4 = l(sVar, f2 - fV, f3 - fU).f27964l;
                fQ = f4 + fU;
            }
        } else if (TextUtils.equals(strWv, LiveConfigKey.AUTO)) {
            jx jxVarL = l(sVar, f2 - fV, f3 - fU);
            f2 = jxVarL.hp + fV;
            if (TextUtils.equals(strD, LiveConfigKey.AUTO)) {
                f4 = jxVarL.f27964l;
                fQ = f4 + fU;
            }
        } else if (!TextUtils.equals(strWv, "flex")) {
            f2 = fS;
        } else if (TextUtils.equals(strD, LiveConfigKey.AUTO)) {
            f4 = l(sVar, f2 - fV, f3 - fU).f27964l;
            fQ = f4 + fU;
        }
        if (TextUtils.equals(strD, "scale")) {
            float fRound = Math.round((f2 - fZy) / fQ) + fK;
            if (fRound > f3) {
                f2 = Math.round((f3 - fK) * fQ) + fZy;
            } else {
                f3 = fRound;
            }
        } else if (TextUtils.equals(strD, "fixed")) {
            f3 = Math.min(fQ + fK, f3);
        } else if (!TextUtils.equals(strD, "flex")) {
            f3 = fQ;
        }
        jx jxVar = new jx();
        jxVar.hp = f2;
        jxVar.f27964l = f3;
        return jxVar;
    }

    public jx j(com.byazt.nw.s sVar, float f2, float f3) {
        float fMin;
        float f4;
        float f5;
        jx jxVar = new jx();
        float f6 = 0.0f;
        if (f3 <= 0.0f || f2 <= 0.0f) {
            jxVar.hp = 0.0f;
            jxVar.f27964l = 0.0f;
            return jxVar;
        }
        if (sVar.vv()) {
            return hp(sVar, f2, f3);
        }
        float fS = sVar.s();
        float fQ = sVar.q();
        float fV = sVar.v();
        float fU = sVar.u();
        com.byazt.nw.a aVarW = sVar.e().w();
        String strWv = aVarW.wv();
        String strD = aVarW.d();
        float fMin2 = ((TextUtils.equals(strWv, "flex") || TextUtils.equals(strWv, LiveConfigKey.AUTO)) ? f2 : Math.min(fS, f2)) - fV;
        if (TextUtils.equals(strD, "scale")) {
            fMin = Math.round(fMin2 / fQ) + fU;
            if (fMin > f3) {
                fMin2 = Math.round((f3 - fU) * fQ);
            }
        } else {
            fMin = (TextUtils.equals(strD, LiveConfigKey.AUTO) || TextUtils.equals(strD, "flex")) ? f3 : Math.min(fQ, f3);
        }
        float f7 = fMin - fU;
        List<List<com.byazt.nw.s>> listXs = sVar.xs();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        for (List<com.byazt.nw.s> list : listXs) {
            float f8 = f6;
            float f9 = fV;
            jx jxVarL = l(list, fMin2, f7);
            if (l(list)) {
                f5 = f8 + 1.0f;
            } else {
                fMax = Math.max(fMax, jxVarL.hp);
                f5 = f8;
            }
            float f10 = f5;
            float f11 = fMin2;
            fMax2 = sVar.e().getType().equals("carousel") ? Math.max(sVar.q(), jxVarL.f27964l) : fMax2 + jxVarL.f27964l;
            fV = f9;
            f6 = f10;
            fMin2 = f11;
        }
        float f12 = f6;
        float f13 = fMin2;
        float f14 = fV;
        if (!TextUtils.equals(strWv, LiveConfigKey.AUTO)) {
            f4 = f13;
        } else if (f12 == listXs.size()) {
            f4 = f2;
        } else {
            for (List<com.byazt.nw.s> list2 : listXs) {
                jx(list2);
                l(list2, fMax, f7);
            }
            f4 = fMax;
        }
        if (TextUtils.equals(strD, LiveConfigKey.AUTO)) {
            if (fMax2 <= f3) {
                f7 = fMax2;
            } else {
                hp(listXs, f4, f7);
            }
        } else if ((TextUtils.equals(strD, "fixed") || TextUtils.equals(strD, "flex")) && f7 < fMax2) {
            hp(listXs, f4, f7);
        }
        jxVar.hp = Math.min(f4 + f14, f2);
        jxVar.f27964l = Math.min(f7 + fU, f3);
        return jxVar;
    }

    public jx jx(com.byazt.nw.s sVar, float f2, float f3) {
        if (sVar == null) {
            return null;
        }
        jx jxVarHp = hp(sVar);
        if (jxVarHp != null && (jxVarHp.hp != 0.0f || jxVarHp.f27964l != 0.0f)) {
            return jxVarHp;
        }
        jx jxVarJ = j(sVar, f2, f3);
        hp(sVar, jxVarJ);
        return jxVarJ;
    }

    public jx l(com.byazt.nw.s sVar, float f2, float f3) {
        jx jxVar = new jx();
        if (sVar.e().w() == null) {
            return jxVar;
        }
        jx jxVarW = w(sVar, f2, f3);
        float f4 = jxVarW.hp;
        float f5 = jxVarW.f27964l;
        jxVar.hp = Math.min(f4, f2);
        jxVar.f27964l = Math.min(f5, f3);
        return jxVar;
    }

    private jx jx(List<com.byazt.nw.s> list, float f2, float f3) {
        float fMax;
        j(list);
        jx jxVar = new jx();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.byazt.nw.s sVar : list) {
            com.byazt.nw.a aVarW = sVar.e().w();
            if (aVarW.su() == 1 || aVarW.su() == 2) {
                arrayList.add(sVar);
            }
            if (aVarW.su() != 1 && aVarW.su() != 2) {
                arrayList2.add(sVar);
            }
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            jx((com.byazt.nw.s) obj, f2, f3);
        }
        if (arrayList2.size() <= 0) {
            return jxVar;
        }
        ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList2.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList2.get(i3);
            i3++;
            arrayList3.add(Float.valueOf(jx((com.byazt.nw.s) obj2, f2, f3).hp));
        }
        List<hp> arrayList4 = new ArrayList<>();
        int i4 = 0;
        while (true) {
            if (i4 >= arrayList2.size()) {
                break;
            }
            com.byazt.nw.s sVar2 = (com.byazt.nw.s) arrayList2.get(i4);
            String strWv = sVar2.e().w().wv();
            float fS = sVar2.s();
            boolean zEquals = TextUtils.equals(strWv, "flex");
            if (TextUtils.equals(strWv, LiveConfigKey.AUTO)) {
                List<List<com.byazt.nw.s>> listXs = sVar2.xs();
                if (listXs == null || listXs.size() <= 0) {
                    zEquals = false;
                } else {
                    Iterator<List<com.byazt.nw.s>> it = listXs.iterator();
                    while (it.hasNext()) {
                        if (l(it.next())) {
                            zEquals = true;
                            break;
                        }
                    }
                    zEquals = false;
                }
            }
            hp hpVar = new hp();
            if (!zEquals) {
                fS = ((Float) arrayList3.get(i4)).floatValue();
            }
            hpVar.hp = fS;
            hpVar.f27963l = !zEquals;
            if (zEquals) {
                fMax = ((Float) arrayList3.get(i4)).floatValue();
            }
            hpVar.jx = fMax;
            arrayList4.add(hpVar);
            i4++;
        }
        hp(arrayList4, f2, arrayList2);
        List<hp> listHp = e.hp(f2, arrayList4);
        float f4 = 0.0f;
        for (int i5 = 0; i5 < arrayList2.size(); i5++) {
            f4 += listHp.get(i5).hp;
            if (((Float) arrayList3.get(i5)).floatValue() != listHp.get(i5).hp) {
                j((com.byazt.nw.s) arrayList2.get(i5));
            }
        }
        int size3 = arrayList2.size();
        int i6 = 0;
        boolean z2 = false;
        int i7 = 0;
        while (true) {
            if (i7 >= size3) {
                break;
            }
            Object obj3 = arrayList2.get(i7);
            i7++;
            i6++;
            if (!l((com.byazt.nw.s) obj3)) {
                z2 = false;
                break;
            }
            if (i6 == arrayList2.size()) {
                z2 = true;
            }
        }
        fMax = z2 ? f3 : 0.0f;
        ArrayList arrayList5 = new ArrayList();
        for (int i8 = 0; i8 < arrayList2.size(); i8++) {
            com.byazt.nw.s sVar3 = (com.byazt.nw.s) arrayList2.get(i8);
            jx jxVarJx = jx(sVar3, listHp.get(i8).hp, f3);
            if (!l(sVar3)) {
                fMax = Math.max(fMax, jxVarJx.f27964l);
            }
            arrayList5.add(jxVarJx);
        }
        ArrayList arrayList6 = new ArrayList();
        int size4 = arrayList5.size();
        int i9 = 0;
        while (i9 < size4) {
            Object obj4 = arrayList5.get(i9);
            i9++;
            arrayList6.add(Float.valueOf(((jx) obj4).f27964l));
        }
        if (!z2) {
            for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                com.byazt.nw.s sVar4 = (com.byazt.nw.s) arrayList2.get(i10);
                if (l(sVar4) && ((Float) arrayList6.get(i10)).floatValue() != fMax) {
                    j(sVar4);
                    jx(sVar4, listHp.get(i10).hp, fMax);
                }
            }
        }
        jxVar.hp = f4;
        jxVar.f27964l = fMax;
        return jxVar;
    }

    private boolean l(List<com.byazt.nw.s> list) {
        List<List<com.byazt.nw.s>> listXs;
        Iterator<com.byazt.nw.s> it = list.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().e().w().wv(), "flex")) {
                return true;
            }
        }
        while (true) {
            boolean z2 = false;
            for (com.byazt.nw.s sVar : list) {
                if (TextUtils.equals(sVar.e().w().wv(), LiveConfigKey.AUTO) && (listXs = sVar.xs()) != null) {
                    int i2 = 0;
                    for (List<com.byazt.nw.s> list2 : listXs) {
                        i2++;
                        if (!l(list2)) {
                            break;
                        }
                        if (i2 == list2.size()) {
                            z2 = true;
                        }
                    }
                }
            }
            return z2;
        }
    }

    private String w(com.byazt.nw.s sVar) {
        return sVar.jx();
    }

    private jx l(List<com.byazt.nw.s> list, float f2, float f3) {
        jx jxVarHp = hp(list);
        if (jxVarHp != null && (jxVarHp.hp != 0.0f || jxVarHp.f27964l != 0.0f)) {
            return jxVarHp;
        }
        jx jxVarJx = jx(list, f2, f3);
        hp(list, jxVarJx);
        return jxVarJx;
    }

    private boolean l(com.byazt.nw.s sVar) {
        if (sVar == null) {
            return false;
        }
        if (TextUtils.equals(sVar.e().w().d(), "flex")) {
            return true;
        }
        return jx(sVar);
    }

    private jx hp(String str, C0420l c0420l, boolean z2, boolean z3, int i2, com.byazt.nw.s sVar) throws JSONException {
        return gu.hp(str, sVar.e().getType(), C0420l.hp(c0420l).toString(), z2, z3, i2, sVar, this.f27962w, this.f27957a, this.eb, this.f27961s, this.f27960q);
    }

    private void hp(List<List<com.byazt.nw.s>> list, float f2, float f3) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<List<com.byazt.nw.s>> it = list.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (hp(it.next(), false)) {
                z2 = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.byazt.nw.s> list2 : list) {
            hp hpVar = new hp();
            boolean zHp = hp(list2, !z2);
            hpVar.hp = zHp ? 1.0f : l(list2, f2, f3).f27964l;
            hpVar.f27963l = !zHp;
            arrayList.add(hpVar);
        }
        List<hp> listHp = e.hp(f3, arrayList);
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (((hp) arrayList.get(i2)).hp != listHp.get(i2).hp) {
                List<com.byazt.nw.s> list3 = list.get(i2);
                jx(list3);
                l(list3, f2, listHp.get(i2).hp);
            }
        }
    }

    private void j(com.byazt.nw.s sVar) {
        this.hp.remove(w(sVar));
        List<List<com.byazt.nw.s>> listXs = sVar.xs();
        if (listXs == null || listXs.size() <= 0) {
            return;
        }
        Iterator<List<com.byazt.nw.s>> it = listXs.iterator();
        while (it.hasNext()) {
            jx(it.next());
        }
    }

    private String j(List<com.byazt.nw.s> list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String strJx = list.get(i2).jx();
            if (i2 < list.size() - 1) {
                sb.append(strJx);
                sb.append("-");
            } else {
                sb.append(strJx);
            }
        }
        return sb.toString();
    }

    private boolean hp(List<com.byazt.nw.s> list, boolean z2) {
        for (com.byazt.nw.s sVar : list) {
            com.byazt.nw.a aVarW = sVar.e().w();
            String strD = aVarW.d();
            if (TextUtils.equals(strD, "flex") || (z2 && ((TextUtils.equals(aVarW.wv(), "flex") && TextUtils.equals(aVarW.d(), "scale") && com.byazt.nw.w.hp.get(sVar.e().getType()).intValue() == 7) || TextUtils.equals(strD, "flex")))) {
                return true;
            }
        }
        Iterator<com.byazt.nw.s> it = list.iterator();
        while (it.hasNext()) {
            if (jx(it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean jx(com.byazt.nw.s sVar) {
        List<List<com.byazt.nw.s>> listXs;
        if (!sVar.vv() && TextUtils.equals(sVar.e().w().d(), LiveConfigKey.AUTO) && (listXs = sVar.xs()) != null && listXs.size() > 0) {
            if (listXs.size() == 1) {
                Iterator<com.byazt.nw.s> it = listXs.get(0).iterator();
                while (it.hasNext()) {
                    if (!l(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<List<com.byazt.nw.s>> it2 = listXs.iterator();
            while (it2.hasNext()) {
                if (hp(it2.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void hp(List<hp> list, float f2, List<com.byazt.nw.s> list2) {
        float f3 = 0.0f;
        for (hp hpVar : list) {
            if (hpVar.f27963l) {
                f3 += hpVar.hp;
            }
        }
        if (f3 > f2) {
            int i2 = 0;
            for (int i3 = 0; i3 < list2.size(); i3++) {
                if (list.get(i3).f27963l && list2.get(i3).ns()) {
                    i2++;
                }
            }
            if (i2 > 0) {
                float fCeil = (float) (Math.ceil(((f3 - f2) / i2) * 1000.0f) / 1000.0d);
                for (int i4 = 0; i4 < list2.size(); i4++) {
                    hp hpVar2 = list.get(i4);
                    if (hpVar2.f27963l && list2.get(i4).ns()) {
                        hpVar2.hp -= fCeil;
                    }
                }
            }
        }
    }

    private void jx(List<com.byazt.nw.s> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f27959l.remove(j(list));
        Iterator<com.byazt.nw.s> it = list.iterator();
        while (it.hasNext()) {
            j(it.next());
        }
    }

    public void hp() {
        this.jx.clear();
        this.hp.clear();
        this.f27959l.clear();
    }

    public jx hp(com.byazt.nw.s sVar) {
        return this.hp.get(w(sVar));
    }

    public jx hp(List<com.byazt.nw.s> list) {
        return this.f27959l.get(j(list));
    }

    private void hp(com.byazt.nw.s sVar, jx jxVar) {
        this.hp.put(w(sVar), jxVar);
    }

    private void hp(List<com.byazt.nw.s> list, jx jxVar) {
        this.f27959l.put(j(list), jxVar);
    }
}
