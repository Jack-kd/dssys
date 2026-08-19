package com.byazt.za;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DUMMY_VOICE_SLEEP, 28})
/* loaded from: classes3.dex */
public abstract class hp implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        return com.byazt.xi.hp.hp().l();
    }

    public abstract String getVideoUrl();

    public abstract void reportVideoAutoStart();

    public abstract void reportVideoBreak(long j2);

    public abstract void reportVideoContinue(long j2);

    public abstract void reportVideoError(long j2, int i2, int i3);

    public abstract void reportVideoFinish();

    public abstract void reportVideoPause(long j2);

    public abstract void reportVideoStart();

    public abstract void reportVideoStartError(int i2, int i3);

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

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
            return values().sparseArray();
        }
        switch (iIntValue) {
            case 162101:
                return getVideoUrl();
            case 162102:
                reportVideoStart();
                return null;
            case 162103:
                reportVideoPause(pluginValueSetL.longValue(0));
                return null;
            case 162104:
                reportVideoContinue(pluginValueSetL.longValue(0));
                return null;
            case 162105:
                reportVideoFinish();
                return null;
            case 162106:
                reportVideoBreak(pluginValueSetL.longValue(0));
                return null;
            case 162107:
                reportVideoAutoStart();
                return null;
            case 162108:
                reportVideoStartError(pluginValueSetL.intValue(0), pluginValueSetL.intValue(1));
                return null;
            case 162109:
                reportVideoError(pluginValueSetL.longValue(0), pluginValueSetL.intValue(1), pluginValueSetL.intValue(2));
                return null;
            default:
                return null;
        }
    }
}
