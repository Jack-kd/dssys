package com.byazt.rlh;

import com.byazt.bzj.e;
import com.byazt.sno.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends l {

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.bzj.jx f25248q;

    public s(String str, com.byazt.ewl.l lVar) {
        super(str, lVar);
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
        e eVar = new e(this, ((l) this).jx);
        this.f25248q = eVar;
        hp(eVar, d2, map);
    }

    @Override // com.byazt.rlh.l
    public <T> T callManager(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i2 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom splash loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i2 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom splash loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i2 == 1009) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom splash loader : callSplashAdClicked");
            callSplashAdClicked();
        } else if (i2 == 1008) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom splash loader : callSplashAdShow");
            callSplashAdShow();
        } else if (i2 == 1019) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom splash loader : callSplashAdSkip");
            callSplashAdSkip();
        } else if (i2 == 1011) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom splash loader : callSplashAdDismiss");
            callSplashAdDismiss();
        }
        return null;
    }

    public void callSplashAdClicked() {
        if (this.f25248q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.s.1
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    s.this.checkClick(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.s.1.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.htw.l lVar = (com.byazt.htw.l) s.this.f25248q.getTTAdatperCallback();
                            if (lVar != null) {
                                lVar.j();
                            }
                        }
                    });
                }
            });
        }
    }

    public void callSplashAdDismiss() {
        if (this.f25248q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.s.4
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.htw.l lVar = (com.byazt.htw.l) s.this.f25248q.getTTAdatperCallback();
                    if (lVar != null) {
                        lVar.l(2);
                    }
                }
            });
        }
    }

    public void callSplashAdShow() {
        if (this.f25248q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.s.2
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    s.this.checkShow(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.s.2.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.htw.l lVar = (com.byazt.htw.l) s.this.f25248q.getTTAdatperCallback();
                            if (lVar != null) {
                                lVar.w();
                            }
                        }
                    });
                }
            });
        }
    }

    public void callSplashAdSkip() {
        if (this.f25248q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.s.3
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.htw.l lVar = (com.byazt.htw.l) s.this.f25248q.getTTAdatperCallback();
                    if (lVar != null) {
                        lVar.hp(1);
                    }
                }
            });
        }
    }
}
