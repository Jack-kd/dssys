package com.byazt.sf;

import android.util.SparseArray;
import com.byazt.jz.nu;
import com.byazt.jz.sz;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, 45})
/* loaded from: classes3.dex */
public class e {
    public static JSONObject hp(PluginValueSet pluginValueSet, int i2) {
        if (pluginValueSet == null) {
            return null;
        }
        JSONObject jSONObject = (JSONObject) pluginValueSet.objectValue(i2, JSONObject.class);
        if (jSONObject != null) {
            return jSONObject;
        }
        String strStringValue = pluginValueSet.stringValue(i2, null);
        if (strStringValue != null && strStringValue.length() != 0) {
            try {
                return new JSONObject(strStringValue);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static boolean l() {
        JSONObject jSONObjectAd = sz.l().ad();
        return jSONObjectAd != null && jSONObjectAd.optInt("pre_drop", 0) == 1;
    }

    public static boolean hp() {
        JSONObject jSONObjectAd = sz.l().ad();
        return jSONObjectAd != null && jSONObjectAd.optInt("video_cache", 0) == 1;
    }

    public static void hp(final Function<SparseArray<Object>, Object> function) {
        jx jxVar;
        Function<SparseArray<Object>, Object> functionY = com.byazt.jz.s.u().y();
        if (sz.l().xh()) {
            Object objApply = functionY.apply(com.byazt.wi.j.hp().hp(6).hp(Boolean.class).hp(0, "com.byted.csj.ext").l());
            if (objApply != null ? ((Boolean) objApply).booleanValue() : false) {
                Object objApply2 = functionY.apply(com.byazt.wi.j.hp().hp(7).hp(Boolean.class).hp(0, "com.byted.csj.ext").l());
                if (((objApply2 != null ? ((Boolean) objApply2).booleanValue() : false) || nu.hp().hp(functionY, false)) && (jxVar = (jx) com.byazt.ym.j.getService("pitaya")) != null) {
                    jxVar.init(sz.getContext(), new com.byazt.hde.j() { // from class: com.byazt.sf.e.1
                        @Override // com.byazt.hde.j
                        public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
                            if (function == null) {
                                return null;
                            }
                            function.apply(com.byazt.wi.j.hp().hp(i2).hp(Void.class).hp(-99999979, (SparseArray) pluginValueSet.objectValue(-99999979, SparseArray.class)).l());
                            return null;
                        }
                    });
                }
            }
        }
    }
}
