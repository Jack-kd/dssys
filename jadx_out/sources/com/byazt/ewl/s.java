package com.byazt.ewl;

import android.app.Activity;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.umeng.analytics.pro.r;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1118, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends j {
    public s(com.byazt.xl.hp hpVar) {
        super(hpVar);
    }

    private com.byazt.jd.hp hp() {
        return (com.byazt.jd.hp) this.eb;
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
        if (i2 == 8115) {
            if (this.eb instanceof com.byazt.jd.hp) {
                hp().i_();
            }
        } else if (i2 == 8116) {
            if (this.eb instanceof com.byazt.jd.hp) {
                hp().j_();
            }
        } else if (i2 == 8117) {
            if (this.eb instanceof com.byazt.jd.hp) {
                hp().w();
            }
        } else if (i2 == 8118) {
            if (this.eb instanceof com.byazt.jd.hp) {
                hp().j();
            }
        } else if (i2 == 8119) {
            if (this.eb instanceof com.byazt.jd.hp) {
                hp().a();
            }
        } else {
            if (i2 != 8230) {
                if (i2 == 8231) {
                    if (this.eb instanceof com.byazt.jd.hp) {
                        final boolean zBooleanValue = pluginValueSet.booleanValue(8017);
                        final float fIntValue = pluginValueSet.intValue(8018);
                        final String strStringValue2 = pluginValueSet.stringValue(8019);
                        Map map = (Map) pluginValueSet.objectValue(8020, Map.class);
                        final HashMap map2 = new HashMap();
                        if (map != null) {
                            map2.putAll(map);
                        }
                        com.byazt.ti.hp hpVar = new com.byazt.ti.hp() { // from class: com.byazt.ewl.s.1
                            @Override // com.byazt.ti.hp
                            public boolean hp() {
                                return zBooleanValue;
                            }

                            @Override // com.byazt.ti.hp
                            public Map<String, Object> j() {
                                return map2;
                            }

                            @Override // com.byazt.ti.hp
                            public String jx() {
                                return strStringValue2;
                            }

                            @Override // com.byazt.ti.hp
                            public float l() {
                                return fIntValue;
                            }
                        };
                        com.byazt.fi.j.hp(hpVar, "GMRewardAd reward verify");
                        hp().hp(hpVar);
                    }
                } else if (i2 == 1017) {
                    if (this.eb instanceof com.byazt.jd.hp) {
                        int iIntValue = 0;
                        if (pluginValueSet != null) {
                            iIntValue = pluginValueSet.intValue(8014, 0);
                            strStringValue = pluginValueSet.stringValue(8015);
                        } else {
                            strStringValue = "";
                        }
                        hp().hp(new com.byazt.dq.hp(iIntValue, strStringValue));
                    }
                } else if (i2 == 8111) {
                    setCpm(pluginValueSet.doubleValue(8016));
                }
                return (T) com.byazt.ror.hp.hp(cls);
            }
            if (this.eb instanceof com.byazt.jd.hp) {
                hp().hp();
            }
        }
        return (T) com.byazt.ror.hp.hp(cls);
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
