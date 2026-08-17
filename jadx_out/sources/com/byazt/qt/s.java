package com.byazt.qt;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 594, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public abstract class s implements Function<SparseArray<Object>, Object> {
    public abstract void loss(Double d2, String str, String str2);

    public abstract void setAdInteractionListener(com.byazt.gu.l lVar);

    public abstract void setPrice(Double d2);

    public abstract void win(Double d2);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't rename method to resolve collision */
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
            case 210101:
                win(Double.valueOf(pluginValueSetL.doubleValue(0)));
                return null;
            case 210102:
                loss(Double.valueOf(pluginValueSetL.doubleValue(0)), (String) pluginValueSetL.objectValue(1, String.class), (String) pluginValueSetL.objectValue(2, String.class));
                return null;
            case 210103:
                setPrice(Double.valueOf(pluginValueSetL.doubleValue(0)));
                return null;
            case 210104:
                setAdInteractionListener(new com.byazt.gu.l((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            default:
                return null;
        }
    }
}
