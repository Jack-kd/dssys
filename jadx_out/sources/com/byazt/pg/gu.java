package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
@ATSKeep
/* loaded from: classes3.dex */
public class gu implements e, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile e f24385l;

    public gu(e eVar) {
        this.f24385l = eVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24385l != null ? this.f24385l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24385l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.e
    public int getAdEventUploadBatch() {
        if (this.f24385l != null) {
            return this.f24385l.getAdEventUploadBatch();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.e
    public long getAdEventUploadInterval() {
        if (this.f24385l != null) {
            return this.f24385l.getAdEventUploadInterval();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.pg.e
    public int getAdLogExceptionBatch() {
        if (this.f24385l != null) {
            return this.f24385l.getAdLogExceptionBatch();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.e
    public String getAppLogUrl() {
        if (this.f24385l != null) {
            return this.f24385l.getAppLogUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.e
    public boolean getDisable4TypeEncryptFallbackStatus() {
        if (this.f24385l != null) {
            return this.f24385l.getDisable4TypeEncryptFallbackStatus();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.e
    public String getETAppLogUrl() {
        if (this.f24385l != null) {
            return this.f24385l.getETAppLogUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.e
    public int getMaxMemoryEventCount() {
        if (this.f24385l != null) {
            return this.f24385l.getMaxMemoryEventCount();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.e
    public int getStatsBatch() {
        if (this.f24385l != null) {
            return this.f24385l.getStatsBatch();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.e
    public String getStatsUrl() {
        if (this.f24385l != null) {
            return this.f24385l.getStatsUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.e
    public boolean isCypherV4() {
        if (this.f24385l != null) {
            return this.f24385l.isCypherV4();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.e
    public boolean isMiniEventUpload() {
        if (this.f24385l != null) {
            return this.f24385l.isMiniEventUpload();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.e
    public boolean isOpenMonitor() {
        if (this.f24385l != null) {
            return this.f24385l.isOpenMonitor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.e
    public boolean isUploadEventDebugInfo() {
        if (this.f24385l != null) {
            return this.f24385l.isUploadEventDebugInfo();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public gu(Function function) {
        this.hp = function;
    }
}
