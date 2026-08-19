package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
@ATSKeep
/* loaded from: classes3.dex */
public class xs implements u, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile u f23680l;

    public xs(u uVar) {
        this.f23680l = uVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                return this.f23680l.getCacheKey();
            case 2:
                return this.f23680l.getUrl();
            case 3:
                return this.f23680l.getResult();
            case 4:
                return this.f23680l.getOriginResult();
            case 5:
                this.f23680l.setResult(sparseArray.get(1));
                return null;
            case 6:
                return Integer.valueOf(this.f23680l.getWidth());
            case 7:
                return Integer.valueOf(this.f23680l.getHeight());
            case 8:
                return this.f23680l.getHeaders();
            case 9:
                return Boolean.valueOf(this.f23680l.isGif());
            case 10:
                return Boolean.valueOf(this.f23680l.isLocal());
            case 11:
                s httpTime = this.f23680l.getHttpTime();
                return httpTime != null ? new q(httpTime) : httpTime;
            case 12:
                return Integer.valueOf(this.f23680l.getFileSize());
            default:
                return null;
        }
    }

    @Override // com.byazt.nke.u
    public String getCacheKey() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.u
    public int getFileSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.nke.u
    public Map getHeaders() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.u
    public int getHeight() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.nke.u
    public s getHttpTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        ?? Apply = this.hp.apply(sparseArray);
        q qVar = Apply;
        if (Apply != 0) {
            qVar = new q((Function) Apply);
        }
        return qVar;
    }

    @Override // com.byazt.nke.u
    public Object getOriginResult() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.u
    public Object getResult() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.u
    public String getUrl() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.u
    public int getWidth() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.nke.u
    public boolean isGif() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.nke.u
    public boolean isLocal() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.nke.u
    public void setResult(Object obj) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, obj);
        this.hp.apply(sparseArray);
    }

    public xs(Function function) {
        this.hp = function;
    }
}
