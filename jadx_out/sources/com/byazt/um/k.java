package com.byazt.um;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.List;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 18, 42})
@ATSKeep
/* loaded from: classes3.dex */
public class k implements zy, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile zy f26263l;

    public k(zy zyVar) {
        this.f26263l = zyVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                return this.f26263l.getPassThroughJson();
            case 2:
                return Integer.valueOf(this.f26263l.getPitayaCacheSize());
            case 3:
                return Integer.valueOf(this.f26263l.getPitayaCode());
            case 4:
                return this.f26263l.getPitayaErrorMsg();
            case 5:
                return this.f26263l.getCacheParentDir();
            case 6:
                this.f26263l.setCacheParentDir((String) sparseArray.get(1));
                return null;
            case 7:
                this.f26263l.setVideoSkipResult(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 8:
                return Integer.valueOf(this.f26263l.getVideoSkipResult());
            case 9:
                return Integer.valueOf(this.f26263l.getPreloadSize());
            case 10:
                return Boolean.valueOf(this.f26263l.isAudio());
            case 11:
                this.f26263l.setAudio(((Boolean) sparseArray.get(1)).booleanValue());
                return null;
            case 12:
                return this.f26263l.getCid();
            case 13:
                this.f26263l.setCid((String) sparseArray.get(1));
                return null;
            case 14:
                return Integer.valueOf(this.f26263l.getWidth());
            case 15:
                this.f26263l.setWidth(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 16:
                return Integer.valueOf(this.f26263l.getHeight());
            case 17:
                this.f26263l.setHeight(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 18:
                return this.f26263l.getPlayTrackUrls();
            case 19:
                this.f26263l.setPlayTrackUrls((List) sparseArray.get(1));
                return null;
            case 20:
                return this.f26263l.getLogExtra();
            case 21:
                this.f26263l.setLogExtra((String) sparseArray.get(1));
                return null;
            case 22:
                return Long.valueOf(this.f26263l.getCurrent());
            case 23:
                this.f26263l.setCurrent(((Long) sparseArray.get(1)).longValue());
                return null;
            case 24:
                return Boolean.valueOf(this.f26263l.isQuiet());
            case 25:
                this.f26263l.setQuiet(((Boolean) sparseArray.get(1)).booleanValue());
                return null;
            case 26:
                return Long.valueOf(this.f26263l.getVideoSize());
            case 27:
                return Boolean.valueOf(this.f26263l.isPreloadAll());
            case 28:
                return this.f26263l.getCodeId();
            case 29:
                this.f26263l.setCodeId((String) sparseArray.get(1));
                return null;
            case 30:
                return Integer.valueOf(this.f26263l.getScene());
            case 31:
                this.f26263l.setScene(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 32:
                return Boolean.valueOf(this.f26263l.isH265());
            case 33:
                return Float.valueOf(this.f26263l.getPlaySpeedRatio());
            case 34:
                return this.f26263l.getUrl();
            case 35:
                return this.f26263l.getFileNameKey();
            case 36:
                return Integer.valueOf(this.f26263l.getPlayerType());
            case 37:
                this.f26263l.setPlayerType(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 38:
                this.f26263l.putExtra((String) sparseArray.get(1), sparseArray.get(2));
                return null;
            case 39:
                return this.f26263l.getExtra((String) sparseArray.get(1));
            case 40:
                return this.f26263l.removeExtra((String) sparseArray.get(1));
            case 41:
                return Integer.valueOf(this.f26263l.getConnectTimeOutMills());
            case 42:
                this.f26263l.setConnectTimeOutMills(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 43:
                return Integer.valueOf(this.f26263l.getReadTimeOutMills());
            case 44:
                this.f26263l.setReadTimeOutMills(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 45:
                return Integer.valueOf(this.f26263l.getWriteTimeOutMills());
            case 46:
                this.f26263l.setWriteTimeOutMills(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 47:
                return Integer.valueOf(this.f26263l.getSourceType());
            case 48:
                this.f26263l.setSourceType(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 49:
                return Integer.valueOf(this.f26263l.getVideoEncodeType());
            case 50:
                this.f26263l.setVideoEncodeType(((Integer) sparseArray.get(1)).intValue());
                return null;
            case ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT /* 51 */:
                w videoH264 = this.f26263l.getVideoH264();
                return videoH264 != null ? new a(videoH264) : videoH264;
            case 52:
                Object aVar = sparseArray.get(1);
                if (aVar != null) {
                    aVar = new a((Function) aVar);
                }
                this.f26263l.setVideoH264((w) aVar);
                return null;
            case 53:
                w videoH265 = this.f26263l.getVideoH265();
                return videoH265 != null ? new a(videoH265) : videoH265;
            case 54:
                w currentVideoInfo = this.f26263l.getCurrentVideoInfo();
                return currentVideoInfo != null ? new a(currentVideoInfo) : currentVideoInfo;
            case 55:
                Object aVar2 = sparseArray.get(1);
                if (aVar2 != null) {
                    aVar2 = new a((Function) aVar2);
                }
                this.f26263l.setVideoH265((w) aVar2);
                return null;
            default:
                return null;
        }
    }

    @Override // com.byazt.um.zy
    public String getCacheParentDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public String getCid() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public String getCodeId() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 28);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public int getConnectTimeOutMills() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 41);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public long getCurrent() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.um.zy
    public w getCurrentVideoInfo() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 54);
        ?? Apply = this.hp.apply(sparseArray);
        a aVar = Apply;
        if (Apply != 0) {
            aVar = new a((Function) Apply);
        }
        return aVar;
    }

    @Override // com.byazt.um.zy
    public Object getExtra(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 39);
        sparseArray.put(1, str);
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public String getFileNameKey() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 35);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public int getHeight() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public String getLogExtra() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public JSONObject getPassThroughJson() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (JSONObject) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public int getPitayaCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getPitayaCode() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public String getPitayaErrorMsg() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public float getPlaySpeedRatio() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 33);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.um.zy
    public List getPlayTrackUrls() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        return (List) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public int getPlayerType() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 36);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getPreloadSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getReadTimeOutMills() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 43);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getScene() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 30);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getSourceType() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 47);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public String getUrl() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 34);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public int getVideoEncodeType() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 49);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.um.zy
    public w getVideoH264() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 51);
        ?? Apply = this.hp.apply(sparseArray);
        a aVar = Apply;
        if (Apply != 0) {
            aVar = new a((Function) Apply);
        }
        return aVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.um.zy
    public w getVideoH265() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 53);
        ?? Apply = this.hp.apply(sparseArray);
        a aVar = Apply;
        if (Apply != 0) {
            aVar = new a((Function) Apply);
        }
        return aVar;
    }

    @Override // com.byazt.um.zy
    public long getVideoSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.um.zy
    public int getVideoSkipResult() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getWidth() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public int getWriteTimeOutMills() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 45);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.zy
    public boolean isAudio() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.zy
    public boolean isH265() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 32);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.zy
    public boolean isPreloadAll() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.zy
    public boolean isQuiet() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.zy
    public void putExtra(String str, Object obj) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 38);
        sparseArray.put(1, str);
        sparseArray.put(2, obj);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public Object removeExtra(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 40);
        sparseArray.put(1, str);
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setAudio(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setCacheParentDir(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setCid(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setCodeId(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 29);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setConnectTimeOutMills(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 42);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setCurrent(long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setHeight(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setLogExtra(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setPlayTrackUrls(List list) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        sparseArray.put(1, list);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setPlayerType(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 37);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setQuiet(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setReadTimeOutMills(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 44);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setScene(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 31);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setSourceType(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 48);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setVideoEncodeType(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 50);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setVideoH264(w wVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 52);
        if (wVar != null) {
            wVar = new a(wVar);
        }
        sparseArray.put(1, wVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setVideoH265(w wVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 55);
        if (wVar != null) {
            wVar = new a(wVar);
        }
        sparseArray.put(1, wVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setVideoSkipResult(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setWidth(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.zy
    public void setWriteTimeOutMills(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 46);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    public k(Function function) {
        this.hp = function;
    }
}
