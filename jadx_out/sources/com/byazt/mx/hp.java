package com.byazt.mx;

import android.util.SparseArray;
import com.byazt.aqw.l;
import com.byazt.tl.jx;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2096, 28})
/* loaded from: classes3.dex */
public class hp {
    public PluginValueSet hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f23323l;

    public hp(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.xi.hp.hp(sparseArray).l();
        this.f23323l = new com.byazt.aqw.hp(sparseArray, com.byazt.el.hp.l());
    }

    public l a() {
        com.byazt.aqw.hp hpVar = this.f23323l;
        if (hpVar != null) {
            return hpVar.wv();
        }
        return null;
    }

    public jx eb() {
        if (a() != null) {
            return a().zy();
        }
        return null;
    }

    public int hp() {
        return this.f23323l.a();
    }

    public float j() {
        return this.f23323l.q();
    }

    public float jx() {
        return this.f23323l.s();
    }

    public int l() {
        return this.f23323l.eb();
    }

    public int q() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet.intValue(3);
        }
        return 0;
    }

    public Function<SparseArray<Object>, Object> s() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return com.byazt.vd.jx.hp(pluginValueSet.objectValue(8302, Object.class));
        }
        return null;
    }

    public String w() {
        return this.f23323l.j();
    }
}
