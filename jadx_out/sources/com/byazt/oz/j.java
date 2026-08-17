package com.byazt.oz;

import android.util.SparseArray;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 854, 38})
/* loaded from: classes3.dex */
public class j implements Function<SparseArray<Object>, Object> {
    public static volatile j hp;

    private j() {
    }

    public static j create() {
        if (hp == null) {
            hp = new j();
        }
        return hp;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        if (iIntValue == 10001) {
            s.u().gu(pluginValueSetL.booleanValue(1));
        } else {
            if (iIntValue == 10002) {
                return Boolean.valueOf(s.u().pc());
            }
            if (iIntValue == 10003) {
                sz.hp().hp((Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(0, Function.class));
            } else if (iIntValue == 10004) {
                Function<SparseArray<Object>, Object> function = (Function) pluginValueSetL.objectValue(0, Function.class);
                String str = (String) pluginValueSetL.objectValue(1, String.class);
                String str2 = (String) pluginValueSetL.objectValue(2, String.class);
                String str3 = (String) pluginValueSetL.objectValue(3, String.class);
                String str4 = (String) pluginValueSetL.objectValue(4, String.class);
                HashMap map = new HashMap();
                map.put("adtype", str2);
                map.put("rit", str);
                map.put("image_mode", str3);
                map.put("preview_extra", str4);
                sz.hp().hp(map, function);
            } else {
                if (iIntValue == 10005) {
                    com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
                    hpVarHp.hp(0, s.u().nr());
                    hpVarHp.hp(1, s.u().rk());
                    hpVarHp.hp(2, s.u().wt());
                    hpVarHp.hp(3, s.u().ru());
                    hpVarHp.hp(4, s.u().gd());
                    return hpVarHp.l().sparseArray();
                }
                if (iIntValue == 10006) {
                    sz.hp().hp((Map<String, Object>) pluginValueSetL.objectValue(0, Map.class), (Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(1, Function.class));
                } else if (iIntValue == 10007) {
                    s.u().hp((s.jx) null);
                } else if (iIntValue == 10008) {
                    return Boolean.valueOf(s.u().as());
                }
            }
        }
        return null;
    }
}
