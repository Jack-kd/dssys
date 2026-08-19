package com.byazt.th;

import android.util.SparseArray;
import com.byazt.fl.q;
import com.byazt.fl.v;
import com.byazt.xi.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_EANABLE_DROPPING_DTS_ROLLBACK, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public ValueSet hp = jx.hp;

    /* renamed from: l, reason: collision with root package name */
    public final TTFeedAd.VideoAdListener f25875l;

    public hp(TTFeedAd.VideoAdListener videoAdListener) {
        this.f25875l = videoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f25875l == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 161101:
                this.f25875l.onVideoLoad(new q(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 161102:
                this.f25875l.onVideoError(valueSetL.intValue(0), valueSetL.intValue(1));
                return null;
            case 161103:
                this.f25875l.onVideoAdPaused(new q(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 161104:
                this.f25875l.onVideoAdStartPlay(new q(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 161105:
                this.f25875l.onVideoAdContinuePlay(new q(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 161106:
                this.f25875l.onProgressUpdate(valueSetL.longValue(0), valueSetL.longValue(1));
                return null;
            case 161107:
                this.f25875l.onVideoAdComplete(new q(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
