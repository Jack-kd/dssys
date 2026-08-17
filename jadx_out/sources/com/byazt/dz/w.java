package com.byazt.dz;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationAppDialogClickListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1141, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements Function<SparseArray<Object>, Object> {
    private final MediationAppDialogClickListener hp;

    public w(MediationAppDialogClickListener mediationAppDialogClickListener) {
        this.hp = mediationAppDialogClickListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        if (valueSetL.intValue(-99999987) == 270025) {
            this.hp.onButtonClick(valueSetL.intValue(0));
        }
        return null;
    }
}
