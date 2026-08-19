package com.byazt.ewl;

import android.app.Activity;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.umeng.analytics.pro.r;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1118, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends j {
    public w(com.byazt.xl.hp hpVar) {
        super(hpVar);
    }

    private com.byazt.sws.hp hp() {
        return (com.byazt.sws.hp) this.eb;
    }

    @Override // com.byazt.rt.jx
    public boolean adnHasAdVideoCachedApi() {
        if (((j) this).f19528s == null) {
            return super.adnHasAdVideoCachedApi();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(r.a.f49615C).hp(Boolean.class).l());
        return objApply instanceof Boolean ? ((Boolean) objApply).booleanValue() : super.adnHasAdVideoCachedApi();
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
            hp().g_();
            return null;
        }
        if (i2 == 1014) {
            if (hp() == null) {
                return null;
            }
            hp().h_();
            return null;
        }
        if (i2 == 1026) {
            if (hp() == null) {
                return null;
            }
            hp().j();
            return null;
        }
        if (i2 == 1021) {
            if (hp() == null) {
                return null;
            }
            hp().w();
            return null;
        }
        if (i2 == 1037) {
            if (hp() == null) {
                return null;
            }
            hp().a();
            return null;
        }
        if (i2 != 1018 || hp() == null) {
            return null;
        }
        final boolean zBooleanValue = pluginValueSet.booleanValue(8017);
        final float fIntValue = pluginValueSet.intValue(8018);
        final String strStringValue2 = pluginValueSet.stringValue(8019);
        hp().hp(new com.byazt.ti.hp() { // from class: com.byazt.ewl.w.1
            @Override // com.byazt.ti.hp
            public boolean hp() {
                return zBooleanValue;
            }

            @Override // com.byazt.ti.hp
            public Map<String, Object> j() {
                return null;
            }

            @Override // com.byazt.ti.hp
            public String jx() {
                return strStringValue2;
            }

            @Override // com.byazt.ti.hp
            public float l() {
                return fIntValue;
            }
        });
        return null;
    }

    @Override // com.byazt.rt.jx
    public String getReqId() {
        if (((j) this).f19528s == null) {
            return super.getReqId();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8147).hp(String.class).l());
        if (objApply instanceof String) {
            return (String) objApply;
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
