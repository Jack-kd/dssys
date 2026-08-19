package com.byazt.bm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 72, 28})
/* loaded from: classes2.dex */
public class hp {
    public final PluginValueSet hp;

    public hp(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.xi.hp.hp(sparseArray).l();
    }

    public JSONObject a() {
        return (JSONObject) this.hp.objectValue(264106, JSONObject.class);
    }

    public boolean e() {
        return this.hp.booleanValue(264110);
    }

    public String eb() {
        return (String) this.hp.objectValue(264107, String.class);
    }

    public String gu() {
        return (String) this.hp.objectValue(264111, String.class);
    }

    public String hp() {
        return (String) this.hp.objectValue(264101, String.class);
    }

    public Map<String, Object> j() {
        return (Map) this.hp.objectValue(264104, Map.class);
    }

    public jx jx() {
        SparseArray sparseArray = (SparseArray) this.hp.objectValue(264103, SparseArray.class);
        if (sparseArray == null) {
            return null;
        }
        return new jx(sparseArray);
    }

    public boolean l() {
        return this.hp.booleanValue(264102);
    }

    public boolean q() {
        return this.hp.booleanValue(264109);
    }

    public boolean s() {
        return this.hp.booleanValue(264108);
    }

    public boolean w() {
        return this.hp.booleanValue(264105);
    }
}
