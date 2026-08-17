package com.byazt.rlh;

import android.view.View;
import com.byazt.sno.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 28})
/* loaded from: classes3.dex */
public class hp extends l {

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.bzj.jx f25240q;

    public hp(String str, com.byazt.ewl.l lVar) {
        super(str, lVar);
    }

    public void callBannerAdClicked() {
        if (this.f25240q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.hp.2
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    hp.this.checkClick(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.hp.2.1
                        @Override // com.byazt.sno.hp.InterfaceC0365hp
                        public void hp() {
                            com.byazt.qre.hp hpVar = (com.byazt.qre.hp) hp.this.f25240q.getTTAdatperCallback();
                            if (hpVar != null) {
                                hpVar.hp((View) null);
                            }
                        }
                    });
                }
            });
        }
    }

    public void callBannerAdClosed() {
        if (this.f25240q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.hp.3
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.qre.hp hpVar = (com.byazt.qre.hp) hp.this.f25240q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.hp();
                    }
                }
            });
        }
    }

    public void callBannerAdShow() {
        if (this.f25240q != null) {
            checkLoadSuccess(new hp.InterfaceC0365hp() { // from class: com.byazt.rlh.hp.1
                @Override // com.byazt.sno.hp.InterfaceC0365hp
                public void hp() {
                    com.byazt.qre.hp hpVar = (com.byazt.qre.hp) hp.this.f25240q.getTTAdatperCallback();
                    if (hpVar != null) {
                        hpVar.l(null);
                    }
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
        com.byazt.bzj.l lVar = new com.byazt.bzj.l(this, ((l) this).jx);
        this.f25240q = lVar;
        lVar.setMediaExtraInfo(this.f25247w);
        this.f25240q.setAdType(this.f25243j.o());
        if (d2 > 0.0d && getBiddingType() == 1) {
            this.f25240q.setCpm(d2);
        }
        if (map != null) {
            this.f25247w.putAll(map);
        }
        this.f25240q.putExtraMsg(this.f25247w);
        notifyLoadSuccess(this.f25240q);
    }

    @Override // com.byazt.rlh.l
    public <T> T callManager(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i2 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom banner loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i2 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom banner loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i2 == 1008) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom banner loader : callBannerAdShow");
            callBannerAdShow();
        } else if (i2 == 1009) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom banner loader : callBannerAdClick");
            callBannerAdClicked();
        } else if (i2 == 1014) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom banner loader : callBannerAdClosed");
            callBannerAdClosed();
        }
        return null;
    }
}
