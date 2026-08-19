package com.byazt.gak;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import com.byazt.jt.l;
import com.byazt.jz.hq;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 19})
/* loaded from: classes2.dex */
public class jl extends l {
    public static final String VERSION_00 = "0.0";

    /* renamed from: l, reason: collision with root package name */
    public int f20336l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 757})
    public class hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public Map<String, Object> f20337e;
        public com.byazt.xl.l gu;
        public com.byazt.vne.l jl;

        /* renamed from: q, reason: collision with root package name */
        public com.byazt.qt.l f20338q;
        public com.byazt.iqm.l zy;

        public hp(Map<String, Object> map) {
            this.f20337e = map;
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null) {
                return com.byazt.fr.l.l(lVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null) {
                return com.byazt.fr.l.hp(lVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null && (mediaExtraInfo = lVar.getMediaExtraInfo()) != null) {
                HashMap map = new HashMap();
                map.put("coupon", mediaExtraInfo.get("coupon"));
                map.put("live_room", mediaExtraInfo.get("live_room"));
                map.put("product", mediaExtraInfo.get("product"));
                setMediaExtraInfo(map);
            }
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.rt.jx
        public String getReqId() {
            com.byazt.qt.l lVar = this.f20338q;
            return lVar != null ? com.byazt.fr.l.jx(lVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.f20338q == null;
        }

        @Override // com.byazt.rt.jx
        public void hideSkipBtn() {
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null) {
                lVar.hideSkipButton();
            }
        }

        @Override // com.byazt.rt.jx
        public void hideSkipButton() {
            com.byazt.aw.l.j(MediationConstant.TAG, "PangleSplashLoader hideSkipButton   WaterfallPangleSplashLoader  mCSJSplashAd:" + this.f20338q);
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null) {
                lVar.hideSkipButton();
            }
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null) {
                lVar.setSplashAdListener(null);
                this.f20338q.setDownloadListener(null);
                this.f20338q.setSplashCardListener(null);
                this.f20338q = null;
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.qt.l lVar2 = this.f20338q;
            if (lVar2 != null) {
                lVar2.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void showSplashAd(ViewGroup viewGroup) {
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar == null || viewGroup == null) {
                return;
            }
            lVar.showSplashView(viewGroup);
        }

        @Override // com.byazt.rt.jx
        public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
            com.byazt.qt.l lVar = this.f20338q;
            if (lVar != null) {
                lVar.showSplashCardView(viewGroup, activity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.sdu.w hp() {
            return (com.byazt.sdu.w) this.eb;
        }

        public void hp(Context context, com.byazt.iqm.l lVar, com.byazt.xl.l lVar2, com.byazt.vne.l lVar3) {
            this.gu = lVar2;
            this.jl = lVar3;
            this.zy = lVar;
            hq pluginCSJLoader = jl.this.getPluginCSJLoader(context);
            if (pluginCSJLoader == null) {
                return;
            }
            Map<String, Object> map = this.f20337e;
            if (map == null) {
                jl.this.f20336l = 3000;
            } else {
                jl.this.f20336l = map.get("ad_load_timeout") != null ? ((Integer) this.f20337e.get("ad_load_timeout")).intValue() : 3000;
            }
            l.hp hpVarHp = com.byazt.fr.l.hp(this.zy, this.gu, false);
            hpVarHp.hp(this.zy.ns()).l(this.zy.cx()).hp(this.zy.zy()).l(this.zy.k());
            hp(pluginCSJLoader, hpVarHp.hp());
        }

        private void hp(hq hqVar, com.byazt.jt.l lVar) {
            com.byazt.p000if.hp hpVar = new com.byazt.p000if.hp(null) { // from class: com.byazt.gak.jl.hp.1
                @Override // com.byazt.p000if.hp
                public void hp(com.byazt.qt.l lVar2) {
                    com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashLoadSuccess 111");
                    if (lVar2 == null) {
                        hp.this.jl.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "渲染成功但广告是空"));
                        return;
                    }
                    hp.this.f20338q = lVar2;
                    hp.this.setExpressAd(true);
                    hp hpVar2 = hp.this;
                    hpVar2.setInteractionType(hpVar2.f20338q.getInteractionType());
                    Map<String, Object> mediaExtraInfo = hp.this.f20338q.getMediaExtraInfo();
                    com.byazt.aw.l.j(MediationConstant.TAG, "PangleSplashLoader WaterfallPangleSplashLoader extraInfo :".concat(String.valueOf(mediaExtraInfo)));
                    if (mediaExtraInfo != null) {
                        hp.this.putExtraMsg(mediaExtraInfo);
                    }
                    if (hp.this.gu.hp() && mediaExtraInfo != null) {
                        double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                        com.byazt.aw.l.hp("TTMediationSDK_ECMP", com.byazt.aw.j.l(hp.this.gu.l(), hp.this.gu.jl()) + "pangle Splash 返回的 cpm价格：" + dHp);
                        hp hpVar3 = hp.this;
                        if (dHp <= 0.0d) {
                            dHp = 0.0d;
                        }
                        hpVar3.setCpm(dHp);
                    }
                    Function function = null;
                    hp.this.f20338q.setDownloadListener(new com.byazt.gu.jx(function) { // from class: com.byazt.gak.jl.hp.1.1
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
                    hp.this.f20338q.setSplashAdListener(new com.byazt.mu.hp(function) { // from class: com.byazt.gak.jl.hp.1.2
                        @Override // com.byazt.mu.hp
                        public void hp(com.byazt.qt.l lVar3) {
                            com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashAdShow");
                            if (hp.this.eb instanceof com.byazt.sdu.w) {
                                hp.this.hp().w();
                            }
                        }

                        @Override // com.byazt.mu.hp
                        public void l(com.byazt.qt.l lVar3) {
                            com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashAdClick");
                            if (hp.this.eb instanceof com.byazt.sdu.w) {
                                hp.this.hp().j();
                            }
                        }

                        @Override // com.byazt.mu.hp
                        public void hp(com.byazt.qt.l lVar3, int i2) {
                            com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashAdClose closeType = ".concat(String.valueOf(i2)));
                            if (i2 == 1 || i2 == 3) {
                                if (hp.this.eb instanceof com.byazt.sdu.w) {
                                    hp.this.hp().hp(i2);
                                }
                            } else if (hp.this.eb instanceof com.byazt.sdu.w) {
                                hp.this.hp().l(i2);
                            }
                        }
                    });
                    hp.this.f20338q.setSplashCardListener(new com.byazt.mu.l(function) { // from class: com.byazt.gak.jl.hp.1.3
                        @Override // com.byazt.mu.l
                        public void hp(com.byazt.qt.l lVar3) {
                            if (lVar3 != null) {
                                com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashCardReadyToShow csjSplashAd.getSplashCardView()" + lVar3.getSplashCardView());
                            }
                            if (hp.this.eb instanceof com.byazt.sdu.w) {
                                hp.this.hp();
                            }
                            if (hp.this.eb instanceof com.byazt.sdu.w) {
                                hp.this.hp().hp();
                            }
                        }

                        @Override // com.byazt.mu.l
                        public void l() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashCardClose");
                            if (hp.this.eb instanceof com.byazt.sdu.w) {
                                hp.this.hp().k_();
                            }
                        }

                        @Override // com.byazt.mu.l
                        public void hp() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashCardClick");
                            try {
                                if (hp.this.eb instanceof com.byazt.sdu.w) {
                                    hp.this.hp().l_();
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    });
                    hp.this.jl.notifyLoadSuccess(hp.this);
                }

                @Override // com.byazt.p000if.hp
                @MainThread
                public void l(com.byazt.qt.l lVar2) {
                    com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashRenderSuccess");
                }

                @Override // com.byazt.p000if.hp
                @MainThread
                public void hp(com.byazt.qt.hp hpVar2) {
                    com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashLoadFail");
                    if (hpVar2 != null) {
                        hp.this.jl.notifyLoadFail(new com.byazt.dq.hp(hpVar2.getCode(), hpVar2.getMsg()));
                    } else {
                        hp.this.jl.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "csjAdError is null"));
                    }
                }

                @Override // com.byazt.p000if.hp
                @MainThread
                public void hp(com.byazt.qt.l lVar2, com.byazt.qt.hp hpVar2) {
                    com.byazt.aw.l.j(MediationConstant.TAG, "new api onSplashRenderFail");
                    if (hpVar2 != null) {
                        hp.this.jl.notifyLoadFail(new com.byazt.dq.hp(hpVar2.getCode(), hpVar2.getMsg()));
                    } else {
                        hp.this.jl.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "csjAdError is null"));
                    }
                }
            };
            if (hqVar != null) {
                hqVar.loadSplashAd(lVar, hpVar, jl.this.f20336l);
            }
        }
    }

    public jl(com.byazt.ewl.l lVar) {
        super(lVar);
        this.f20336l = 3000;
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        if (lVar2 == null) {
            notifyLoadFail(new com.byazt.dq.hp("load ad fail adSlot is null"));
        } else {
            new hp(map).hp(context != null ? context.getApplicationContext() : com.byazt.di.l.getContext(), lVar2, lVar, this);
        }
    }
}
