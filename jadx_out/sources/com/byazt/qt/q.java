package com.byazt.qt;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 594, 150})
/* loaded from: classes3.dex */
public abstract class q extends e {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        return super.values();
    }

    public abstract void setCanInterruptVideoPlay(boolean z2);

    public abstract void setDrawVideoListener(com.byazt.dc.hp hpVar);

    public abstract void setPauseIcon(Bitmap bitmap, int i2);

    @Override // com.byazt.qt.e, com.byazt.qt.zy
    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.qt.e, com.byazt.qt.zy, com.byazt.qt.s, java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return values().sparseArray();
        }
        if (iIntValue != 140111) {
            switch (iIntValue) {
                case 170101:
                    setCanInterruptVideoPlay(pluginValueSetL.booleanValue(0));
                    break;
                case 170102:
                    setPauseIcon((Bitmap) pluginValueSetL.objectValue(0, Bitmap.class), pluginValueSetL.intValue(1));
                    break;
                case 170103:
                    setDrawVideoListener(new com.byazt.dc.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                    break;
                default:
                    return super.apply(sparseArray);
            }
        } else {
            Function function = (Function) pluginValueSetL.objectValue(0, Function.class);
            setExpressRenderListener(pluginValueSetL.intValue(1) == 1 ? new com.byazt.tl.w(function) : new com.byazt.pt.jx(function));
        }
        return null;
    }
}
