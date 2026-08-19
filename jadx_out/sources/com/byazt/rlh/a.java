package com.byazt.rlh;

import com.byazt.sno.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 54})
/* loaded from: classes3.dex */
public class a extends l {

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.bzj.jx f25234q;

    public a(String str, com.byazt.ewl.l lVar) {
        super(str, lVar);
    }

    public void callInterstitialAdClick() {
        if (this.f25234q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.2
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    a.this.checkClick(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.2.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.kuv.hp hpVar = (com.byazt.kuv.hp) a.this.f25234q.getTTAdatperCallback();
                            if (hpVar != null) {
                                hpVar.l();
                            }
                        }
                    });
                }
            });
        }
    }

    public void callInterstitialAdLeftApplication() {
        if (this.f25234q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.5
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.kuv.hp hpVar = (com.byazt.kuv.hp) a.this.f25234q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.w();
                    }
                }
            });
        }
    }

    public void callInterstitialAdOpened() {
        if (this.f25234q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.4
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.kuv.hp hpVar = (com.byazt.kuv.hp) a.this.f25234q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.j();
                    }
                }
            });
        }
    }

    public void callInterstitialClosed() {
        if (this.f25234q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.3
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.kuv.hp hpVar = (com.byazt.kuv.hp) a.this.f25234q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.jx();
                    }
                }
            });
        }
    }

    public void callInterstitialShow() {
        if (this.f25234q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.1
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    a.this.checkShow(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.a.1.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.kuv.hp hpVar = (com.byazt.kuv.hp) a.this.f25234q.getTTAdatperCallback();
                            if (hpVar != null) {
                                hpVar.hp();
                            }
                        }
                    });
                }
            });
        }
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
        com.byazt.bzj.eb ebVar = new com.byazt.bzj.eb(this, ((l) this).jx);
        this.f25234q = ebVar;
        hp(ebVar, d2, map);
    }

    @Override // com.byazt.rlh.l
    public <T> T callManager(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i2 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i2 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i2 == 1008) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialShow");
            callInterstitialShow();
        } else if (i2 == 1009) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialAdClick");
            callInterstitialAdClick();
        } else if (i2 == 1014) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialClosed");
            callInterstitialClosed();
        } else if (i2 == 1015) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialAdOpened");
            callInterstitialAdOpened();
        } else if (i2 == 1016) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialAdLeftApplication");
            callInterstitialAdLeftApplication();
        }
        return null;
    }
}
