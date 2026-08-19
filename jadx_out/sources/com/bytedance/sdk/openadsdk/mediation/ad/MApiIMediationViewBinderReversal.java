package com.bytedance.sdk.openadsdk.mediation.ad;

import android.util.SparseArray;
import com.byazt.kj.hp;
import java.util.Map;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 873})
/* loaded from: classes3.dex */
public class MApiIMediationViewBinderReversal implements IMediationViewBinderReversal {
    private final Function<SparseArray<Object>, Object> hp;

    public MApiIMediationViewBinderReversal(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getCallToActionId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271024);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getDecriptionTextId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271023);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public Map<String, Integer> getExtras() {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 271034);
        sparseArray.put(-99999985, Map.class);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getGroupImage1Id() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271029);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getGroupImage2Id() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271030);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getGroupImage3Id() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271031);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getIconImageId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271025);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getLayoutId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271021);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getLogoLayoutId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271032);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getMainImageId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271026);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getMediaViewId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271027);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getShakeViewContainerId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271033);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getSourceId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271028);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinderReversal
    public int getTitleId() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 271022);
            sparseArray.put(-99999985, Integer.TYPE);
            Integer num = (Integer) this.hp.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }
}
