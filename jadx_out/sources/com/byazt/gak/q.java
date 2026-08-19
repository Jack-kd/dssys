package com.byazt.gak;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.byazt.jz.hq;
import com.byazt.qt.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 150})
/* loaded from: classes2.dex */
public class q {
    public boolean hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 3})
    public class hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.qrd.jx f20345e;
        public volatile boolean jl = false;

        /* renamed from: q, reason: collision with root package name */
        public com.byazt.qrd.l f20346q;

        /* renamed from: s, reason: collision with root package name */
        public k f20347s;

        public hp(k kVar) {
            Map<String, Object> mediaExtraInfo;
            Function function = null;
            this.f20346q = new com.byazt.qrd.l(function) { // from class: com.byazt.gak.q.hp.2
                @Override // com.byazt.qrd.l
                public void hp(View view, int i2) {
                    if (hp.this.hp != null) {
                        hp.this.hp.hp(view);
                    }
                }

                @Override // com.byazt.qrd.l
                public void l(View view, int i2) {
                    if (hp.this.hp != null) {
                        hp.this.hp.hp();
                    }
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, String str, int i2) {
                    if (hp.this.hp instanceof com.byazt.qjq.a) {
                        ((com.byazt.qjq.a) hp.this.hp).hp(view, str, i2);
                    }
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, float f2, float f3) {
                    if (hp.this.hp instanceof com.byazt.qjq.a) {
                        ((com.byazt.qjq.a) hp.this.hp).hp(f2, f3);
                    }
                }
            };
            this.f20345e = new com.byazt.qrd.jx(function) { // from class: com.byazt.gak.q.hp.3
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
            this.f20347s = kVar;
            setImageMode(kVar.getImageMode());
            setInteractionType(this.f20347s.getInteractionType());
            setExpressAd(true);
            if (q.this.hp && (mediaExtraInfo = kVar.getMediaExtraInfo()) != null) {
                double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                com.byazt.aw.l.hp("TTMediationSDK_ECMP", "pangle 模板native 返回的 cpm价格：".concat(String.valueOf(dHp)));
                setCpm(dHp <= 0.0d ? 0.0d : dHp);
            }
            putExtraMsg("ad_id", Long.valueOf(getAdId()));
            putExtraMsg("c_id", Long.valueOf(getCreativeId()));
            Map<String, Object> mediaExtraInfo2 = this.f20347s.getMediaExtraInfo();
            if (mediaExtraInfo2 != null) {
                putExtraMsg(mediaExtraInfo2);
                putExtraMsg("log_extra", mediaExtraInfo2.toString());
            }
            this.f20347s.setExpressInteractionListener(this.f20346q);
            this.f20347s.setVideoAdListener(this.f20345e);
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            k kVar = this.f20347s;
            if (kVar != null) {
                return com.byazt.fr.l.l(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public View getAdView() {
            k kVar = this.f20347s;
            if (kVar != null) {
                return kVar.getExpressAdView();
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            k kVar = this.f20347s;
            if (kVar != null) {
                return com.byazt.fr.l.hp(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            k kVar = this.f20347s;
            return kVar != null ? kVar.getDislikeDialog(activity) : super.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            k kVar = this.f20347s;
            return kVar != null ? kVar.getDislikeInfo() : super.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            k kVar = this.f20347s;
            if (kVar == null || (mediaExtraInfo = kVar.getMediaExtraInfo()) == null) {
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
            k kVar = this.f20347s;
            if (kVar != null) {
                return com.byazt.fr.l.jx(kVar.getMediaExtraInfo());
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.jl;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDislike() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            this.jl = true;
            com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.gak.q.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    k kVar = hp.this.f20347s;
                    if (kVar != null) {
                        kVar.destroy();
                    }
                }
            });
        }

        @Override // com.byazt.rt.jx
        public void render() {
            k kVar = this.f20347s;
            if (kVar != null) {
                kVar.render();
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            k kVar = this.f20347s;
            if (kVar != null) {
                kVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
            if (this.f20347s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle native express:  activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.f20347s.setDislikeCallback(activity, hpVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20347s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle native express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f20347s.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            if (this.f20347s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle native express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.f20347s.uploadDislikeEvent(str);
            }
        }
    }

    public void hp(boolean z2, hq hqVar, com.byazt.jt.l lVar, final com.byazt.vne.l lVar2) {
        if (hqVar == null || lVar2 == null) {
            return;
        }
        this.hp = z2;
        hqVar.loadNativeExpressAd(lVar, new com.byazt.p000if.a(null) { // from class: com.byazt.gak.q.1
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
                        arrayList.add(q.this.new hp(kVar));
                    }
                }
                lVar2.notifyLoadSuccess(arrayList);
            }
        });
    }
}
