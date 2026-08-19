package com.byazt.gak;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.byazt.jz.hq;
import com.byazt.qt.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 38})
/* loaded from: classes2.dex */
public class j {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public k f20333e;

        /* renamed from: q, reason: collision with root package name */
        public com.byazt.qrd.jx f20334q;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.qrd.l f20335s;

        public hp(k kVar, boolean z2) {
            Map<String, Object> mediaExtraInfo;
            Function function = null;
            this.f20335s = new com.byazt.qrd.l(function) { // from class: com.byazt.gak.j.hp.1
                @Override // com.byazt.qrd.l
                public void hp(View view, int i2) {
                    if (hp.this.f25333a != null) {
                        hp.this.f25333a.hp(view);
                    }
                }

                @Override // com.byazt.qrd.l
                public void l(View view, int i2) {
                    if (hp.this.f25333a != null) {
                        hp.this.f25333a.hp();
                    }
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, String str, int i2) {
                    if (hp.this.f25333a instanceof com.byazt.gpb.j) {
                        ((com.byazt.gpb.j) hp.this.f25333a).hp(view, str, i2);
                    }
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, float f2, float f3) {
                    if (hp.this.f25333a instanceof com.byazt.gpb.j) {
                        ((com.byazt.gpb.j) hp.this.f25333a).hp(f2, f3);
                    }
                }
            };
            this.f20334q = new com.byazt.qrd.jx(function) { // from class: com.byazt.gak.j.hp.2
                @Override // com.byazt.qrd.jx
                public void hp() {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.hp();
                    }
                }

                @Override // com.byazt.qrd.jx
                public void j() {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.j();
                    }
                }

                @Override // com.byazt.qrd.jx
                public void jx() {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.jx();
                    }
                }

                @Override // com.byazt.qrd.jx
                public void l() {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.l();
                    }
                }

                @Override // com.byazt.qrd.jx
                public void w() {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.w();
                    }
                }

                @Override // com.byazt.qrd.jx
                public void hp(int i2, int i3) {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.hp(new com.byazt.dq.hp(i2, "MediaPlayer inter error code:".concat(String.valueOf(i3))));
                    }
                }

                @Override // com.byazt.qrd.jx
                public void hp(long j2, long j3) {
                    if (hp.this.f25343l != null) {
                        hp.this.f25343l.hp(j2, j3);
                    }
                }
            };
            this.f20333e = kVar;
            setImageMode(kVar.getImageMode());
            setInteractionType(this.f20333e.getInteractionType());
            setExpressAd(true);
            if (z2 && (mediaExtraInfo = kVar.getMediaExtraInfo()) != null) {
                double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                com.byazt.aw.l.hp("TTMediationSDK_ECMP", "pangle 模板draw 返回的 cpm价格：".concat(String.valueOf(dHp)));
                setCpm(dHp <= 0.0d ? 0.0d : dHp);
            }
            this.f20333e.setExpressInteractionListener(this.f20335s);
            this.f20333e.setVideoAdListener(this.f20334q);
            putExtraMsg("ad_id", Long.valueOf(getAdId()));
            putExtraMsg("c_id", Long.valueOf(getCreativeId()));
            Map<String, Object> mediaExtraInfo2 = this.f20333e.getMediaExtraInfo();
            if (mediaExtraInfo2 != null) {
                putExtraMsg(mediaExtraInfo2);
                putExtraMsg("log_extra", mediaExtraInfo2.toString());
            }
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            k kVar = this.f20333e;
            if (kVar != null) {
                return com.byazt.fr.l.l(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public View getAdView() {
            k kVar = this.f20333e;
            if (kVar != null) {
                return kVar.getExpressAdView();
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            k kVar = this.f20333e;
            if (kVar != null) {
                return com.byazt.fr.l.hp(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            k kVar = this.f20333e;
            return kVar != null ? kVar.getDislikeDialog(activity) : super.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            k kVar = this.f20333e;
            return kVar != null ? kVar.getDislikeInfo() : super.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            k kVar = this.f20333e;
            if (kVar == null || (mediaExtraInfo = kVar.getMediaExtraInfo()) == null) {
                return null;
            }
            setMediaExtraInfo(mediaExtraInfo);
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.rt.jx
        public String getReqId() {
            k kVar = this.f20333e;
            return kVar != null ? com.byazt.fr.l.jx(kVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.f20333e == null;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDislike() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            k kVar = this.f20333e;
            if (kVar != null) {
                kVar.destroy();
                this.f20333e = null;
            }
        }

        @Override // com.byazt.rt.jx
        public void render() {
            k kVar = this.f20333e;
            if (kVar != null) {
                kVar.render();
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw express: setAdInteractionListener pluginTTAdInteractionListener = ".concat(String.valueOf(lVar)));
            k kVar = this.f20333e;
            if (kVar != null) {
                kVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setCanInterruptVideoPlay(boolean z2) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw express : setCanInterruptVideoPlay b = ".concat(String.valueOf(z2)));
            k kVar = this.f20333e;
            if (kVar != null) {
                kVar.setCanInterruptVideoPlay(z2);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
            if (this.f20333e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw express:  activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.f20333e.setDislikeCallback(activity, hpVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20333e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f20333e.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDownloadListener(com.byazt.gu.jx jxVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw express: setDownloadListener pluginTTAppDownloadListener = ".concat(String.valueOf(jxVar)));
            k kVar = this.f20333e;
            if (kVar != null) {
                kVar.setDownloadListener(jxVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            if (this.f20333e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.f20333e.uploadDislikeEvent(str);
            }
        }
    }

    public void hp(final boolean z2, hq hqVar, com.byazt.jt.l lVar, final com.byazt.vne.l lVar2) {
        if (hqVar == null || lVar2 == null) {
            return;
        }
        hqVar.loadExpressDrawFeedAd(lVar, new com.byazt.p000if.a(null) { // from class: com.byazt.gak.j.1
            @Override // com.byazt.p000if.a
            public void hp(int i2, String str) {
                lVar2.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.a
            public void hp(List<k> list) {
                if (list == null || list.size() == 0) {
                    lVar2.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (k kVar : list) {
                    if (kVar != null) {
                        arrayList.add(new hp(kVar, z2));
                    }
                }
                lVar2.notifyLoadSuccess(arrayList);
            }
        });
    }
}
