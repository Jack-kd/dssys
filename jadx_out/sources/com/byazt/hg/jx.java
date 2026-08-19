package com.byazt.hg;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION, 30})
/* loaded from: classes2.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    public final TTAppDownloadListener hp;

    public jx(TTAppDownloadListener tTAppDownloadListener) {
        this.hp = tTAppDownloadListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 221101:
                this.hp.onIdle();
                return null;
            case 221102:
                this.hp.onDownloadActive(valueSetL.longValue(0), valueSetL.longValue(1), valueSetL.stringValue(2), valueSetL.stringValue(3));
                return null;
            case 221103:
                this.hp.onDownloadPaused(valueSetL.longValue(0), valueSetL.longValue(1), valueSetL.stringValue(2), valueSetL.stringValue(3));
                return null;
            case 221104:
                this.hp.onDownloadFailed(valueSetL.longValue(0), valueSetL.longValue(1), valueSetL.stringValue(2), valueSetL.stringValue(3));
                return null;
            case 221105:
                this.hp.onDownloadFinished(valueSetL.longValue(0), valueSetL.stringValue(1), valueSetL.stringValue(2));
                return null;
            case 221106:
                this.hp.onInstalled(valueSetL.stringValue(0), valueSetL.stringValue(1));
                return null;
            default:
                return null;
        }
    }
}
