package com.byazt.up;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1757, 30})
/* loaded from: classes3.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    public final ValueSet hp = com.byazt.xi.jx.hp;

    /* renamed from: l, reason: collision with root package name */
    public final TTNativeExpressAd.ExpressVideoAdListener f26289l;

    public jx(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        this.f26289l = expressVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f26289l == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 152101:
                this.f26289l.onVideoLoad();
                return null;
            case 152102:
                this.f26289l.onVideoError(valueSetL.intValue(0), valueSetL.intValue(1));
                return null;
            case 152103:
                this.f26289l.onVideoAdStartPlay();
                return null;
            case 152104:
                this.f26289l.onVideoAdPaused();
                return null;
            case 152105:
                this.f26289l.onVideoAdContinuePlay();
                return null;
            case 152106:
                this.f26289l.onProgressUpdate(valueSetL.longValue(0), valueSetL.longValue(1));
                return null;
            case 152107:
                this.f26289l.onVideoAdComplete();
                return null;
            case 152108:
                this.f26289l.onClickRetry();
                return null;
            default:
                return null;
        }
    }
}
