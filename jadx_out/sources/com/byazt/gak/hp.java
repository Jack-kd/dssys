package com.byazt.gak;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.jt.l;
import com.byazt.jz.hq;
import com.byazt.qt.k;
import com.byazt.qt.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.gak.l {
    public com.byazt.xl.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.iqm.l f20313l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 170})
    /* renamed from: com.byazt.gak.hp$hp, reason: collision with other inner class name */
    public class C0251hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.qt.e f20316e;
        public Context gu;
        public boolean jl;
        public volatile boolean zy = false;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.pt.hp f20318s = new com.byazt.pt.hp(0 == true ? 1 : 0) { // from class: com.byazt.gak.hp.hp.3
            @Override // com.byazt.pt.hp
            public void hp(View view, zy zyVar) {
                if (C0251hp.this.eb instanceof com.byazt.sdu.hp) {
                    C0251hp.this.hp().hp(view);
                }
            }

            @Override // com.byazt.pt.hp
            public void l(View view, zy zyVar) {
                if (C0251hp.this.eb instanceof com.byazt.sdu.hp) {
                    C0251hp.this.hp().hp(view);
                }
            }

            @Override // com.byazt.pt.hp
            public void hp(zy zyVar) {
                if (C0251hp.this.eb instanceof com.byazt.sdu.hp) {
                    C0251hp.this.hp().l(null);
                }
            }
        };

        /* JADX WARN: Multi-variable type inference failed */
        public C0251hp(Context context, com.byazt.qt.e eVar) {
            Map<String, Object> mediaExtraInfo;
            this.f20316e = eVar;
            this.gu = context;
            com.byazt.qt.jx complianceInfo = eVar.getComplianceInfo();
            if (complianceInfo != null) {
                setAppName(complianceInfo.getAppName());
                setAuthorName(complianceInfo.getDeveloperName());
                setPrivacyAgreement(complianceInfo.getPrivacyUrl());
                setVersionName(complianceInfo.getAppVersion());
                HashMap map = new HashMap();
                Map<String, String> permissionsMap = complianceInfo.getPermissionsMap();
                if (permissionsMap != null && permissionsMap.size() > 0) {
                    map.putAll(permissionsMap);
                }
                setPermissionsMap(map);
                if (com.byazt.fr.l.hp("5.4.0.3")) {
                    setFunctionDescUrl(complianceInfo.getFunctionDescUrl());
                }
                if (com.byazt.fr.l.hp("6.8.1.6")) {
                    setRegUrl(complianceInfo.getRegUrl());
                }
                setRegNumber(complianceInfo.getRegNumber());
            }
            setTitle(eVar.getTitle());
            setAdDescription(eVar.getDescription());
            setActionText(eVar.getButtonText());
            setIconUrl(eVar.getIcon() != null ? eVar.getIcon().getImageUrl() : null);
            setImageMode(eVar.getImageMode());
            setInteractionType(eVar.getInteractionType());
            setSource(eVar.getSource());
            setRating(eVar.getAppScore());
            setIsAppDownload(eVar.getInteractionType() == 4);
            setExpressAd(false);
            if (eVar.getImageMode() == 16 || eVar.getImageMode() == 3 || eVar.getImageMode() == 2 || eVar.getImageMode() == 131) {
                if (eVar.getImageList() != null && !eVar.getImageList().isEmpty() && eVar.getImageList().get(0) != null) {
                    com.byazt.qt.jl jlVar = eVar.getImageList().get(0);
                    setImageUrl(jlVar.getImageUrl());
                    setImageHeight(jlVar.getHeight());
                    setImageWidth(jlVar.getWidth());
                }
            } else if (eVar.getImageMode() == 4 && eVar.getImageList() != null && eVar.getImageList().size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.byazt.qt.jl> it = eVar.getImageList().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getImageUrl());
                }
                setImages(arrayList);
            }
            setImageMode(eVar.getImageMode());
            if (!hp.this.jx.hp() || (mediaExtraInfo = eVar.getMediaExtraInfo()) == null) {
                return;
            }
            double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
            com.byazt.aw.l.hp("TTMediationSDK_ECMP", "pangle native 返回的 cpm价格：".concat(String.valueOf(dHp)));
            setCpm(dHp <= 0.0d ? 0.0d : dHp);
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar != null) {
                return com.byazt.fr.l.l(eVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar != null) {
                return com.byazt.fr.l.hp(eVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            if (this.f20316e == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native: getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.f20316e.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            if (this.f20316e == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native : getDislikeInfo");
            return this.f20316e.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar == null || (mediaExtraInfo = eVar.getMediaExtraInfo()) == null) {
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
            com.byazt.qt.e eVar = this.f20316e;
            return eVar != null ? com.byazt.fr.l.jx(eVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public int getVideoHeight() {
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar != null) {
                return eVar.getAdViewHeight();
            }
            return 0;
        }

        @Override // com.byazt.rt.jx
        public int getVideoWidth() {
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar != null) {
                return eVar.getAdViewWidth();
            }
            return 0;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.zy;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDislike() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            this.zy = true;
            com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.gak.hp.hp.2
                @Override // java.lang.Runnable
                public void run() {
                    if (C0251hp.this.f20316e != null) {
                        C0251hp.this.f20316e.setVideoAdListener(null);
                        C0251hp.this.f20316e.setAdInteractionListener(null);
                        C0251hp.this.f20316e.destroy();
                    }
                }
            });
        }

        @Override // com.byazt.rt.jx
        public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.qjq.e eVar, List<View> list4) {
            FrameLayout frameLayout;
            com.byazt.qt.e eVar2;
            View adView;
            View viewFindViewById;
            super.registerViewForInteraction(activity, viewGroup, list, list2, list3, eVar, list4);
            com.byazt.qt.e eVar3 = this.f20316e;
            if (eVar3 != null) {
                eVar3.registerViewForInteraction(viewGroup, (List<View>) null, list, list2, list3, (View) null, this.f20318s);
                this.f20316e.setDislikeCallback(activity, new com.byazt.cg.hp(null) { // from class: com.byazt.gak.hp.hp.1
                    @Override // com.byazt.cg.hp
                    public void hp() {
                    }

                    @Override // com.byazt.cg.hp
                    public void l() {
                    }

                    @Override // com.byazt.cg.hp
                    public void hp(int i2, String str, boolean z2) {
                        if (C0251hp.this.jl) {
                            return;
                        }
                        C0251hp.this.jl = true;
                        if (C0251hp.this.eb instanceof com.byazt.sdu.hp) {
                            com.byazt.xoi.hp.hp(hp.this.jx.l());
                            C0251hp.this.hp().hp();
                        }
                    }
                });
            }
            com.byazt.qt.e eVar4 = this.f20316e;
            if (eVar4 != null && eVar4.getAdLogo() != null && eVar != null && (viewFindViewById = viewGroup.findViewById(eVar.jl)) != null) {
                viewFindViewById.setVisibility(0);
                if (viewFindViewById instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
                    viewGroup2.removeAllViews();
                    ImageView imageView = new ImageView(this.gu);
                    imageView.setImageBitmap(this.f20316e.getAdLogo());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    layoutParams.width = com.byazt.dq.w.jx(this.gu, 38.0f);
                    layoutParams.height = com.byazt.dq.w.jx(this.gu, 38.0f);
                    viewFindViewById.setLayoutParams(layoutParams);
                    viewGroup2.addView(imageView, -1, -1);
                } else if (viewFindViewById instanceof ImageView) {
                    ((ImageView) viewFindViewById).setImageBitmap(this.f20316e.getAdLogo());
                }
            }
            if (eVar == null || (frameLayout = (FrameLayout) viewGroup.findViewById(eVar.eb)) == null || (eVar2 = this.f20316e) == null || (adView = eVar2.getAdView()) == null) {
                return;
            }
            removeSelfFromParent(adView);
            frameLayout.removeAllViews();
            frameLayout.addView(adView, -1, -1);
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native: setAdInteractionListener pluginTTAdInteractionListener = ".concat(String.valueOf(lVar)));
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar != null) {
                eVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, final com.byazt.cg.hp hpVar) {
            if (this.f20316e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native:  activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.f20316e.setDislikeCallback(activity, new com.byazt.cg.hp(null) { // from class: com.byazt.gak.hp.hp.4
                    @Override // com.byazt.cg.hp
                    public void hp() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp();
                        }
                    }

                    @Override // com.byazt.cg.hp
                    public void l() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.l();
                        }
                    }

                    @Override // com.byazt.cg.hp
                    public void hp(int i2, String str, boolean z2) {
                        if (C0251hp.this.jl) {
                            return;
                        }
                        C0251hp.this.jl = true;
                        com.byazt.xoi.hp.hp(hp.this.jx.l());
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp(i2, str, z2);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20316e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f20316e.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native: uploadDislikeEvent event = ".concat(String.valueOf(str)));
            com.byazt.qt.e eVar = this.f20316e;
            if (eVar != null) {
                eVar.uploadDislikeEvent(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.sdu.hp hp() {
            return (com.byazt.sdu.hp) this.eb;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20316e == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native : getDislikeDialog = ".concat(String.valueOf(dialog)));
            return this.f20316e.getDislikeDialog(dialog, numArr);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public class jx extends com.byazt.rt.jx {
        public boolean jl;

        /* renamed from: q, reason: collision with root package name */
        public SoftReference<FrameLayout> f20322q;

        /* renamed from: s, reason: collision with root package name */
        public k f20323s;
        public boolean zy;

        /* renamed from: e, reason: collision with root package name */
        public final Object f20320e = new Object();

        /* renamed from: k, reason: collision with root package name */
        public volatile boolean f20321k = false;

        /* renamed from: v, reason: collision with root package name */
        public final com.byazt.qrd.l f20324v = new com.byazt.qrd.l(null) { // from class: com.byazt.gak.hp.jx.4
            @Override // com.byazt.qrd.l
            public void hp(View view, int i2) {
                if (jx.this.eb instanceof com.byazt.sdu.hp) {
                    jx.this.hp().hp(view);
                }
            }

            @Override // com.byazt.qrd.l
            public void l(View view, int i2) {
                if (jx.this.eb instanceof com.byazt.sdu.hp) {
                    jx.this.hp().l(view);
                }
            }

            @Override // com.byazt.qrd.l
            public void hp(View view, String str, int i2) {
                jx.this.zy = false;
                com.byazt.aw.l.j("TTMediationSDK_banner", com.byazt.aw.j.l(hp.this.jx.l(), hp.this.jx.jl()) + "TTBannerView onRenderFail -> code=" + i2 + ",msg=" + str);
            }

            @Override // com.byazt.qrd.l
            public void hp(View view, float f2, float f3) {
                com.byazt.aw.l.j("TTMediationSDK_banner", com.byazt.aw.j.l(hp.this.jx.l(), hp.this.jx.jl()) + "TTBannerView onRenderSuccess 渲染成功！！mBannerViewRef = " + jx.this.f20322q);
                SoftReference<FrameLayout> softReference = jx.this.f20322q;
                if (softReference != null) {
                    FrameLayout frameLayout = softReference.get();
                    if (frameLayout != null) {
                        com.byazt.dq.w.hp(view);
                        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
                    }
                    jx.this.zy = true;
                }
            }
        };

        public jx() {
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            k kVar = this.f20323s;
            if (kVar != null) {
                return com.byazt.fr.l.l(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public synchronized View getAdView() {
            SoftReference<FrameLayout> softReference = this.f20322q;
            if (softReference == null) {
                return null;
            }
            FrameLayout frameLayout = softReference.get();
            synchronized (this.f20320e) {
                if (frameLayout == null) {
                    try {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        long j2 = 2000 + jUptimeMillis;
                        while (!this.zy && jUptimeMillis < j2) {
                            this.f20320e.wait(j2 - jUptimeMillis);
                            jUptimeMillis = SystemClock.uptimeMillis();
                        }
                    } catch (InterruptedException unused) {
                    }
                }
            }
            return frameLayout;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            k kVar = this.f20323s;
            if (kVar != null) {
                return com.byazt.fr.l.hp(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            if (this.f20323s == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner : getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.f20323s.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            if (this.f20323s == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner : getDislikeInfo");
            return this.f20323s.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            k kVar = this.f20323s;
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
            k kVar = this.f20323s;
            return kVar != null ? com.byazt.fr.l.jx(kVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.f20321k;
        }

        public void loadAd(final Context context) {
            hq pluginCSJLoader = hp.this.getPluginCSJLoader(context);
            if (pluginCSJLoader == null) {
                return;
            }
            l.hp hpVarHp = com.byazt.fr.l.hp(hp.this.f20313l, hp.this.jx.jl(), hp.this.jx.u(), hp.this.jx.xs(), hp.this.jx.di(), false);
            float fZy = hp.this.f20313l.zy();
            hpVarHp.hp(fZy).l(hp.this.f20313l.k());
            pluginCSJLoader.loadBannerExpressAd(hpVarHp.hp(), new com.byazt.p000if.a(null) { // from class: com.byazt.gak.hp.jx.1
                @Override // com.byazt.p000if.a
                public void hp(int i2, String str) {
                    hp.this.notifyLoadFail(new com.byazt.dq.hp(i2, str));
                }

                @Override // com.byazt.p000if.a
                public void hp(List<k> list) {
                    Map<String, Object> mediaExtraInfo;
                    if (list == null || list.size() == 0 || context == null) {
                        hp.this.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load list is null or empty"));
                        return;
                    }
                    jx.this.f20323s = list.get(0);
                    Context context2 = context;
                    if (context2 instanceof Activity) {
                        jx.this.f20323s.setDislikeCallback((Activity) context2, new com.byazt.cg.hp(null) { // from class: com.byazt.gak.hp.jx.1.1
                            @Override // com.byazt.cg.hp
                            public void hp() {
                            }

                            @Override // com.byazt.cg.hp
                            public void l() {
                            }

                            @Override // com.byazt.cg.hp
                            public void hp(int i2, String str, boolean z2) {
                                if (jx.this.jl) {
                                    return;
                                }
                                jx.this.jl = true;
                                if (jx.this.eb instanceof com.byazt.sdu.hp) {
                                    com.byazt.xoi.hp.hp(hp.this.jx.l());
                                    jx.this.hp().hp();
                                }
                            }
                        });
                    }
                    jx.this.setExpressAd(true);
                    jx jxVar = jx.this;
                    jxVar.setInteractionType(jxVar.f20323s.getInteractionType());
                    jx jxVar2 = jx.this;
                    jxVar2.setImageMode(jxVar2.f20323s.getImageMode());
                    if (hp.this.jx.hp() && (mediaExtraInfo = jx.this.f20323s.getMediaExtraInfo()) != null) {
                        double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                        com.byazt.aw.l.hp("TTMediationSDK_ECMP", com.byazt.aw.j.l(hp.this.jx.l(), hp.this.jx.jl()) + "pangle banner 返回的 cpm价格：" + dHp);
                        jx jxVar3 = jx.this;
                        if (dHp <= 0.0d) {
                            dHp = 0.0d;
                        }
                        jxVar3.setCpm(dHp);
                    }
                    jx jxVar4 = jx.this;
                    jxVar4.f20323s.setExpressInteractionListener(jxVar4.f20324v);
                    jx.this.f20322q = new SoftReference<>(new FrameLayout(context));
                    jx.this.f20323s.render();
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(jx.this);
                    hp.this.notifyLoadSuccess(arrayList);
                }
            });
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            this.f20321k = true;
            com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.gak.hp.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    k kVar = jx.this.f20323s;
                    if (kVar != null) {
                        kVar.setExpressInteractionListener((com.byazt.qrd.hp) null);
                        jx.this.f20323s.destroy();
                    }
                }
            });
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner : setAdInteractionListener pluginTTAdInteractionListener = ".concat(String.valueOf(lVar)));
            k kVar = this.f20323s;
            if (kVar != null) {
                kVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, final com.byazt.cg.hp hpVar) {
            if (this.f20323s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner : activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.f20323s.setDislikeCallback(activity, new com.byazt.cg.hp(null) { // from class: com.byazt.gak.hp.jx.3
                    @Override // com.byazt.cg.hp
                    public void hp() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp();
                        }
                    }

                    @Override // com.byazt.cg.hp
                    public void l() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.l();
                        }
                    }

                    @Override // com.byazt.cg.hp
                    public void hp(int i2, String str, boolean z2) {
                        if (jx.this.jl) {
                            return;
                        }
                        jx.this.jl = true;
                        com.byazt.xoi.hp.hp(hp.this.jx.l());
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp(i2, str, z2);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20323s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner :  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f20323s.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void setSlideIntervalTime(int i2) {
            if (this.f20323s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner : setSlideIntervalTime  intervalTime = ".concat(String.valueOf(i2)));
                this.f20323s.setSlideIntervalTime(i2);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner : uploadDislikeEvent event = ".concat(String.valueOf(str)));
            k kVar = this.f20323s;
            if (kVar != null) {
                kVar.uploadDislikeEvent(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.sdu.hp hp() {
            return (com.byazt.sdu.hp) this.eb;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 255})
    public class l extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public boolean f20327e;
        public volatile boolean gu = false;
        public final com.byazt.qrd.l jl;

        /* renamed from: s, reason: collision with root package name */
        public k f20329s;

        public l(Context context, k kVar) {
            Map<String, Object> mediaExtraInfo;
            Function function = null;
            com.byazt.qrd.l lVar = new com.byazt.qrd.l(function) { // from class: com.byazt.gak.hp.l.3
                @Override // com.byazt.qrd.l
                public void hp(View view, int i2) {
                    if (l.this.eb instanceof com.byazt.sdu.hp) {
                        l.this.hp().hp(view);
                    }
                }

                @Override // com.byazt.qrd.l
                public void l(View view, int i2) {
                    if (l.this.eb instanceof com.byazt.sdu.hp) {
                        l.this.hp().l(view);
                    }
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, String str, int i2) {
                    hp.this.notifyLoadFail(new com.byazt.dq.hp(i2, str));
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, float f2, float f3) {
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(l.this);
                    hp.this.notifyLoadSuccess(arrayList);
                }
            };
            this.jl = lVar;
            this.f20329s = kVar;
            setImageMode(kVar.getImageMode());
            setInteractionType(this.f20329s.getInteractionType());
            setExpressAd(true);
            this.f20329s.setExpressInteractionListener(lVar);
            if (context instanceof Activity) {
                this.f20329s.setDislikeCallback((Activity) context, new com.byazt.cg.hp(function) { // from class: com.byazt.gak.hp.l.1
                    @Override // com.byazt.cg.hp
                    public void hp() {
                    }

                    @Override // com.byazt.cg.hp
                    public void l() {
                    }

                    @Override // com.byazt.cg.hp
                    public void hp(int i2, String str, boolean z2) {
                        if (l.this.f20327e) {
                            return;
                        }
                        l.this.f20327e = true;
                        if (l.this.eb instanceof com.byazt.sdu.hp) {
                            com.byazt.xoi.hp.hp(hp.this.jx.l());
                            l.this.hp().hp();
                        }
                    }
                });
            }
            if (!hp.this.jx.hp() || (mediaExtraInfo = this.f20329s.getMediaExtraInfo()) == null) {
                return;
            }
            double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
            com.byazt.aw.l.hp("TTMediationSDK_ECMP", "banner混存 pangle 模板native 返回的 cpm价格：".concat(String.valueOf(dHp)));
            setCpm(dHp <= 0.0d ? 0.0d : dHp);
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            k kVar = this.f20329s;
            if (kVar != null) {
                return com.byazt.fr.l.l(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public View getAdView() {
            k kVar = this.f20329s;
            if (kVar != null) {
                return kVar.getExpressAdView();
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            k kVar = this.f20329s;
            if (kVar != null) {
                return com.byazt.fr.l.hp(kVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            k kVar = this.f20329s;
            return kVar != null ? kVar.getDislikeDialog(activity) : super.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            k kVar = this.f20329s;
            return kVar != null ? kVar.getDislikeInfo() : super.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            k kVar = this.f20329s;
            if (kVar == null || (mediaExtraInfo = kVar.getMediaExtraInfo()) == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "getMediaExtraInfo ".concat(String.valueOf(mediaExtraInfo)));
            setMediaExtraInfo(mediaExtraInfo);
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.rt.jx
        public String getReqId() {
            k kVar = this.f20329s;
            return kVar != null ? com.byazt.fr.l.jx(kVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.gu;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            this.gu = true;
            com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.gak.hp.l.2
                @Override // java.lang.Runnable
                public void run() {
                    k kVar = l.this.f20329s;
                    if (kVar != null) {
                        kVar.destroy();
                    }
                }
            });
        }

        @Override // com.byazt.rt.jx
        public void render() {
            k kVar = this.f20329s;
            if (kVar != null) {
                kVar.render();
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner express: setAdInteractionListener pluginTTAdInteractionListener = ".concat(String.valueOf(lVar)));
            k kVar = this.f20329s;
            if (kVar != null) {
                kVar.setAdInteractionListener(lVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, final com.byazt.cg.hp hpVar) {
            if (this.f20329s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner-native express:  activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.f20329s.setDislikeCallback(activity, new com.byazt.cg.hp(null) { // from class: com.byazt.gak.hp.l.4
                    @Override // com.byazt.cg.hp
                    public void hp() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp();
                        }
                    }

                    @Override // com.byazt.cg.hp
                    public void l() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.l();
                        }
                    }

                    @Override // com.byazt.cg.hp
                    public void hp(int i2, String str, boolean z2) {
                        if (l.this.f20327e) {
                            return;
                        }
                        l.this.f20327e = true;
                        com.byazt.xoi.hp.hp(hp.this.jx.l());
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp(i2, str, z2);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20329s != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner-native express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f20329s.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDownloadListener(com.byazt.gu.jx jxVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner express: setDownloadListener pluginTTAppDownloadListener = ".concat(String.valueOf(jxVar)));
            k kVar = this.f20329s;
            if (kVar != null) {
                kVar.setDownloadListener(jxVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner express: setVideoAdListener pluginExpressVideoAdListener = ".concat(String.valueOf(jxVar)));
            k kVar = this.f20329s;
            if (kVar != null) {
                kVar.setVideoAdListener(jxVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
            k kVar = this.f20329s;
            if (kVar != null) {
                kVar.uploadDislikeEvent(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.sdu.hp hp() {
            return (com.byazt.sdu.hp) this.eb;
        }
    }

    public hp(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    public String getAdNetWorkName() {
        return MediationConstant.ADN_PANGLE;
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        this.f20313l = lVar2;
        this.jx = lVar;
        if (lVar2 == null) {
            notifyLoadFail(new com.byazt.dq.hp("load ad fail adSlot is null"));
            return;
        }
        if (map != null) {
            Object obj = map.get("tt_ad_sub_type");
            if (obj == null || ((Integer) obj).intValue() != 4) {
                new jx().loadAd(context.getApplicationContext());
                return;
            }
            Object obj2 = map.get("tt_ad_origin_type");
            if (obj2 != null) {
                int iIntValue = ((Integer) obj2).intValue();
                if (iIntValue == 1) {
                    hp(context.getApplicationContext());
                } else if (iIntValue == 2) {
                    l(context.getApplicationContext());
                } else {
                    notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "originType is mismatch"));
                }
            }
        }
    }

    private void hp(final Context context) {
        hq pluginCSJLoader = getPluginCSJLoader(context);
        if (pluginCSJLoader == null) {
            return;
        }
        l.hp hpVarL = com.byazt.fr.l.hp(this.f20313l, this.jx.jl(), this.jx.u(), this.jx.xs(), this.jx.di(), false).hp(this.f20313l.ns()).l(this.f20313l.cx());
        float fZy = this.f20313l.zy();
        float fK = this.f20313l.k();
        boolean zHp = com.byazt.fr.l.hp(this.f20313l);
        com.byazt.aw.l.l(MediationConstant.TAG, "pangle banner native express autoHeight:" + zHp + " width:" + fZy + "  height:" + fK);
        if (fK <= 0.0f || zHp) {
            hpVarL.hp(fZy).l(0.0f);
        } else {
            hpVarL.hp(fZy).l(fK);
        }
        pluginCSJLoader.loadNativeExpressAd(hpVarL.hp(), new com.byazt.p000if.a(null) { // from class: com.byazt.gak.hp.1
            @Override // com.byazt.p000if.a
            public void hp(int i2, String str) {
                hp.this.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.a
            public void hp(List<k> list) {
                if (list == null || list.size() == 0) {
                    hp.this.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load list is null or empty"));
                    return;
                }
                for (k kVar : list) {
                    if (kVar != null) {
                        hp.this.new l(context, kVar).render();
                        return;
                    }
                }
            }
        });
    }

    private void l(final Context context) {
        hq pluginCSJLoader = getPluginCSJLoader(context);
        if (pluginCSJLoader == null) {
            return;
        }
        l.hp hpVarHp = com.byazt.fr.l.hp(this.f20313l, this.jx.jl(), this.jx.u(), this.jx.xs(), this.jx.di(), false);
        hpVarHp.hp(this.f20313l.ns()).l(this.f20313l.cx());
        pluginCSJLoader.loadFeedAd(hpVarHp.hp(), new com.byazt.p000if.jx(null) { // from class: com.byazt.gak.hp.2
            @Override // com.byazt.p000if.jx
            public void hp(int i2, String str) {
                hp.this.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.jx
            public void hp(List<com.byazt.qt.e> list) {
                if (list == null || list.isEmpty()) {
                    hp.this.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load list is null or empty"));
                    return;
                }
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(hp.this.new C0251hp(context, list.get(0)));
                hp.this.notifyLoadSuccess(arrayList);
            }
        });
    }
}
