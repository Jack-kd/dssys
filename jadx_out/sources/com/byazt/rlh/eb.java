package com.byazt.rlh;

import com.byazt.bzj.q;
import com.byazt.sno.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 94})
/* loaded from: classes3.dex */
public class eb extends l {

    /* renamed from: q, reason: collision with root package name */
    public volatile com.byazt.bzj.jx f25235q;

    public eb(String str, com.byazt.ewl.l lVar) {
        super(str, lVar);
    }

    public void callAdVideoCache() {
        if (this.f25235q == null) {
            this.f25235q = new q(this, ((l) this).jx);
        }
        notifyVideoCache(this.f25235q, (com.byazt.dq.hp) null);
    }

    public void callLoadFail(com.byazt.hb.hp hpVar) {
        if (hasNotifyFail()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter 加载成功或者失败回调只能调用一次");
        } else {
            notifyLoadFail(new com.byazt.dq.hp(49004, com.byazt.dq.hp.hp(49004), hpVar == null ? -1 : hpVar.hp(), hpVar == null ? "" : hpVar.l()));
        }
    }

    public void callLoadSucceed(double d2, Map<String, Object> map) {
        if (hasNotifySuccess()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter callLoadSuccess");
        if (this.f25235q == null) {
            this.f25235q = new q(this, ((l) this).jx);
        }
        hp(this.f25235q, d2, map);
    }

    @Override // com.byazt.rlh.l
    public <T> T callManager(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i2 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i2 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i2 == 8112) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callAdVideoCache");
            callAdVideoCache();
        } else if (i2 == 1008) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardedAdShow");
            callRewardedAdShow();
        } else if (i2 == 1009) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardClick");
            callRewardClick();
        } else if (i2 == 1014) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardedAdClosed");
            callRewardedAdClosed();
        } else if (i2 == 1026) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardVideoComplete");
            callRewardVideoComplete();
        } else if (i2 == 1021) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardVideoError");
            callRewardVideoError();
        } else {
            if (i2 != 1037) {
                if (i2 == 1018 && pluginValueSet != null) {
                    final boolean zBooleanValue = pluginValueSet.booleanValue(8017);
                    final float fFloatValue = pluginValueSet.floatValue(8018);
                    final String strStringValue2 = pluginValueSet.stringValue(8019);
                    final Map map2 = (Map) pluginValueSet.objectValue(8075, Map.class);
                    com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardVerify rewardVerify:" + zBooleanValue + " amount:" + fFloatValue + " name:" + strStringValue2 + " map:" + map2);
                    callRewardVerify(new com.byazt.ti.hp() { // from class: com.byazt.rlh.eb.8
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
                            return fFloatValue;
                        }
                    });
                }
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom reward loader : callRewardSkippedVideo");
            callRewardSkippedVideo();
        }
        return null;
    }

    public final void callRewardClick() {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.2
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    eb.this.checkClick(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.2.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.jd.hp hpVar = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                            if (hpVar != null) {
                                hpVar.i_();
                            }
                        }
                    });
                }
            });
        }
    }

    public final void callRewardSkippedVideo() {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.6
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.jd.hp hpVar = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.a();
                    }
                }
            });
        }
    }

    public final void callRewardVerify(final com.byazt.ti.hp hpVar) {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.7
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.jd.hp hpVar2 = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                    if (hpVar2 != null) {
                        hpVar2.hp(hpVar);
                    }
                }
            });
        }
    }

    public final void callRewardVideoComplete() {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.4
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.jd.hp hpVar = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.j();
                    }
                }
            });
        }
    }

    public final void callRewardVideoError() {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.5
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.jd.hp hpVar = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.w();
                    }
                }
            });
        }
    }

    public final void callRewardedAdClosed() {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.3
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.jd.hp hpVar = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.j_();
                    }
                }
            });
        }
    }

    public void callRewardedAdShow() {
        if (this.f25235q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.1
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    eb.this.checkShow(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.eb.1.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.jd.hp hpVar = (com.byazt.jd.hp) eb.this.f25235q.getTTAdatperCallback();
                            if (hpVar != null) {
                                hpVar.hp();
                            }
                        }
                    });
                }
            });
        }
    }
}
