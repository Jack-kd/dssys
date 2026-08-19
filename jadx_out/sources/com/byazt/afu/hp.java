package com.byazt.afu;

import android.text.TextUtils;
import com.byazt.um.zy;
import com.bykv.vk.component.ttvideo.DataLoaderHelper;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.um.hp {
    public long hp;

    /* renamed from: l, reason: collision with root package name */
    public String f17983l = "tt_video_reward_full";
    public String jx = "tt_video_brand";

    /* renamed from: j, reason: collision with root package name */
    public String f17982j = "tt_video_splash";

    /* renamed from: w, reason: collision with root package name */
    public String f17986w = "tt_video_default";

    /* renamed from: a, reason: collision with root package name */
    public String f17980a = null;
    public String eb = null;

    /* renamed from: s, reason: collision with root package name */
    public String f17985s = null;

    /* renamed from: q, reason: collision with root package name */
    public String f17984q = null;

    /* renamed from: e, reason: collision with root package name */
    public String f17981e = null;
    public String gu = null;

    @Override // com.byazt.um.hp
    public void clearCache() {
    }

    @Override // com.byazt.um.hp
    public String getBrandCacheDir() {
        if (this.f17985s == null) {
            this.f17985s = this.gu + File.separator + this.jx;
            File file = new File(this.f17985s);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f17985s;
    }

    @Override // com.byazt.um.hp
    public long getCachedSize(zy zyVar) {
        return this.hp;
    }

    @Override // com.byazt.um.hp
    public String getOtherCacheDir() {
        if (this.f17981e == null) {
            this.f17981e = this.gu + File.separator + this.f17986w;
            File file = new File(this.f17981e);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f17981e;
    }

    @Override // com.byazt.um.hp
    public String getRewardFullCacheDir() {
        if (this.eb == null) {
            this.eb = this.gu + File.separator + this.f17983l;
            File file = new File(this.eb);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.eb;
    }

    @Override // com.byazt.um.hp
    public String getSplashCacheDir() {
        if (this.f17984q == null) {
            this.f17984q = this.gu + File.separator + this.f17982j;
            File file = new File(this.f17984q);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f17984q;
    }

    @Override // com.byazt.um.hp
    public boolean isVideoCached(zy zyVar) {
        DataLoaderHelper.DataLoaderCacheInfo cacheInfoByFilePath = TTVideoEngine.getCacheInfoByFilePath(zyVar.getFileNameKey(), zyVar.getCacheParentDir());
        if (cacheInfoByFilePath != null) {
            boolean zIsPreloadAll = zyVar.isPreloadAll();
            this.hp = cacheInfoByFilePath.mCacheSizeFromZero;
            int pitayaCacheSize = zyVar.getPitayaCacheSize() > 0 ? zyVar.getPitayaCacheSize() : zyVar.getPreloadSize();
            if (zIsPreloadAll) {
                pitayaCacheSize = (int) zyVar.getVideoSize();
            }
            if (cacheInfoByFilePath.mCacheSizeFromZero >= pitayaCacheSize) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.um.hp
    public void setRootDir(String str) {
        if (!TextUtils.isEmpty(this.gu) && !this.gu.equals(str)) {
            this.f17980a = null;
            this.eb = null;
            this.f17985s = null;
            this.f17984q = null;
            this.f17981e = null;
        }
        this.gu = str;
    }
}
