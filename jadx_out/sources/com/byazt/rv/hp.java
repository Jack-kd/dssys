package com.byazt.rv;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1275, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public ValueSet hp = jx.hp;

    /* renamed from: l, reason: collision with root package name */
    public final TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f25388l;

    public hp(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f25388l = fullScreenVideoAdInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f25388l == null) {
            return null;
        }
        switch (jx.hp(sparseArray).l().intValue(-99999987)) {
            case 131101:
                this.f25388l.onAdShow();
                return null;
            case 131102:
                this.f25388l.onAdVideoBarClick();
                return null;
            case 131103:
                this.f25388l.onAdClose();
                return null;
            case 131104:
                this.f25388l.onVideoComplete();
                return null;
            case 131105:
                this.f25388l.onSkippedVideo();
                return null;
            default:
                return null;
        }
    }
}
