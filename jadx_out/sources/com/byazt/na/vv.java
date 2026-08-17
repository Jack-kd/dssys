package com.byazt.na;

import android.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 2, 65})
/* loaded from: classes3.dex */
public class vv {
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public final Set<Object> f23513l = new hp();
    public final Map<String, com.byazt.ze.s> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final Comparator<Pair<String, Float>> f23512j = new Comparator<Pair<String, Float>>() { // from class: com.byazt.na.vv.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float fFloatValue = ((Float) pair.second).floatValue();
            float fFloatValue2 = ((Float) pair2.second).floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    };

    public void hp(boolean z2) {
        this.hp = z2;
    }

    public void hp(String str, float f2) {
        if (this.hp) {
            com.byazt.ze.s sVar = this.jx.get(str);
            if (sVar == null) {
                sVar = new com.byazt.ze.s();
                this.jx.put(str, sVar);
            }
            sVar.hp(f2);
            if ("__container".equals(str)) {
                Iterator<Object> it = this.f23513l.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }
}
