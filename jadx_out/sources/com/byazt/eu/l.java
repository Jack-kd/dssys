package com.byazt.eu;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 29, 34})
/* loaded from: classes2.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final TTNativeAd.EasyPlayWidgetListener hp;

    public l(TTNativeAd.EasyPlayWidgetListener easyPlayWidgetListener) {
        this.hp = easyPlayWidgetListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 144101:
                this.hp.onInfo((JSONObject) valueSetL.objectValue(0, JSONObject.class));
                return null;
            case 144102:
                return this.hp.getEstimatedInteractionArea();
            case 144103:
                this.hp.onCanRenderSuccess((JSONObject) valueSetL.objectValue(0, JSONObject.class));
                return null;
            case 144104:
                this.hp.onCanRenderFail((JSONObject) valueSetL.objectValue(0, JSONObject.class));
                return null;
            case 144105:
                this.hp.onClose();
                return null;
            default:
                return null;
        }
    }
}
