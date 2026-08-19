package com.byazt.ami;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1332, 28})
@ATSKeep
/* loaded from: classes2.dex */
public class hp implements com.byazt.vbz.hp, Function {
    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return getAdnStatusMap();
        }
        if (iIntValue == 2) {
            return Boolean.valueOf(getAndUpdateInitStatus((String) sparseArray.get(1)));
        }
        if (iIntValue == 3) {
            com.byazt.vbz.jx dexPluginStrategy = getDexPluginStrategy((String) sparseArray.get(1));
            return dexPluginStrategy != null ? new com.byazt.vbz.j(dexPluginStrategy) : dexPluginStrategy;
        }
        if (iIntValue != 4) {
            return null;
        }
        return getAdnKeySet();
    }

    @Override // com.byazt.vbz.hp
    public Set<String> getAdnKeySet() {
        return j.hp();
    }

    @Override // com.byazt.vbz.hp
    public Map<String, Map<String, Object>> getAdnStatusMap() {
        return l.hp();
    }

    @Override // com.byazt.vbz.hp
    public boolean getAndUpdateInitStatus(String str) {
        return l.hp(str);
    }

    @Override // com.byazt.vbz.hp
    public com.byazt.vbz.jx getDexPluginStrategy(String str) {
        return j.hp(str);
    }
}
