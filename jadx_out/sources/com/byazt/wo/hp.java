package com.byazt.wo;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1156, 28})
/* loaded from: classes3.dex */
public class hp implements TTFeedAd.CustomizeVideo {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? jx.jx : function;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public String getVideoUrl() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 162101);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoAutoStart() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 162107);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoBreak(long j2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 162106);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoContinue(long j2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 162104);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoError(long j2, int i2, int i3) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(-99999987, 162109);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Long.valueOf(j2));
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, Integer.valueOf(i3));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoFinish() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 162105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoPause(long j2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 162103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoStart() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 162102);
        sparseArray.put(-99999985, Void.TYPE);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoStartError(int i2, int i3) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(-99999987, 162108);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, Integer.valueOf(i3));
        this.hp.apply(sparseArray);
    }
}
