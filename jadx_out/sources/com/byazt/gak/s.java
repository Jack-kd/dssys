package com.byazt.gak;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.byazt.jz.hq;
import com.byazt.qt.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp extends com.byazt.rt.jx {
        public com.byazt.qt.e gu;
        public int jl;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.pt.hp f20357s = new com.byazt.pt.hp(0 == true ? 1 : 0) { // from class: com.byazt.gak.s.hp.2
            @Override // com.byazt.pt.hp
            public void hp(View view, zy zyVar) {
                if (hp.this.hp != null) {
                    hp.this.hp.hp(view);
                }
            }

            @Override // com.byazt.pt.hp
            public void l(View view, zy zyVar) {
                if (hp.this.hp != null) {
                    hp.this.hp.hp(view);
                }
            }

            @Override // com.byazt.pt.hp
            public void hp(zy zyVar) {
                if (hp.this.hp != null) {
                    hp.this.hp.hp();
                }
            }
        };

        /* renamed from: q, reason: collision with root package name */
        public com.byazt.nq.hp f20356q = new com.byazt.nq.hp(0 == true ? 1 : 0) { // from class: com.byazt.gak.s.hp.3
            @Override // com.byazt.nq.hp
            public void hp(com.byazt.qt.e eVar) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.hp();
                }
            }

            @Override // com.byazt.nq.hp
            public void j(com.byazt.qt.e eVar) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.j();
                }
            }

            @Override // com.byazt.nq.hp
            public void jx(com.byazt.qt.e eVar) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.jx();
                }
            }

            @Override // com.byazt.nq.hp
            public void l(com.byazt.qt.e eVar) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.l();
                }
            }

            @Override // com.byazt.nq.hp
            public void w(com.byazt.qt.e eVar) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.w();
                }
            }

            @Override // com.byazt.nq.hp
            public void hp(int i2, int i3) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.hp(new com.byazt.dq.hp(i2, "Android MediaPlay Error Code :".concat(String.valueOf(i3))));
                }
            }

            @Override // com.byazt.nq.hp
            public void hp(long j2, long j3) {
                if (hp.this.f25343l != null) {
                    hp.this.f25343l.hp(j2, j3);
                }
            }
        };

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.gu.jx f20355e = new com.byazt.gu.jx(0 == true ? 1 : 0) { // from class: com.byazt.gak.s.hp.4
            @Override // com.byazt.gu.jx
            public void hp() {
                hp.this.jl = 0;
                if (hp.this.jx != null) {
                    hp.this.jx.hp();
                }
            }

            @Override // com.byazt.gu.jx
            public void jx(long j2, long j3, String str, String str2) {
                hp.this.jl = 4;
                if (hp.this.jx != null) {
                    hp.this.jx.l(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gu.jx
            public void l(long j2, long j3, String str, String str2) {
                hp.this.jl = 3;
                if (hp.this.jx != null) {
                    hp.this.jx.hp(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gu.jx
            public void hp(long j2, long j3, String str, String str2) {
                hp.this.jl = 2;
                if (hp.this.jx != null) {
                    hp.this.jx.hp(j2, j3, (int) (j2 != 0 ? j3 / j2 : 0L), -1, str, str2);
                }
            }

            @Override // com.byazt.gu.jx
            public void hp(long j2, String str, String str2) {
                hp.this.jl = 5;
                if (hp.this.jx != null) {
                    hp.this.jx.hp(j2, str, str2);
                }
            }

            @Override // com.byazt.gu.jx
            public void hp(String str, String str2) {
                hp.this.jl = 6;
                if (hp.this.jx != null) {
                    hp.this.jx.hp(str, str2);
                }
            }
        };

        /* JADX WARN: Multi-variable type inference failed */
        public hp(com.byazt.qt.e eVar, boolean z2, boolean z3) {
            Map<String, Object> mediaExtraInfo;
            List<com.byazt.qt.jl> imageList;
            this.gu = eVar;
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
                if (com.byazt.fr.l.hp("5.1.0.0")) {
                    setPermissionsUrl(complianceInfo.getPermissionUrl());
                }
                if (com.byazt.fr.l.hp("5.4.0.3")) {
                    setFunctionDescUrl(complianceInfo.getFunctionDescUrl());
                }
                if (com.byazt.fr.l.hp("6.8.1.6")) {
                    setRegUrl(complianceInfo.getRegUrl());
                }
                setRegNumber(complianceInfo.getRegNumber());
            }
            setSupportRender(z3 ? 1 : 0);
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
                List<com.byazt.qt.jl> imageList2 = eVar.getImageList();
                if (imageList2 != null && !imageList2.isEmpty() && imageList2.get(0) != null) {
                    com.byazt.qt.jl jlVar = imageList2.get(0);
                    setImageUrl(jlVar.getImageUrl());
                    setImageHeight(jlVar.getHeight());
                    setImageWidth(jlVar.getWidth());
                }
            } else if (eVar.getImageMode() == 4) {
                List<com.byazt.qt.jl> imageList3 = eVar.getImageList();
                if (imageList3 != null && imageList3.size() > 0) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<com.byazt.qt.jl> it = imageList3.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().getImageUrl());
                    }
                    setImages(arrayList);
                }
            } else {
                com.byazt.qt.jl videoCoverImage = eVar.getVideoCoverImage();
                if ((videoCoverImage == null || TextUtils.isEmpty(videoCoverImage.getImageUrl())) && (imageList = eVar.getImageList()) != null && !imageList.isEmpty() && imageList.get(0) != null) {
                    videoCoverImage = imageList.get(0);
                }
                if (videoCoverImage != null) {
                    setImageUrl(videoCoverImage.getImageUrl());
                    setImageHeight(videoCoverImage.getHeight());
                    setImageWidth(videoCoverImage.getWidth());
                }
            }
            if (z2 && (mediaExtraInfo = eVar.getMediaExtraInfo()) != null) {
                double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                com.byazt.aw.l.hp("TTMediationSDK_ECMP", "pangle native 返回的 cpm价格：".concat(String.valueOf(dHp)));
                setCpm(dHp <= 0.0d ? 0.0d : dHp);
            }
            this.gu.setVideoAdListener(this.f20356q);
            this.gu.setDownloadListener(this.f20355e);
            new HashMap();
            putExtraMsg("ad_id", Long.valueOf(getAdId()));
            putExtraMsg("c_id", Long.valueOf(getCreativeId()));
            putExtraMsg("duration", Double.valueOf(this.gu.getVideoDuration()));
            Map<String, Object> mediaExtraInfo2 = this.gu.getMediaExtraInfo();
            if (mediaExtraInfo2 != null) {
                putExtraMsg(mediaExtraInfo2);
                putExtraMsg("log_extra", mediaExtraInfo2.toString());
            }
        }

        @Override // com.byazt.rt.jx
        public void cancelDownload() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar == null || eVar.getDownloadStatusController() == null) {
                return;
            }
            this.gu.getDownloadStatusController().cancelDownload();
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                return com.byazt.fr.l.l(eVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public Bitmap getAdLogo() {
            com.byazt.qt.e eVar = this.gu;
            return eVar != null ? eVar.getAdLogo() : super.getAdLogo();
        }

        @Override // com.byazt.rt.jx
        public int getAppCommentNum() {
            com.byazt.qt.e eVar = this.gu;
            return eVar != null ? eVar.getAppCommentNum() : super.getAppCommentNum();
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                return com.byazt.fr.l.hp(eVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            if (this.gu == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle native : getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.gu.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            if (this.gu == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle native : getDislikeInfo");
            return this.gu.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public int getDownloadStatus() {
            return this.jl;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qjq.w getGMNativeCustomVideoReporter() {
            if (isUseCustomVideo()) {
                return new com.byazt.qjq.w() { // from class: com.byazt.gak.s.hp.5
                    @Override // com.byazt.qjq.w
                    public void hp(long j2) {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoPause(j2);
                    }

                    @Override // com.byazt.qjq.w
                    public void jx(long j2) {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoBreak(j2);
                    }

                    @Override // com.byazt.qjq.w
                    public void l(long j2) {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoContinue(j2);
                    }

                    @Override // com.byazt.qjq.w
                    public void hp() {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoFinish();
                    }

                    @Override // com.byazt.qjq.w
                    public void l() {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoAutoStart();
                    }

                    @Override // com.byazt.qjq.w
                    public void hp(int i2, int i3) {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoStartError(i2, i3);
                    }

                    @Override // com.byazt.qjq.w
                    public void hp(long j2, int i2, int i3) {
                        if (hp.this.gu == null || hp.this.gu.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.gu.getCustomVideo().reportVideoError(j2, i2, i3);
                    }
                };
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.qt.e eVar = this.gu;
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
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                return com.byazt.fr.l.jx(eVar.getMediaExtraInfo());
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.jl getVideoCoverImage() {
            com.byazt.qt.e eVar = this.gu;
            return eVar != null ? eVar.getVideoCoverImage() : super.getVideoCoverImage();
        }

        @Override // com.byazt.rt.jx
        public double getVideoDuration() {
            com.byazt.qt.e eVar = this.gu;
            return eVar != null ? eVar.getVideoDuration() : super.getVideoDuration();
        }

        @Override // com.byazt.rt.jx
        public int getVideoHeight() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                return eVar.getAdViewHeight();
            }
            return 0;
        }

        @Override // com.byazt.rt.jx
        public String getVideoUrl() {
            com.byazt.qt.e eVar;
            if (!isUseCustomVideo() || (eVar = this.gu) == null || eVar.getCustomVideo() == null) {
                return null;
            }
            return this.gu.getCustomVideo().getVideoUrl();
        }

        @Override // com.byazt.rt.jx
        public View getVideoView() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                return eVar.getAdView();
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public int getVideoWidth() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                return eVar.getAdViewWidth();
            }
            return 0;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.gu == null;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDislike() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                eVar.setVideoAdListener(null);
                this.gu.destroy();
                this.gu = null;
            }
        }

        @Override // com.byazt.rt.jx
        public void pauseAppDownload() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar == null || eVar.getDownloadStatusController() == null || this.jl != 2) {
                return;
            }
            this.gu.getDownloadStatusController().changeDownloadStatus();
        }

        @Override // com.byazt.rt.jx
        public void registerView(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            super.registerView(viewGroup, list, list2, list3, list4, view);
            hp(viewGroup, list, list2, list3, list4, view);
        }

        @Override // com.byazt.rt.jx
        public void registerViewForInteraction(Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.qjq.e eVar, List<View> list4) {
            FrameLayout frameLayout;
            com.byazt.qt.e eVar2;
            View adView;
            com.byazt.qt.e eVar3;
            View viewFindViewById;
            super.registerViewForInteraction(activity, viewGroup, list, list2, list3, eVar, list4);
            hp(viewGroup, null, list, list2, list3, null);
            com.byazt.qt.e eVar4 = this.gu;
            if (eVar4 != null && eVar4.getAdLogo() != null && eVar != null && (viewFindViewById = viewGroup.findViewById(eVar.jl)) != null) {
                viewFindViewById.setVisibility(0);
                if (viewFindViewById instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
                    viewGroup2.removeAllViews();
                    ImageView imageView = new ImageView(viewGroup.getContext());
                    imageView.setImageBitmap(this.gu.getAdLogo());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    layoutParams.width = com.byazt.aw.a.l(viewGroup.getContext(), 38.0f);
                    layoutParams.height = com.byazt.aw.a.l(viewGroup.getContext(), 38.0f);
                    viewFindViewById.setLayoutParams(layoutParams);
                    viewGroup2.addView(imageView, -1, -1);
                } else if (viewFindViewById instanceof ImageView) {
                    ((ImageView) viewFindViewById).setImageBitmap(this.gu.getAdLogo());
                }
            }
            if ((isUseCustomVideo() && (eVar3 = this.gu) != null && eVar3.getCustomVideo() != null && !TextUtils.isEmpty(this.gu.getCustomVideo().getVideoUrl())) || eVar == null || (frameLayout = (FrameLayout) viewGroup.findViewById(eVar.eb)) == null || (eVar2 = this.gu) == null || (adView = eVar2.getAdView()) == null) {
                return;
            }
            removeSelfFromParent(adView);
            frameLayout.removeAllViews();
            frameLayout.addView(adView, -1, -1);
        }

        @Override // com.byazt.rt.jx
        public void resumeAppDownload() {
            com.byazt.qt.e eVar = this.gu;
            if (eVar == null || eVar.getDownloadStatusController() == null || this.jl != 3) {
                return;
            }
            this.gu.getDownloadStatusController().changeDownloadStatus();
        }

        @Override // com.byazt.rt.jx
        public void setActivityForDownloadApp(Activity activity) {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                eVar.setActivityForDownloadApp(activity);
            }
        }

        @Override // com.byazt.rt.jx
        public void setAdInteractionListener(com.byazt.gu.l lVar) {
            this.gu.setAdInteractionListener(lVar);
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
            if (this.gu != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle native:  activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.gu.setDislikeCallback(activity, hpVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.gu != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle native:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.gu.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            if (this.gu != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle native : uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.gu.uploadDislikeEvent(str);
            }
        }

        private void hp(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            com.byazt.qt.e eVar = this.gu;
            if (eVar != null) {
                eVar.setDownloadListener(this.f20355e);
                try {
                    this.gu.setVideoRewardListener(new com.byazt.nq.l(null) { // from class: com.byazt.gak.s.hp.1
                        @Override // com.byazt.nq.l
                        public void hp(int i2) {
                            if (hp.this.f25354w != null) {
                                hp.this.f25354w.hp(i2);
                            }
                        }
                    });
                } catch (Throwable unused) {
                }
                this.gu.registerViewForInteraction(viewGroup, list, list2, list3, list4, view, this.f20357s);
            }
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.gu == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle native : getDislikeDialog = ".concat(String.valueOf(dialog)));
            return this.gu.getDislikeDialog(dialog, numArr);
        }
    }

    public void hp(final boolean z2, hq hqVar, final com.byazt.jt.l lVar, final com.byazt.vne.l lVar2) {
        if (hqVar == null || lVar2 == null || lVar == null) {
            return;
        }
        hqVar.loadFeedAd(lVar, new com.byazt.p000if.jx(null) { // from class: com.byazt.gak.s.1
            @Override // com.byazt.p000if.jx
            public void hp(int i2, String str) {
                lVar2.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.jx
            public void hp(List<com.byazt.qt.e> list) {
                com.byazt.aw.l.l(MediationConstant.TAG, "PangleNativeAd_onFeedAdLoad_SupportRenderControl:" + lVar.gu());
                if (list == null || list.isEmpty()) {
                    lVar2.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                if (lVar.gu()) {
                    s.this.hp(list, lVar2, z2);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<com.byazt.qt.e> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new hp(it.next(), z2, false));
                }
                lVar2.notifyLoadSuccess(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(List<com.byazt.qt.e> list, final com.byazt.vne.l lVar, final boolean z2) {
        final int size = list.size();
        com.byazt.aw.l.l(MediationConstant.TAG, "PangleNativeAd_nativeSupportRenderControl_adNum:".concat(String.valueOf(size)));
        final AtomicInteger atomicInteger = new AtomicInteger();
        final ArrayList arrayList = new ArrayList();
        for (final com.byazt.qt.e eVar : list) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            eVar.setExpressRenderListener(new com.byazt.pt.jx(null) { // from class: com.byazt.gak.s.2
                @Override // com.byazt.pt.jx
                public void hp(View view, float f2, float f3, boolean z3) {
                    com.byazt.aw.l.l(MediationConstant.TAG, "PangleNativeAd_nativeSupportRenderControl_onRenderSuccess:" + z3 + " duration:" + (System.currentTimeMillis() - jCurrentTimeMillis));
                    arrayList.add(new hp(eVar, z2, z3));
                    if (atomicInteger.incrementAndGet() != size || lVar == null) {
                        return;
                    }
                    com.byazt.aw.l.l(MediationConstant.TAG, "PangleNativeAd_nativeSupportRenderControl_notifyAdSuccess!!!!!");
                    lVar.notifyLoadSuccess(arrayList);
                }
            });
            eVar.render();
        }
    }
}
