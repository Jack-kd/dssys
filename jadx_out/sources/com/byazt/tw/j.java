package com.byazt.tw;

import android.text.TextUtils;
import com.anythink.core.common.f.s;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 593, 38})
/* loaded from: classes3.dex */
public class j implements com.byazt.um.w {

    /* renamed from: a, reason: collision with root package name */
    public String f26062a;

    /* renamed from: e, reason: collision with root package name */
    public String f26063e;
    public String eb;
    public double gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public double f26064j;
    public int jl;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26066l;

    /* renamed from: q, reason: collision with root package name */
    public String f26067q;

    /* renamed from: s, reason: collision with root package name */
    public String f26068s;

    /* renamed from: w, reason: collision with root package name */
    public String f26071w;
    public int zy;

    /* renamed from: k, reason: collision with root package name */
    public float f26065k = -1.0f;

    /* renamed from: v, reason: collision with root package name */
    public int f26070v = 0;

    /* renamed from: u, reason: collision with root package name */
    public int f26069u = 0;
    public int xs = 0;
    public int vv = 0;
    public int ec = 307200;
    public int sz = 1;

    @Override // com.byazt.um.w
    public int getCover_height() {
        return this.hp;
    }

    @Override // com.byazt.um.w
    public String getCover_url() {
        return this.f26062a;
    }

    @Override // com.byazt.um.w
    public int getCover_width() {
        return this.f26066l;
    }

    @Override // com.byazt.um.w
    public String getEndcard() {
        return this.f26068s;
    }

    @Override // com.byazt.um.w
    public int getEndcardRender() {
        return this.zy;
    }

    @Override // com.byazt.um.w
    public int getExecuteCachedType() {
        return this.vv;
    }

    @Override // com.byazt.um.w
    public int getFallbackEndCardJudge() {
        return this.jl;
    }

    @Override // com.byazt.um.w
    public String getFileHash() {
        if (TextUtils.isEmpty(this.f26063e)) {
            this.f26063e = com.byazt.qm.hp.hp(this.eb);
        }
        return this.f26063e;
    }

    @Override // com.byazt.um.w
    public float getPlay_speed_ratio() {
        return this.f26065k;
    }

    @Override // com.byazt.um.w
    public int getPlayableLoadingHide() {
        return this.f26069u;
    }

    @Override // com.byazt.um.w
    public int getPlayableLoadingShow() {
        return this.f26070v;
    }

    @Override // com.byazt.um.w
    public String getPlayableZipUrl() {
        return this.f26067q;
    }

    @Override // com.byazt.um.w
    public int getReplayTime() {
        return this.sz;
    }

    @Override // com.byazt.um.w
    public String getResolution() {
        return this.f26071w;
    }

    @Override // com.byazt.um.w
    public int getRewardVideoCachedType() {
        return this.xs;
    }

    @Override // com.byazt.um.w
    public long getSize() {
        return this.jx;
    }

    @Override // com.byazt.um.w
    public double getStart() {
        return this.gu;
    }

    @Override // com.byazt.um.w
    public int getVideoPreloadSize() {
        if (this.ec < 0) {
            this.ec = 307200;
        }
        long j2 = this.ec;
        long j3 = this.jx;
        if (j2 > j3) {
            this.ec = (int) j3;
        }
        return this.ec;
    }

    @Override // com.byazt.um.w
    public double getVideo_duration() {
        return this.f26064j;
    }

    @Override // com.byazt.um.w
    public String getVideo_url() {
        return this.eb;
    }

    @Override // com.byazt.um.w
    public int[] getWidthAndHeight() {
        try {
            int iIndexOf = this.f26071w.indexOf("x");
            return new int[]{Integer.parseInt(this.f26071w.substring(0, iIndexOf).trim()), Integer.parseInt(this.f26071w.substring(iIndexOf + 1).trim())};
        } catch (Throwable th) {
            com.byazt.qm.l.hp("VideoInfo", "getWidthAndHeight error", th);
            return null;
        }
    }

    @Override // com.byazt.um.w
    public boolean isCacheAllVideo() {
        return this.xs == 0;
    }

    @Override // com.byazt.um.w
    public boolean isExecCallbackWhenFail() {
        return this.vv == 1;
    }

    @Override // com.byazt.um.w
    public void setCover_height(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.um.w
    public void setCover_url(String str) {
        this.f26062a = str;
    }

    @Override // com.byazt.um.w
    public void setCover_width(int i2) {
        this.f26066l = i2;
    }

    @Override // com.byazt.um.w
    public void setEndcard(String str) {
        this.f26068s = str;
    }

    @Override // com.byazt.um.w
    public void setEndcardRender(int i2) {
        this.zy = i2;
    }

    @Override // com.byazt.um.w
    public void setExecuteCachedType(int i2) {
        this.vv = i2;
    }

    @Override // com.byazt.um.w
    public void setFallbackEndCardJudge(int i2) {
        this.jl = i2;
    }

    @Override // com.byazt.um.w
    public void setFileHash(String str) {
        this.f26063e = str;
    }

    @Override // com.byazt.um.w
    public void setPlay_speed_ratio(float f2) {
        this.f26065k = f2;
    }

    @Override // com.byazt.um.w
    public void setPlayableLoadingHide(int i2) {
        this.f26069u = i2;
    }

    @Override // com.byazt.um.w
    public void setPlayableLoadingShow(int i2) {
        this.f26070v = i2;
    }

    @Override // com.byazt.um.w
    public void setPlayableZipUrl(String str) {
        this.f26067q = str;
    }

    @Override // com.byazt.um.w
    public void setReplayTime(int i2) {
        this.sz = Math.min(4, Math.max(1, i2));
    }

    @Override // com.byazt.um.w
    public void setResolution(String str) {
        this.f26071w = str;
    }

    @Override // com.byazt.um.w
    public void setRewardVideoCachedType(int i2) {
        this.xs = i2;
    }

    @Override // com.byazt.um.w
    public void setSize(long j2) {
        this.jx = j2;
    }

    @Override // com.byazt.um.w
    public void setStart(double d2) {
        this.gu = d2;
    }

    @Override // com.byazt.um.w
    public void setVideoPreloadSize(int i2) {
        this.ec = i2;
    }

    @Override // com.byazt.um.w
    public void setVideo_duration(double d2) {
        this.f26064j = d2;
    }

    @Override // com.byazt.um.w
    public void setVideo_url(String str) {
        this.eb = str;
    }

    @Override // com.byazt.um.w
    public JSONObject toJsonObj() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", getCover_height());
            jSONObject.put("cover_url", getCover_url());
            jSONObject.put("cover_width", getCover_width());
            jSONObject.put("endcard", getEndcard());
            jSONObject.put("file_hash", getFileHash());
            jSONObject.put(bv.f48925z, getResolution());
            jSONObject.put("size", getSize());
            jSONObject.put("video_duration", getVideo_duration());
            jSONObject.put(s.a.f3400b, getVideo_url());
            jSONObject.put("playable_download_url", getPlayableZipUrl());
            jSONObject.put("if_playable_loading_show", getPlayableLoadingShow());
            jSONObject.put("remove_loading_page_type", getPlayableLoadingHide());
            jSONObject.put("fallback_endcard_judge", getFallbackEndCardJudge());
            jSONObject.put("video_preload_size", getVideoPreloadSize());
            jSONObject.put("reward_video_cached_type", getRewardVideoCachedType());
            jSONObject.put("execute_cached_type", getExecuteCachedType());
            jSONObject.put("endcard_render", getEndcardRender());
            jSONObject.put("replay_time", getReplayTime());
            jSONObject.put("play_speed_ratio", getPlay_speed_ratio());
            if (getStart() > 0.0d) {
                jSONObject.put("start", getStart());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
