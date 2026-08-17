package com.byazt.pg;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 158})
@ATSKeep
/* loaded from: classes3.dex */
public class hq implements wv, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile wv f24386l;

    public hq(wv wvVar) {
        this.f24386l = wvVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24386l != null ? this.f24386l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24386l = null;
            this.hp = function;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.wv
    public com.byazt.um.eb createTTLiveVideoPlayer(Context context, boolean z2, long j2, JSONObject jSONObject, Looper looper) {
        if (this.f24386l != null) {
            return this.f24386l.createTTLiveVideoPlayer(context, z2, j2, jSONObject, looper);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, Boolean.valueOf(z2));
        sparseArray.put(3, Long.valueOf(j2));
        sparseArray.put(4, jSONObject);
        sparseArray.put(5, looper);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.um.q qVar = Apply;
        if (Apply != 0) {
            qVar = new com.byazt.um.q((Function) Apply);
        }
        return qVar;
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.wv
    public com.byazt.um.eb createTTVideoPlayer(Context context, String str) {
        if (this.f24386l != null) {
            return this.f24386l.createTTVideoPlayer(context, str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, context);
        sparseArray.put(2, str);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.um.q qVar = Apply;
        if (Apply != 0) {
            qVar = new com.byazt.um.q((Function) Apply);
        }
        return qVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.wv
    public com.byazt.um.hp createVideoCacheDir() {
        if (this.f24386l != null) {
            return this.f24386l.createVideoCacheDir();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.um.l lVar = Apply;
        if (Apply != 0) {
            lVar = new com.byazt.um.l((Function) Apply);
        }
        return lVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.wv
    public com.byazt.um.e createVideoPreload() {
        if (this.f24386l != null) {
            return this.f24386l.createVideoPreload();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.um.jl jlVar = Apply;
        if (Apply != 0) {
            jlVar = new com.byazt.um.jl((Function) Apply);
        }
        return jlVar;
    }

    @Override // com.byazt.pg.wv
    public int getLiveSupportCode() {
        if (this.f24386l != null) {
            return this.f24386l.getLiveSupportCode();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.wv
    public boolean isTTVideoOk() {
        if (this.f24386l != null) {
            return this.f24386l.isTTVideoOk();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.wv
    public void openDebugLog(boolean z2) {
        if (this.f24386l != null) {
            this.f24386l.openDebugLog(z2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.wv
    public void preloadTTVideo(Context context, String str, int i2, String[] strArr, long[] jArr, boolean z2) {
        if (this.f24386l != null) {
            this.f24386l.preloadTTVideo(context, str, i2, strArr, jArr, z2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, context);
        sparseArray.put(2, str);
        sparseArray.put(3, Integer.valueOf(i2));
        sparseArray.put(4, strArr);
        sparseArray.put(5, jArr);
        sparseArray.put(6, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    public hq(Function function) {
        this.hp = function;
    }
}
