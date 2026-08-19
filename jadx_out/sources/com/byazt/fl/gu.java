package com.byazt.fl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTImage;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends TTImage {
    public final Function<SparseArray<Object>, Object> hp;

    /* renamed from: l, reason: collision with root package name */
    public ValueSet f20059l;

    public gu(Function<SparseArray<Object>, Object> function) {
        this.f20059l = com.byazt.xi.jx.hp;
        function = function == null ? com.byazt.xi.jx.jx : function;
        this.hp = function;
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            this.f20059l = com.byazt.xi.jx.hp((SparseArray<Object>) objApply).l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTImage
    public double getDuration() {
        return this.f20059l.doubleValue(230004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTImage
    public int getHeight() {
        return this.f20059l.intValue(230002);
    }

    @Override // com.bytedance.sdk.openadsdk.TTImage
    public String getImageUrl() {
        return this.f20059l.stringValue(230003);
    }

    @Override // com.bytedance.sdk.openadsdk.TTImage
    public int getWidth() {
        return this.f20059l.intValue(230001);
    }

    @Override // com.bytedance.sdk.openadsdk.TTImage
    public boolean isValid() {
        return this.f20059l.booleanValue(230005);
    }
}
