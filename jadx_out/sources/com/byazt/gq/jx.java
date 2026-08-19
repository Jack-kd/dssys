package com.byazt.gq;

import android.util.SparseArray;
import com.byazt.ctq.w;
import com.byazt.jz.sz;
import com.byazt.wi.j;
import com.byazt.ymw.b;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 665, 30})
/* loaded from: classes2.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    public static Function<SparseArray<Object>, Object> hp;

    @com.byazt.kj.hp(hp = {0, 1, 665, 219})
    public static class hp {
        public static final jx hp = new jx();
    }

    public static jx getInstance() {
        return hp.hp;
    }

    private static void hp() {
        if (hp == null) {
            return;
        }
        b.hp().hp(true);
        b.hp().hp(new b.hp() { // from class: com.byazt.gq.jx.1
            @Override // com.byazt.ymw.b.hp
            public void hp(int i2, Map<String, Object> map) throws JSONException {
                if (map != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        for (String str : map.keySet()) {
                            jSONObject.put(str, map.get(str));
                        }
                        jx.notifyCommonEvent(1, jSONObject);
                    } catch (Exception unused) {
                    }
                }
            }
        });
    }

    public static void notifyCommonEvent(int i2, JSONObject jSONObject) {
        if (hp != null) {
            j jVarHp = j.hp();
            jVarHp.hp(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2).hp(Void.class);
            jVarHp.hp(20004, Integer.valueOf(i2));
            jVarHp.hp(20005, jSONObject);
            hp.apply(jVarHp.l());
        }
    }

    public static void reportEvent(com.byazt.ai.hp hpVar) {
        if (hp != null) {
            j jVarHp = j.hp();
            jVarHp.hp(10001).hp(Void.class);
            jVarHp.hp(20001, hpVar.eb());
            hp.apply(jVarHp.l());
        }
    }

    public static void setQATool(Function<SparseArray<Object>, Object> function) {
        hp = function;
        hp();
    }

    private jx() {
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        if (pluginValueSetL.intValue(-99999987) != 10003) {
            return null;
        }
        hp((Map) pluginValueSetL.objectValue(20003, Map.class));
        return null;
    }

    private void hp(Map<String, String> map) {
        w wVar = sz.l().f21533a;
        if (map == null || wVar == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            wVar.put(key + "_qa_modify_setting", entry.getValue());
        }
    }
}
