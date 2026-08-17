package com.byazt.um;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 18, 54})
@ATSKeep
/* loaded from: classes3.dex */
public class a implements w, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile w f26259l;

    public a(w wVar) {
        this.f26259l = wVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                return Integer.valueOf(this.f26259l.getFallbackEndCardJudge());
            case 2:
                this.f26259l.setFallbackEndCardJudge(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 3:
                return Integer.valueOf(this.f26259l.getCover_height());
            case 4:
                this.f26259l.setCover_height(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 5:
                return Integer.valueOf(this.f26259l.getCover_width());
            case 6:
                this.f26259l.setCover_width(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 7:
                return Integer.valueOf(this.f26259l.getEndcardRender());
            case 8:
                this.f26259l.setEndcardRender(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 9:
                return Long.valueOf(this.f26259l.getSize());
            case 10:
                this.f26259l.setSize(((Long) sparseArray.get(1)).longValue());
                return null;
            case 11:
                return Double.valueOf(this.f26259l.getVideo_duration());
            case 12:
                this.f26259l.setVideo_duration(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 13:
                return Double.valueOf(this.f26259l.getStart());
            case 14:
                this.f26259l.setStart(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 15:
                return Float.valueOf(this.f26259l.getPlay_speed_ratio());
            case 16:
                this.f26259l.setPlay_speed_ratio(((Float) sparseArray.get(1)).floatValue());
                return null;
            case 17:
                return this.f26259l.getResolution();
            case 18:
                this.f26259l.setResolution((String) sparseArray.get(1));
                return null;
            case 19:
                return this.f26259l.getWidthAndHeight();
            case 20:
                return this.f26259l.getCover_url();
            case 21:
                this.f26259l.setCover_url((String) sparseArray.get(1));
                return null;
            case 22:
                return this.f26259l.getVideo_url();
            case 23:
                this.f26259l.setVideo_url((String) sparseArray.get(1));
                return null;
            case 24:
                return this.f26259l.getEndcard();
            case 25:
                this.f26259l.setEndcard((String) sparseArray.get(1));
                return null;
            case 26:
                return this.f26259l.getPlayableZipUrl();
            case 27:
                this.f26259l.setPlayableZipUrl((String) sparseArray.get(1));
                return null;
            case 28:
                return this.f26259l.getFileHash();
            case 29:
                this.f26259l.setFileHash((String) sparseArray.get(1));
                return null;
            case 30:
                return Integer.valueOf(this.f26259l.getVideoPreloadSize());
            case 31:
                this.f26259l.setVideoPreloadSize(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 32:
                return Integer.valueOf(this.f26259l.getRewardVideoCachedType());
            case 33:
                this.f26259l.setRewardVideoCachedType(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 34:
                return Integer.valueOf(this.f26259l.getExecuteCachedType());
            case 35:
                this.f26259l.setExecuteCachedType(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 36:
                return this.f26259l.toJsonObj();
            case 37:
                return Integer.valueOf(this.f26259l.getPlayableLoadingShow());
            case 38:
                this.f26259l.setPlayableLoadingShow(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 39:
                return Integer.valueOf(this.f26259l.getPlayableLoadingHide());
            case 40:
                this.f26259l.setPlayableLoadingHide(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 41:
                return Boolean.valueOf(this.f26259l.isExecCallbackWhenFail());
            case 42:
                return Boolean.valueOf(this.f26259l.isCacheAllVideo());
            case 43:
                this.f26259l.setReplayTime(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 44:
                return Integer.valueOf(this.f26259l.getReplayTime());
            default:
                return null;
        }
    }

    @Override // com.byazt.um.w
    public int getCover_height() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public String getCover_url() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public int getCover_width() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public String getEndcard() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public int getEndcardRender() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public int getExecuteCachedType() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 34);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public int getFallbackEndCardJudge() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public String getFileHash() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 28);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public float getPlay_speed_ratio() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.um.w
    public int getPlayableLoadingHide() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 39);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public int getPlayableLoadingShow() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 37);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public String getPlayableZipUrl() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public int getReplayTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 44);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public String getResolution() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public int getRewardVideoCachedType() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 32);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public long getSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.um.w
    public double getStart() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return ((Double) this.hp.apply(sparseArray)).doubleValue();
    }

    @Override // com.byazt.um.w
    public int getVideoPreloadSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 30);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.w
    public double getVideo_duration() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return ((Double) this.hp.apply(sparseArray)).doubleValue();
    }

    @Override // com.byazt.um.w
    public String getVideo_url() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public int[] getWidthAndHeight() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        return (int[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public boolean isCacheAllVideo() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 42);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.w
    public boolean isExecCallbackWhenFail() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 41);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.w
    public void setCover_height(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setCover_url(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setCover_width(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setEndcard(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setEndcardRender(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setExecuteCachedType(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 35);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setFallbackEndCardJudge(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setFileHash(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 29);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setPlay_speed_ratio(float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, Float.valueOf(f2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setPlayableLoadingHide(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 40);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setPlayableLoadingShow(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 38);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setPlayableZipUrl(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setReplayTime(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 43);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setResolution(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setRewardVideoCachedType(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 33);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setSize(long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        sparseArray.put(1, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setStart(double d2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, Double.valueOf(d2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setVideoPreloadSize(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 31);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setVideo_duration(double d2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, Double.valueOf(d2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public void setVideo_url(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.w
    public JSONObject toJsonObj() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 36);
        return (JSONObject) this.hp.apply(sparseArray);
    }

    public a(Function function) {
        this.hp = function;
    }
}
