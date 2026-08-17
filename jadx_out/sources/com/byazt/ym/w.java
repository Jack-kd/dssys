package com.byazt.ym;

import android.util.SparseArray;
import com.byazt.jz.sz;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
@ATSKeep
/* loaded from: classes3.dex */
public class w implements com.byazt.pg.e, Function {
    public com.byazt.pg.hp hp;

    public w(com.byazt.pg.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (((Integer) ((SparseArray) obj).get(0)).intValue()) {
            case 1:
                return Boolean.valueOf(isCypherV4());
            case 2:
                return getAppLogUrl();
            case 3:
                return getETAppLogUrl();
            case 4:
                return getStatsUrl();
            case 5:
                return Boolean.valueOf(isMiniEventUpload());
            case 6:
                return Boolean.valueOf(isUploadEventDebugInfo());
            case 7:
                return Boolean.valueOf(getDisable4TypeEncryptFallbackStatus());
            case 8:
                return Boolean.valueOf(isOpenMonitor());
            case 9:
                return Long.valueOf(getAdEventUploadInterval());
            case 10:
                return Integer.valueOf(getAdEventUploadBatch());
            case 11:
                return Integer.valueOf(getStatsBatch());
            case 12:
                return Integer.valueOf(getAdLogExceptionBatch());
            case 13:
                return Integer.valueOf(getMaxMemoryEventCount());
            default:
                return null;
        }
    }

    @Override // com.byazt.pg.e
    public int getAdEventUploadBatch() {
        int iKy = sz.l().ky();
        if (iKy < 0 || iKy == Integer.MAX_VALUE) {
            return 10;
        }
        return iKy;
    }

    @Override // com.byazt.pg.e
    public long getAdEventUploadInterval() {
        long jR = sz.l().r();
        if (jR < 0 || jR == 2147483647L) {
            return 5000L;
        }
        return jR;
    }

    @Override // com.byazt.pg.e
    public int getAdLogExceptionBatch() {
        int iVq = sz.l().vq();
        if (iVq <= 0 || iVq == Integer.MAX_VALUE) {
            return 100;
        }
        return iVq;
    }

    @Override // com.byazt.pg.e
    public String getAppLogUrl() {
        return ky.b();
    }

    @Override // com.byazt.pg.e
    public boolean getDisable4TypeEncryptFallbackStatus() {
        return false;
    }

    @Override // com.byazt.pg.e
    public String getETAppLogUrl() {
        return ky.di();
    }

    @Override // com.byazt.pg.e
    public int getMaxMemoryEventCount() {
        return sz.l().kg();
    }

    @Override // com.byazt.pg.e
    public int getStatsBatch() {
        return sz.l().as();
    }

    @Override // com.byazt.pg.e
    public String getStatsUrl() {
        return ky.jl("/api/ad/union/sdk/stats/batch/");
    }

    @Override // com.byazt.pg.e
    public boolean isCypherV4() {
        return sz.l().ly();
    }

    @Override // com.byazt.pg.e
    public boolean isMiniEventUpload() {
        return sz.l().vt();
    }

    @Override // com.byazt.pg.e
    public boolean isOpenMonitor() {
        return sz.l().lv();
    }

    @Override // com.byazt.pg.e
    public boolean isUploadEventDebugInfo() {
        return sz.l().dy();
    }
}
