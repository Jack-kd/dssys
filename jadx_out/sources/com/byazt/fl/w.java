package com.byazt.fl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.DownloadStatusController;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements DownloadStatusController {
    public final Function<SparseArray<Object>, Object> hp;

    public w(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.jx.jx : function;
    }

    @Override // com.bytedance.sdk.openadsdk.DownloadStatusController
    public void cancelDownload() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 222102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.DownloadStatusController
    public void changeDownloadStatus() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 222101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
