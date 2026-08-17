package com.byazt.ewl;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

@com.byazt.kj.hp(hp = {0, 1, 1118, 54})
/* loaded from: classes2.dex */
public class a extends j {
    public a(com.byazt.xl.hp hpVar) {
        super(hpVar);
    }

    private com.byazt.kuv.hp hp() {
        return (com.byazt.kuv.hp) this.eb;
    }

    @Override // com.byazt.ewl.j
    public <T> T callMethod(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        String strStringValue;
        if (i2 == 8143) {
            return (T) Double.valueOf(getCpm());
        }
        if (i2 == 8111) {
            if (pluginValueSet == null) {
                return null;
            }
            if (!isClientBidding() && !isMultiBiddingAd()) {
                return null;
            }
            setCpm(pluginValueSet.doubleValue(8016));
            return null;
        }
        int iIntValue = 0;
        if (i2 == 8129) {
            if (pluginValueSet == null) {
                return null;
            }
            setExpressAd(pluginValueSet.booleanValue(8033, false));
            return null;
        }
        if (i2 == 1008) {
            if (hp() == null) {
                return null;
            }
            hp().hp();
            return null;
        }
        if (i2 == 1017) {
            if (hp() == null) {
                return null;
            }
            if (pluginValueSet != null) {
                iIntValue = pluginValueSet.intValue(8014, 0);
                strStringValue = pluginValueSet.stringValue(8015);
            } else {
                strStringValue = "";
            }
            hp().hp(new com.byazt.dq.hp(iIntValue, strStringValue));
            return null;
        }
        if (i2 == 1009) {
            if (hp() == null) {
                return null;
            }
            hp().l();
            return null;
        }
        if (i2 == 1014) {
            if (hp() == null) {
                return null;
            }
            hp().jx();
            return null;
        }
        if (i2 == 1015) {
            if (hp() == null) {
                return null;
            }
            hp().j();
            return null;
        }
        if (i2 != 1016 || hp() == null) {
            return null;
        }
        hp().w();
        return null;
    }

    @Override // com.byazt.rt.jx
    public String getReqId() {
        if (((j) this).f19528s == null) {
            return super.getReqId();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8147).hp(String.class).l());
        if (objApply instanceof String) {
            return objApply.toString();
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public Integer isReadyStatus() {
        return j.isReadyStatus(((j) this).f19528s);
    }

    @Override // com.byazt.rt.jx
    public void showAd(Activity activity, Object obj, String str) {
        super.showAd(activity, obj, str);
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8113).hp(Void.class).hp(20033, activity).l());
        }
    }
}
