package com.byazt.qt;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 594, 94})
/* loaded from: classes3.dex */
public abstract class eb implements Function<SparseArray<Object>, Object> {
    public abstract boolean isShow();

    public abstract void resetDislikeStatus();

    public abstract void setDislikeInteractionCallback(com.byazt.cg.hp hpVar);

    public abstract void setDislikeSource(String str);

    public abstract void showDislikeDialog();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return new SparseArray();
        }
        switch (iIntValue) {
            case 240101:
                showDislikeDialog();
                return null;
            case 240102:
                setDislikeInteractionCallback(new com.byazt.cg.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 240103:
                setDislikeSource((String) pluginValueSetL.objectValue(0, String.class));
                return null;
            case 240104:
                resetDislikeStatus();
                return null;
            case 240105:
                return Boolean.class.cast(Boolean.valueOf(isShow()));
            default:
                return null;
        }
    }
}
