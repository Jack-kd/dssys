package com.byazt.tw;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.um.zy;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 593, 54})
/* loaded from: classes3.dex */
public class a implements zy, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public String f26044a;
    public int eb;
    public String gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.um.w f26047j;
    public int jl;

    /* renamed from: k, reason: collision with root package name */
    public List<String> f26048k;

    /* renamed from: l, reason: collision with root package name */
    public int f26049l;

    /* renamed from: n, reason: collision with root package name */
    public int f26050n;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public long f26054u;

    /* renamed from: v, reason: collision with root package name */
    public String f26055v;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.um.w f26056w;
    public boolean xs;
    public int zy;

    /* renamed from: s, reason: collision with root package name */
    public int f26053s = 204800;

    /* renamed from: q, reason: collision with root package name */
    public int f26052q = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f26046e = 0;
    public long ec = -1;
    public final HashMap<String, Object> jx = new HashMap<>();
    public int ns = 10000;
    public int cx = 10000;

    /* renamed from: b, reason: collision with root package name */
    public int f26045b = 10000;
    public int di = 0;

    /* renamed from: o, reason: collision with root package name */
    public JSONObject f26051o = new JSONObject();

    public a(String str, com.byazt.um.w wVar, com.byazt.um.w wVar2, int i2, int i3) {
        this.sz = 0;
        this.f26050n = 0;
        this.f26044a = str;
        this.f26047j = wVar;
        this.f26056w = wVar2;
        this.sz = i2;
        this.f26050n = i3;
    }

    @Override // com.byazt.um.zy
    public String getCacheParentDir() {
        return this.f26044a;
    }

    @Override // com.byazt.um.zy
    public String getCid() {
        return this.gu;
    }

    @Override // com.byazt.um.zy
    public String getCodeId() {
        return this.hp;
    }

    @Override // com.byazt.um.zy
    public int getConnectTimeOutMills() {
        return this.ns;
    }

    @Override // com.byazt.um.zy
    public long getCurrent() {
        return this.f26054u;
    }

    @Override // com.byazt.um.zy
    public com.byazt.um.w getCurrentVideoInfo() {
        if (isH265()) {
            return this.f26056w;
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar;
        }
        return null;
    }

    @Override // com.byazt.um.zy
    public synchronized Object getExtra(String str) {
        return this.jx.get(str);
    }

    @Override // com.byazt.um.zy
    public String getFileNameKey() {
        if (isH265()) {
            return this.f26056w.getFileHash();
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar.getFileHash();
        }
        return null;
    }

    @Override // com.byazt.um.zy
    public int getHeight() {
        return this.zy;
    }

    @Override // com.byazt.um.zy
    public String getLogExtra() {
        return this.f26055v;
    }

    @Override // com.byazt.um.zy
    public JSONObject getPassThroughJson() {
        return this.f26051o;
    }

    @Override // com.byazt.um.zy
    public int getPitayaCacheSize() {
        return this.f26051o.optInt("pitaya_cache_size", 0);
    }

    @Override // com.byazt.um.zy
    public int getPitayaCode() {
        return this.f26051o.optInt("pitaya_code", 0);
    }

    @Override // com.byazt.um.zy
    public String getPitayaErrorMsg() {
        return this.f26051o.optString("pitaya_msg");
    }

    @Override // com.byazt.um.zy
    public float getPlaySpeedRatio() {
        if (isH265()) {
            return this.f26056w.getPlay_speed_ratio();
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar.getPlay_speed_ratio();
        }
        return -1.0f;
    }

    @Override // com.byazt.um.zy
    public List<String> getPlayTrackUrls() {
        return this.f26048k;
    }

    @Override // com.byazt.um.zy
    public int getPlayerType() {
        return this.sz;
    }

    @Override // com.byazt.um.zy
    public int getPreloadSize() {
        if (isH265()) {
            return this.f26056w.getVideoPreloadSize();
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar.getVideoPreloadSize();
        }
        return 0;
    }

    @Override // com.byazt.um.zy
    public int getReadTimeOutMills() {
        return this.cx;
    }

    @Override // com.byazt.um.zy
    public int getScene() {
        return this.f26049l;
    }

    @Override // com.byazt.um.zy
    public int getSourceType() {
        return this.di;
    }

    @Override // com.byazt.um.zy
    public String getUrl() {
        if (isH265()) {
            return this.f26056w.getVideo_url();
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar.getVideo_url();
        }
        return null;
    }

    @Override // com.byazt.um.zy
    public int getVideoEncodeType() {
        return this.f26050n;
    }

    @Override // com.byazt.um.zy
    public com.byazt.um.w getVideoH264() {
        return this.f26047j;
    }

    @Override // com.byazt.um.zy
    public com.byazt.um.w getVideoH265() {
        return this.f26056w;
    }

    @Override // com.byazt.um.zy
    public long getVideoSize() {
        if (isH265()) {
            return this.f26056w.getSize();
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar.getSize();
        }
        return 0L;
    }

    @Override // com.byazt.um.zy
    public int getVideoSkipResult() {
        return this.eb;
    }

    @Override // com.byazt.um.zy
    public int getWidth() {
        return this.jl;
    }

    @Override // com.byazt.um.zy
    public int getWriteTimeOutMills() {
        return this.f26045b;
    }

    @Override // com.byazt.um.zy
    public boolean isAudio() {
        return this.vv;
    }

    @Override // com.byazt.um.zy
    public boolean isH265() {
        com.byazt.um.w wVar;
        if (this.f26050n != 1 || (wVar = this.f26056w) == null || TextUtils.isEmpty(wVar.getVideo_url())) {
            return false;
        }
        return com.byazt.fw.l.w() == 2 ? Build.VERSION.SDK_INT >= 26 : this.sz == 1;
    }

    @Override // com.byazt.um.zy
    public boolean isPreloadAll() {
        if (isH265()) {
            return this.f26056w.isCacheAllVideo();
        }
        com.byazt.um.w wVar = this.f26047j;
        if (wVar != null) {
            return wVar.isCacheAllVideo();
        }
        return true;
    }

    @Override // com.byazt.um.zy
    public boolean isQuiet() {
        return this.xs;
    }

    @Override // com.byazt.um.zy
    public synchronized void putExtra(String str, Object obj) {
        this.jx.put(str, obj);
    }

    @Override // com.byazt.um.zy
    public Object removeExtra(String str) {
        return this.jx.remove(str);
    }

    @Override // com.byazt.um.zy
    public void setAudio(boolean z2) {
        this.vv = z2;
    }

    @Override // com.byazt.um.zy
    public void setCacheParentDir(String str) {
        this.f26044a = str;
    }

    @Override // com.byazt.um.zy
    public void setCid(String str) {
        this.gu = str;
    }

    @Override // com.byazt.um.zy
    public void setCodeId(String str) {
        this.hp = str;
    }

    @Override // com.byazt.um.zy
    public void setConnectTimeOutMills(int i2) {
        this.ns = i2;
    }

    @Override // com.byazt.um.zy
    public void setCurrent(long j2) {
        this.f26054u = j2;
    }

    @Override // com.byazt.um.zy
    public void setHeight(int i2) {
        this.zy = i2;
    }

    @Override // com.byazt.um.zy
    public void setLogExtra(String str) {
        this.f26055v = str;
    }

    @Override // com.byazt.um.zy
    public void setPlayTrackUrls(List<String> list) {
        this.f26048k = list;
    }

    @Override // com.byazt.um.zy
    public void setPlayerType(int i2) {
        this.sz = i2;
    }

    @Override // com.byazt.um.zy
    public void setQuiet(boolean z2) {
        this.xs = z2;
    }

    @Override // com.byazt.um.zy
    public void setReadTimeOutMills(int i2) {
        this.cx = i2;
    }

    @Override // com.byazt.um.zy
    public void setScene(int i2) {
        this.f26049l = i2;
    }

    @Override // com.byazt.um.zy
    public void setSourceType(int i2) {
        this.di = i2;
    }

    @Override // com.byazt.um.zy
    public void setVideoEncodeType(int i2) {
        this.f26050n = i2;
    }

    @Override // com.byazt.um.zy
    public void setVideoH264(com.byazt.um.w wVar) {
        this.f26047j = wVar;
    }

    @Override // com.byazt.um.zy
    public void setVideoH265(com.byazt.um.w wVar) {
        this.f26056w = wVar;
    }

    @Override // com.byazt.um.zy
    public void setVideoSkipResult(int i2) {
        this.eb = i2;
    }

    @Override // com.byazt.um.zy
    public void setWidth(int i2) {
        this.jl = i2;
    }

    @Override // com.byazt.um.zy
    public void setWriteTimeOutMills(int i2) {
        this.f26045b = i2;
    }
}
