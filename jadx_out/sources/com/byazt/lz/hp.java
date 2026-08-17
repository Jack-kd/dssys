package com.byazt.lz;

import android.util.SparseArray;
import com.byazt.bm.jx;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 898, 28})
/* loaded from: classes3.dex */
public class hp {
    public PluginValueSet hp;
    public com.byazt.bm.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jt.hp f22851l;

    private hp(PluginValueSet pluginValueSet) {
        this.hp = pluginValueSet;
        if (pluginValueSet != null) {
            com.byazt.jt.hp hpVar = new com.byazt.jt.hp(pluginValueSet.sparseArray());
            this.f22851l = hpVar;
            this.jx = hpVar.v();
        }
    }

    public static hp hp(PluginValueSet pluginValueSet) {
        return new hp(pluginValueSet);
    }

    public String a() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.l();
        }
        return null;
    }

    public boolean b() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.e();
        }
        return false;
    }

    public boolean cx() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.q();
        }
        return false;
    }

    public Function<SparseArray<Object>, Object> d() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null && hpVar.j() != null) {
            Object obj = this.jx.j().get("qa_onetap_tool");
            if (obj instanceof Function) {
                return (Function) obj;
            }
        }
        return null;
    }

    public Function<SparseArray<Object>, Object> di() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null && hpVar.j() != null) {
            Object obj = this.jx.j().get("qa_config_tool");
            if (obj instanceof Function) {
                return (Function) obj;
            }
        }
        return null;
    }

    public int e() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.a();
        }
        return 0;
    }

    public boolean eb() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.jx();
        }
        return false;
    }

    public boolean ec() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.w();
        }
        return false;
    }

    public boolean gu() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.eb();
        }
        return false;
    }

    public Function<SparseArray<Object>, Object> hq() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null && hpVar.j() != null) {
            Object obj = this.jx.j().get("qa_common_tool");
            if (obj instanceof Function) {
                return (Function) obj;
            }
        }
        return null;
    }

    public boolean j() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.s();
        }
        return false;
    }

    public boolean jl() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.e();
        }
        return false;
    }

    public Function<SparseArray<Object>, Object> jx() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return (Function) pluginValueSet.objectValue(15, Function.class);
        }
        return null;
    }

    public Map<String, Object> k() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.xs();
        }
        return null;
    }

    public PluginValueSet l() {
        return this.hp;
    }

    public String n() {
        com.byazt.bm.hp hpVar = this.jx;
        return hpVar != null ? hpVar.eb() : "";
    }

    public boolean ns() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.s();
        }
        return false;
    }

    public Function<SparseArray<Object>, Object> o() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null && hpVar.j() != null) {
            Object obj = this.jx.j().get("qa_event_tool");
            if (obj instanceof Function) {
                return (Function) obj;
            }
        }
        return null;
    }

    public String q() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.w();
        }
        return null;
    }

    public String s() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.j();
        }
        return null;
    }

    public JSONObject sz() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.a();
        }
        return null;
    }

    public boolean u() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.l();
        }
        return false;
    }

    public String v() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.hp();
        }
        return null;
    }

    public Map<String, Object> vv() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.j();
        }
        return null;
    }

    public String w() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.hp();
        }
        return null;
    }

    public Function<SparseArray<Object>, Object> wv() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null && hpVar.j() != null) {
            Object obj = this.jx.j().get("qa_preview_tool");
            if (obj instanceof Function) {
                return (Function) obj;
            }
        }
        return null;
    }

    public jx xs() {
        com.byazt.bm.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.jx();
        }
        return null;
    }

    public int[] zy() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.q();
        }
        return null;
    }

    public boolean hp() {
        com.byazt.jt.hp hpVar = this.f22851l;
        if (hpVar != null) {
            return hpVar.u();
        }
        return false;
    }
}
