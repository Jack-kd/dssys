package com.byazt.gak;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.byazt.jt.l;
import com.byazt.jz.hq;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 54})
/* loaded from: classes2.dex */
public class a extends l {
    public static final String TAG = "PangleFullVideoAdapter";

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public class hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.qt.gu f20297e;
        public boolean gu;
        public boolean jl;

        /* renamed from: k, reason: collision with root package name */
        public com.byazt.vne.l f20298k;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.p000if.j f20300s = new com.byazt.p000if.j(null) { // from class: com.byazt.gak.a.hp.1
            @Override // com.byazt.p000if.j
            public void hp(int i2, String str) {
                hp.this.gu = false;
                hp.this.f20298k.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.j
            public void l(com.byazt.qt.gu guVar) {
                com.byazt.aw.l.hp("TMe", "pangle full cached 2");
                hp.this.gu = true;
                hp.this.f20298k.notifyVideoCache(hp.this, (com.byazt.dq.hp) null);
            }

            @Override // com.byazt.p000if.j
            public void hp(com.byazt.qt.gu guVar) {
                if (guVar != null) {
                    hp.this.f20297e = guVar;
                    hp.this.setExpressAd(true);
                    hp hpVar = hp.this;
                    hpVar.setInteractionType(hpVar.f20297e.getInteractionType());
                    Map<String, Object> mediaExtraInfo = hp.this.f20297e.getMediaExtraInfo();
                    com.byazt.aw.l.j(MediationConstant.TAG, "PangleFullVideoLoader WaterfallPangleFullVideoLoader extraInfo :".concat(String.valueOf(mediaExtraInfo)));
                    if (hp.this.zy.hp() && mediaExtraInfo != null) {
                        double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                        com.byazt.aw.l.hp("TTMediationSDK_ECMP", com.byazt.aw.j.l(hp.this.zy.l(), hp.this.zy.jl()) + "pangle 全屏 返回的 cpm价格：" + dHp);
                        hp hpVar2 = hp.this;
                        if (dHp <= 0.0d) {
                            dHp = 0.0d;
                        }
                        hpVar2.setCpm(dHp);
                    }
                    if (mediaExtraInfo != null) {
                        hp.this.putExtraMsg(mediaExtraInfo);
                        Object obj = mediaExtraInfo.get("materialMetaIsFromPreload");
                        if (obj instanceof Boolean) {
                            hp.this.jl = ((Boolean) obj).booleanValue();
                            com.byazt.aw.l.hp(MediationConstant.TAG, "pangle 全屏 返回的adnPreload：" + hp.this.jl);
                        }
                    }
                    Function function = null;
                    hp.this.f20297e.setDownloadListener(new com.byazt.gu.jx(function) { // from class: com.byazt.gak.a.hp.1.1
                        @Override // com.byazt.gu.jx
                        public void hp() {
                            if (hp.this.jx != null) {
                                hp.this.jx.hp();
                            }
                        }

                        @Override // com.byazt.gu.jx
                        public void jx(long j2, long j3, String str, String str2) {
                            if (hp.this.jx != null) {
                                hp.this.jx.l(j2, j3, str, str2);
                            }
                        }

                        @Override // com.byazt.gu.jx
                        public void l(long j2, long j3, String str, String str2) {
                            if (hp.this.jx != null) {
                                hp.this.jx.hp(j2, j3, str, str2);
                            }
                        }

                        @Override // com.byazt.gu.jx
                        public void hp(long j2, long j3, String str, String str2) {
                            if (hp.this.jx != null) {
                                hp.this.jx.hp(j2, j3, (int) (j2 != 0 ? j3 / j2 : 0L), -1, str, str2);
                            }
                        }

                        @Override // com.byazt.gu.jx
                        public void hp(long j2, String str, String str2) {
                            if (hp.this.jx != null) {
                                hp.this.jx.hp(j2, str, str2);
                            }
                        }

                        @Override // com.byazt.gu.jx
                        public void hp(String str, String str2) {
                            if (hp.this.jx != null) {
                                hp.this.jx.hp(str, str2);
                            }
                        }
                    });
                    hp.this.f20297e.setFullScreenVideoAdInteractionListener(new com.byazt.pk.hp(function) { // from class: com.byazt.gak.a.hp.1.2
                        @Override // com.byazt.pk.hp
                        public void hp(Bundle bundle) {
                            if (hp.this.eb instanceof com.byazt.sdu.l) {
                                hp.this.hp().hp();
                            }
                        }

                        @Override // com.byazt.pk.hp
                        public void j() {
                            if (hp.this.eb instanceof com.byazt.sdu.l) {
                                hp.this.hp().a();
                            }
                        }

                        @Override // com.byazt.pk.hp
                        public void jx() {
                            if (hp.this.eb instanceof com.byazt.sdu.l) {
                                hp.this.hp().j();
                            }
                        }

                        @Override // com.byazt.pk.hp
                        public void l() {
                            if (hp.this.eb instanceof com.byazt.sdu.l) {
                                hp.this.hp().h_();
                            }
                        }

                        @Override // com.byazt.pk.hp
                        public void hp() {
                            if (hp.this.eb instanceof com.byazt.sdu.l) {
                                hp.this.hp().g_();
                            }
                        }
                    });
                    hp.this.gu = true;
                    hp.this.f20298k.notifyLoadSuccess(hp.this);
                    return;
                }
                hp.this.f20298k.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "请求成功，但无广告可用"));
            }

            @Override // com.byazt.p000if.j
            public void hp() {
                com.byazt.aw.l.hp("TMe", "pangle full cached");
            }
        };

        /* renamed from: v, reason: collision with root package name */
        public com.byazt.iqm.l f20301v;
        public com.byazt.xl.l zy;

        public hp() {
        }

        @Override // com.byazt.rt.jx
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            com.byazt.qt.gu guVar = this.f20297e;
            if (guVar != null) {
                return com.byazt.fr.l.l(guVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            com.byazt.qt.gu guVar = this.f20297e;
            if (guVar != null) {
                return com.byazt.fr.l.hp(guVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.qt.gu guVar = this.f20297e;
            if (guVar == null || (mediaExtraInfo = guVar.getMediaExtraInfo()) == null) {
                return null;
            }
            HashMap map = new HashMap();
            map.put("coupon", mediaExtraInfo.get("coupon"));
            map.put("live_room", mediaExtraInfo.get("live_room"));
            map.put("product", mediaExtraInfo.get("product"));
            setMediaExtraInfo(map);
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.rt.jx
        public String getReqId() {
            com.byazt.qt.gu guVar = this.f20297e;
            return guVar != null ? com.byazt.fr.l.jx(guVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.f20297e == null;
        }

        @Override // com.byazt.rt.jx
        public boolean isAdnPreload() {
            return this.jl;
        }

        @Override // com.byazt.rt.jx
        public Integer isReadyStatus() {
            com.byazt.qt.gu guVar = this.f20297e;
            return (guVar == null || guVar.getExpirationTimestamp() <= System.currentTimeMillis()) ? 3 : 2;
        }

        public void loadAd(Context context, com.byazt.iqm.l lVar, com.byazt.xl.l lVar2, com.byazt.vne.l lVar3) {
            this.zy = lVar2;
            this.f20298k = lVar3;
            this.f20301v = lVar;
            hq pluginCSJLoader = a.this.getPluginCSJLoader(context);
            if (pluginCSJLoader == null) {
                return;
            }
            l.hp hpVarHp = com.byazt.fr.l.hp(this.f20301v, this.zy, false);
            hpVarHp.hp(1080).l(1920).j(this.f20301v.ud());
            pluginCSJLoader.loadFullScreenVideoAd(hpVarHp.hp(), this.f20300s);
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            com.byazt.qt.gu guVar = this.f20297e;
            if (guVar != null) {
                guVar.setFullScreenVideoAdInteractionListener(null);
                this.f20297e.setDownloadListener(null);
                this.f20297e.setAdInteractionListener(null);
                this.f20297e = null;
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.qt.gu guVar = this.f20297e;
            if (guVar != null) {
                guVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void showAd(Activity activity, Object obj, String str) {
            com.byazt.aw.l.j(MediationConstant.TAG, "PangleFullVideoLoader WaterfallPangleFullVideoLoader showAd ritScenes:" + obj + "  ritScenesContent: " + str + "  mTTFullScreenVideoAd:" + this.f20297e + "  activity:" + activity);
            com.byazt.qt.gu guVar = this.f20297e;
            if (guVar != null) {
                if (obj != null) {
                    guVar.showFullScreenVideoAd(activity, obj, str);
                } else {
                    guVar.showFullScreenVideoAd(activity);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.sdu.l hp() {
            return (com.byazt.sdu.l) this.eb;
        }
    }

    public a(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        if (lVar2 == null) {
            notifyLoadFail(new com.byazt.dq.hp("load ad fail adSlot is null"));
        } else {
            new hp().loadAd(context.getApplicationContext(), lVar2, lVar, this);
        }
    }
}
