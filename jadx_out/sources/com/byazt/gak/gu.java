package com.byazt.gak;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.qt.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends l {
    public static final String TAG = "PgRewardVideoAdapter";
    public static final String VERSION_4400 = "4.4.0.0";
    public com.byazt.xl.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.iqm.l f20303l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 1132})
    public class hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public v f20304e;
        public boolean gu;
        public Map<String, Object> jl;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.p000if.eb f20306s = new AnonymousClass1(null);

        public hp(Map<String, Object> map) {
            this.jl = map;
        }

        @Override // com.byazt.rt.jx
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            v vVar = this.f20304e;
            if (vVar != null) {
                return com.byazt.fr.l.l(vVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public String getAdLifecycleId() {
            v vVar = this.f20304e;
            if (vVar instanceof com.byazt.bp.jx) {
                return ((com.byazt.bp.jx) vVar).getLifecycleId();
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            v vVar = this.f20304e;
            if (vVar != null) {
                return com.byazt.fr.l.hp(vVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            v vVar = this.f20304e;
            if (vVar != null) {
                setMediaExtraInfo(vVar.getMediaExtraInfo());
            }
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.rt.jx
        public String getReqId() {
            v vVar = this.f20304e;
            return vVar != null ? com.byazt.fr.l.jx(vVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.f20304e == null;
        }

        @Override // com.byazt.rt.jx
        public boolean isAdnPreload() {
            return this.gu;
        }

        @Override // com.byazt.rt.jx
        public Integer isReadyStatus() {
            v vVar = this.f20304e;
            return (vVar == null || vVar.getExpirationTimestamp() <= System.currentTimeMillis()) ? 3 : 2;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            v vVar = this.f20304e;
            if (vVar != null) {
                vVar.setDownloadListener(null);
                this.f20304e.setRewardAdInteractionListener(null);
                this.f20304e.setAdInteractionListener(null);
                this.f20304e = null;
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.aw.l.j(MediationConstant.TAG, "PangleRewardLoader WaterfallPangleRewardLoader setAdInteractionListener pluginTTAdInteractionListener:" + lVar + "  mTTRewardVideoAd: " + this.f20304e);
            v vVar = this.f20304e;
            if (vVar != null) {
                vVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void showAd(Activity activity, Object obj, String str) {
            v vVar = this.f20304e;
            if (vVar != null) {
                if (obj != null) {
                    vVar.showRewardVideoAd(activity, obj, str);
                } else {
                    vVar.showRewardVideoAd(activity);
                }
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 2178})
        /* renamed from: com.byazt.gak.gu$hp$1, reason: invalid class name */
        public class AnonymousClass1 extends com.byazt.p000if.eb {
            public AnonymousClass1(Function function) {
                super(function);
            }

            @Override // com.byazt.p000if.eb
            public void hp(int i2, String str) {
                com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward_onError code:" + i2 + "  message:" + str);
                gu.this.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.eb
            public void l(v vVar) {
                com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward_onRewardVideoCached 2");
                hp hpVar = hp.this;
                gu.this.notifyVideoCache(hpVar, (com.byazt.dq.hp) null);
            }

            @Override // com.byazt.p000if.eb
            public void hp(v vVar) {
                com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward_onRewardVideoAdLoad");
                if (vVar != null) {
                    hp.this.f20304e = vVar;
                    hp.this.setExpressAd(true);
                    hp hpVar = hp.this;
                    hpVar.setInteractionType(hpVar.f20304e.getInteractionType());
                    Map<String, Object> mediaExtraInfo = hp.this.f20304e.getMediaExtraInfo();
                    com.byazt.aw.l.j(MediationConstant.TAG, "PangleRewardLoader WaterfallPangleRewardLoader extraInfo :".concat(String.valueOf(mediaExtraInfo)));
                    if (gu.this.jx.hp() && mediaExtraInfo != null) {
                        double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                        com.byazt.aw.l.hp("TTMediationSDK_ECMP", com.byazt.aw.j.l(gu.this.jx.l(), gu.this.jx.jl()) + "pangle reward 返回的 cpm价格：" + dHp);
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
                            hp.this.gu = ((Boolean) obj).booleanValue();
                            com.byazt.aw.l.hp(MediationConstant.TAG, "pangle 激励 返回的adnPreload：" + hp.this.gu);
                        }
                    }
                    Function function = null;
                    hp.this.f20304e.setDownloadListener(new com.byazt.gu.jx(function) { // from class: com.byazt.gak.gu.hp.1.1
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
                    hp.this.f20304e.setRewardAdInteractionListener(new com.byazt.mv.hp(function) { // from class: com.byazt.gak.gu.hp.1.2
                        @Override // com.byazt.mv.hp
                        public void hp(Bundle bundle) {
                            com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onAdShow");
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().hp();
                            }
                        }

                        @Override // com.byazt.mv.hp
                        public void j() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onVideoError");
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().w();
                            }
                        }

                        @Override // com.byazt.mv.hp
                        public void jx() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onVideoComplete");
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().j();
                            }
                        }

                        @Override // com.byazt.mv.hp
                        public void l() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onAdClose");
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().j_();
                            }
                        }

                        @Override // com.byazt.mv.hp
                        public void w() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onSkippedVideo");
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().a();
                            }
                        }

                        @Override // com.byazt.mv.hp
                        public void hp() {
                            com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onAdVideoBarClick");
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().i_();
                            }
                        }

                        @Override // com.byazt.mv.hp
                        @Deprecated
                        public void hp(final boolean z2, final int i2, final String str, final int i3, final String str2) {
                            if (hp.this.l()) {
                                com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward:onRewardVerify-------------2");
                                if (hp.this.eb instanceof com.byazt.jd.hp) {
                                    hp.this.hp().hp(new com.byazt.ti.hp() { // from class: com.byazt.gak.gu.hp.1.2.1
                                        @Override // com.byazt.ti.hp
                                        public boolean hp() {
                                            return z2;
                                        }

                                        @Override // com.byazt.ti.hp
                                        public Map<String, Object> j() {
                                            HashMap map = new HashMap();
                                            map.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(i3));
                                            map.put(MediationConstant.KEY_ERROR_MSG, str2);
                                            return map;
                                        }

                                        @Override // com.byazt.ti.hp
                                        public String jx() {
                                            return !TextUtils.isEmpty(str) ? str : gu.this.f20303l != null ? gu.this.f20303l.o() : "";
                                        }

                                        @Override // com.byazt.ti.hp
                                        public float l() {
                                            int i4 = i2;
                                            if (i4 >= 0) {
                                                return i4;
                                            }
                                            if (gu.this.f20303l != null) {
                                                return gu.this.f20303l.d();
                                            }
                                            return 0.0f;
                                        }
                                    });
                                }
                            }
                        }

                        @Override // com.byazt.mv.hp
                        public void hp(final boolean z2, final int i2, final Bundle bundle) {
                            if (hp.this.l()) {
                                return;
                            }
                            com.byazt.aw.l.j("GROMORE_SS_REWARD_VERIFY", "csj-onRewardArrived =".concat(String.valueOf(z2)));
                            if (hp.this.eb instanceof com.byazt.jd.hp) {
                                hp.this.hp().hp(new com.byazt.ti.hp() { // from class: com.byazt.gak.gu.hp.1.2.2
                                    @Override // com.byazt.ti.hp
                                    public boolean hp() {
                                        return z2;
                                    }

                                    @Override // com.byazt.ti.hp
                                    public Map<String, Object> j() {
                                        HashMap map = new HashMap();
                                        map.put(MediationConstant.KEY_EXTRA_INFO, bundle);
                                        map.put(MediationConstant.KEY_REWARD_TYPE, Integer.valueOf(i2));
                                        return map;
                                    }

                                    @Override // com.byazt.ti.hp
                                    public String jx() {
                                        Bundle bundle2 = bundle;
                                        String string = bundle2 != null ? bundle2.getString("reward_extra_key_reward_name") : "";
                                        return !TextUtils.isEmpty(string) ? string : gu.this.f20303l != null ? gu.this.f20303l.o() : "";
                                    }

                                    @Override // com.byazt.ti.hp
                                    public float l() {
                                        float f2 = bundle != null ? r0.getInt("reward_extra_key_reward_amount") : 0.0f;
                                        if (f2 >= 0.0f) {
                                            return f2;
                                        }
                                        if (gu.this.f20303l != null) {
                                            return gu.this.f20303l.d();
                                        }
                                        return 0.0f;
                                    }
                                });
                            }
                        }
                    });
                    hp hpVar3 = hp.this;
                    gu.this.notifyLoadSuccess(hpVar3);
                    return;
                }
                gu.this.notifyLoadFail(new com.byazt.dq.hp("请求成功，但无广告可用"));
            }

            @Override // com.byazt.p000if.eb
            public void hp() {
                com.byazt.aw.l.j(MediationConstant.TAG, "pangle_reward_onRewardVideoCached");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean l() {
            return !"0.0".equals(gu.this.getSdkVersion(MediationConstant.ADN_PANGLE)) && gu.VERSION_4400.compareTo(gu.this.getSdkVersion(MediationConstant.ADN_PANGLE)) > 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.jd.hp hp() {
            return (com.byazt.jd.hp) this.eb;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void hp(android.content.Context r9) {
            /*
                r8 = this;
                com.byazt.gak.gu r0 = com.byazt.gak.gu.this
                com.byazt.jz.hq r9 = r0.getPluginCSJLoader(r9)
                if (r9 != 0) goto L9
                return
            L9:
                com.byazt.gak.gu r0 = com.byazt.gak.gu.this
                com.byazt.iqm.l r0 = com.byazt.gak.gu.hp(r0)
                java.util.Map r0 = r0.r()
                if (r0 == 0) goto L28
                java.lang.String r1 = "pangle"
                java.lang.Object r0 = r0.get(r1)
                boolean r1 = r0 instanceof java.lang.String
                if (r1 == 0) goto L28
                java.lang.String r0 = (java.lang.String) r0
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                if (r1 != 0) goto L28
                goto L2a
            L28:
                java.lang.String r0 = ""
            L2a:
                com.byazt.gak.gu r1 = com.byazt.gak.gu.this
                com.byazt.iqm.l r2 = com.byazt.gak.gu.hp(r1)
                com.byazt.gak.gu r1 = com.byazt.gak.gu.this
                com.byazt.xl.l r1 = com.byazt.gak.gu.l(r1)
                java.lang.String r3 = r1.jl()
                com.byazt.gak.gu r1 = com.byazt.gak.gu.this
                com.byazt.xl.l r1 = com.byazt.gak.gu.l(r1)
                java.lang.String r4 = r1.u()
                com.byazt.gak.gu r1 = com.byazt.gak.gu.this
                com.byazt.xl.l r1 = com.byazt.gak.gu.l(r1)
                java.lang.String r5 = r1.xs()
                com.byazt.gak.gu r1 = com.byazt.gak.gu.this
                com.byazt.xl.l r1 = com.byazt.gak.gu.l(r1)
                java.lang.String r6 = r1.di()
                r7 = 0
                com.byazt.jt.l$hp r1 = com.byazt.fr.l.hp(r2, r3, r4, r5, r6, r7)
                com.byazt.gak.gu r2 = com.byazt.gak.gu.this
                com.byazt.iqm.l r2 = com.byazt.gak.gu.hp(r2)
                java.lang.String r2 = r2.hq()
                com.byazt.jt.l$hp r2 = r1.a(r2)
                com.byazt.jt.l$hp r0 = r2.w(r0)
                com.byazt.gak.gu r2 = com.byazt.gak.gu.this
                com.byazt.iqm.l r2 = com.byazt.gak.gu.hp(r2)
                java.lang.String r2 = r2.o()
                com.byazt.jt.l$hp r0 = r0.e(r2)
                com.byazt.gak.gu r2 = com.byazt.gak.gu.this
                com.byazt.iqm.l r2 = com.byazt.gak.gu.hp(r2)
                int r2 = r2.d()
                com.byazt.jt.l$hp r0 = r0.s(r2)
                r2 = 1080(0x438, float:1.513E-42)
                com.byazt.jt.l$hp r0 = r0.hp(r2)
                r2 = 1920(0x780, float:2.69E-42)
                com.byazt.jt.l$hp r0 = r0.l(r2)
                com.byazt.gak.gu r2 = com.byazt.gak.gu.this
                com.byazt.iqm.l r2 = com.byazt.gak.gu.hp(r2)
                int r2 = r2.ud()
                r0.j(r2)
                com.byazt.jt.l r0 = r1.hp()
                com.byazt.if.eb r1 = r8.f20306s
                r9.loadRewardVideoAd(r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.gak.gu.hp.hp(android.content.Context):void");
        }
    }

    public gu(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    public void notifyLoadFailBecauseGMAdSlotIsNull() {
        notifyLoadFail(new com.byazt.dq.hp("load ad fail adSlot is null"));
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        this.f20303l = lVar2;
        this.jx = lVar;
        if (lVar2 == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
        } else {
            new hp(map).hp(context != null ? context.getApplicationContext() : com.byazt.di.l.getContext());
        }
    }
}
