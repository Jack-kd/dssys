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

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 30})
/* loaded from: classes2.dex */
public class jx {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 219})
    public static class hp extends com.byazt.rt.jx {

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.qt.q f20341e;
        public int gu;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.pt.hp f20343s = new com.byazt.pt.hp(0 == true ? 1 : 0) { // from class: com.byazt.gak.jx.hp.3
            @Override // com.byazt.pt.hp
            public void hp(View view, zy zyVar) {
                if (hp.this.f25333a != null) {
                    hp.this.f25333a.hp(view);
                }
            }

            @Override // com.byazt.pt.hp
            public void l(View view, zy zyVar) {
                if (hp.this.f25333a != null) {
                    hp.this.f25333a.hp(view);
                }
            }

            @Override // com.byazt.pt.hp
            public void hp(zy zyVar) {
                if (hp.this.f25333a != null) {
                    hp.this.f25333a.hp();
                }
            }
        };

        /* renamed from: q, reason: collision with root package name */
        public com.byazt.nq.hp f20342q = new com.byazt.nq.hp(0 == true ? 1 : 0) { // from class: com.byazt.gak.jx.hp.4
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

        /* JADX WARN: Multi-variable type inference failed */
        public hp(com.byazt.qt.q qVar, boolean z2) {
            Map<String, Object> mediaExtraInfo;
            this.f20341e = qVar;
            com.byazt.qt.jx complianceInfo = qVar.getComplianceInfo();
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
            setTitle(qVar.getTitle());
            setAdDescription(qVar.getDescription());
            setActionText(qVar.getButtonText());
            setIconUrl(qVar.getIcon() != null ? qVar.getIcon().getImageUrl() : null);
            setImageMode(qVar.getImageMode());
            setInteractionType(qVar.getInteractionType());
            setSource(qVar.getSource());
            setRating(qVar.getAppScore());
            setIsAppDownload(qVar.getInteractionType() == 4);
            setExpressAd(false);
            if (qVar.getImageMode() == 16 || qVar.getImageMode() == 3 || qVar.getImageMode() == 2 || qVar.getImageMode() == 131) {
                if (qVar.getImageList() != null && !qVar.getImageList().isEmpty() && qVar.getImageList().get(0) != null) {
                    com.byazt.qt.jl jlVar = qVar.getImageList().get(0);
                    setImageUrl(jlVar.getImageUrl());
                    setImageHeight(jlVar.getHeight());
                    setImageWidth(jlVar.getWidth());
                }
            } else if (qVar.getImageMode() != 4) {
                com.byazt.qt.jl videoCoverImage = qVar.getVideoCoverImage();
                if (videoCoverImage == null && qVar.getImageList() != null && !qVar.getImageList().isEmpty() && qVar.getImageList().get(0) != null) {
                    videoCoverImage = qVar.getImageList().get(0);
                }
                if (videoCoverImage != null) {
                    setImageUrl(videoCoverImage.getImageUrl());
                    setImageHeight(videoCoverImage.getHeight());
                    setImageWidth(videoCoverImage.getWidth());
                }
            } else if (qVar.getImageList() != null && qVar.getImageList().size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.byazt.qt.jl> it = qVar.getImageList().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getImageUrl());
                }
                setImages(arrayList);
            }
            if (z2 && (mediaExtraInfo = qVar.getMediaExtraInfo()) != null) {
                double dHp = com.byazt.fr.l.hp(mediaExtraInfo.get("price"));
                com.byazt.aw.l.hp("TTMediationSDK_ECMP", "pangle draw 返回的 cpm价格：".concat(String.valueOf(dHp)));
                setCpm(dHp <= 0.0d ? 0.0d : dHp);
            }
            this.f20341e.setVideoAdListener(this.f20342q);
            putExtraMsg("ad_id", Long.valueOf(getAdId()));
            putExtraMsg("c_id", Long.valueOf(getCreativeId()));
            putExtraMsg("duration", Double.valueOf(this.f20341e.getVideoDuration()));
            Map<String, Object> mediaExtraInfo2 = this.f20341e.getMediaExtraInfo();
            if (mediaExtraInfo2 != null) {
                putExtraMsg(mediaExtraInfo2);
                putExtraMsg("log_extra", mediaExtraInfo2.toString());
            }
        }

        @Override // com.byazt.rt.jx
        public void cancelDownload() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar == null || qVar.getDownloadStatusController() == null) {
                return;
            }
            this.f20341e.getDownloadStatusController().cancelDownload();
        }

        @Override // com.byazt.rt.jx
        public long getAdId() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                return com.byazt.fr.l.l(qVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public Bitmap getAdLogo() {
            if (this.f20341e == null) {
                return super.getAdLogo();
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getAdLogo = " + this.f20341e.getAdLogo());
            return this.f20341e.getAdLogo();
        }

        @Override // com.byazt.rt.jx
        public int getAppCommentNum() {
            if (this.f20341e == null) {
                return super.getAppCommentNum();
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getAppCommentNum = " + this.f20341e.getAppCommentNum());
            return this.f20341e.getAppCommentNum();
        }

        @Override // com.byazt.rt.jx
        public long getCreativeId() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                return com.byazt.fr.l.hp(qVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Activity activity) {
            if (this.f20341e == null) {
                return super.getDislikeDialog(activity);
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.f20341e.getDislikeDialog(activity);
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.j getDislikeInfo() {
            if (this.f20341e == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getDislikeInfo");
            return this.f20341e.getDislikeInfo();
        }

        @Override // com.byazt.rt.jx
        public int getDownloadStatus() {
            return this.gu;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.w getDownloadStatusController() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar == null) {
                return super.getDownloadStatusController();
            }
            com.byazt.qt.w downloadStatusController = qVar.getDownloadStatusController();
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getDownloadStatusController = ".concat(String.valueOf(downloadStatusController)));
            return downloadStatusController;
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qjq.w getGMNativeCustomVideoReporter() {
            if (isUseCustomVideo()) {
                return new com.byazt.qjq.w() { // from class: com.byazt.gak.jx.hp.2
                    @Override // com.byazt.qjq.w
                    public void hp(long j2) {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoPause(j2);
                    }

                    @Override // com.byazt.qjq.w
                    public void jx(long j2) {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoBreak(j2);
                    }

                    @Override // com.byazt.qjq.w
                    public void l(long j2) {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoContinue(j2);
                    }

                    @Override // com.byazt.qjq.w
                    public void hp() {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoFinish();
                    }

                    @Override // com.byazt.qjq.w
                    public void l() {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoAutoStart();
                    }

                    @Override // com.byazt.qjq.w
                    public void hp(int i2, int i3) {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoStartError(i2, i3);
                    }

                    @Override // com.byazt.qjq.w
                    public void hp(long j2, int i2, int i3) {
                        if (hp.this.f20341e == null || hp.this.f20341e.getCustomVideo() == null) {
                            return;
                        }
                        hp.this.f20341e.getCustomVideo().reportVideoError(j2, i2, i3);
                    }
                };
            }
            return null;
        }

        @Override // com.byazt.rt.jx
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar == null || (mediaExtraInfo = qVar.getMediaExtraInfo()) == null) {
                return null;
            }
            setMediaExtraInfo(mediaExtraInfo);
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.rt.jx
        public String getReqId() {
            com.byazt.qt.q qVar = this.f20341e;
            return qVar != null ? com.byazt.fr.l.jx(qVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.jl getVideoCoverImage() {
            if (this.f20341e == null) {
                return super.getVideoCoverImage();
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getVideoCoverImage = " + this.f20341e.getVideoCoverImage());
            return this.f20341e.getVideoCoverImage();
        }

        @Override // com.byazt.rt.jx
        public double getVideoDuration() {
            if (this.f20341e == null) {
                return super.getVideoDuration();
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getVideoDuration = " + this.f20341e.getVideoDuration());
            return this.f20341e.getVideoDuration();
        }

        @Override // com.byazt.rt.jx
        public int getVideoHeight() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                return qVar.getAdViewHeight();
            }
            return 0;
        }

        @Override // com.byazt.rt.jx
        public String getVideoUrl() {
            com.byazt.qt.q qVar;
            if (!isUseCustomVideo() || (qVar = this.f20341e) == null || qVar.getCustomVideo() == null) {
                return null;
            }
            return this.f20341e.getCustomVideo().getVideoUrl();
        }

        @Override // com.byazt.rt.jx
        public View getVideoView() {
            if (this.f20341e == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getVideoView = " + this.f20341e.getAdView());
            return this.f20341e.getAdView();
        }

        @Override // com.byazt.rt.jx
        public int getVideoWidth() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                return qVar.getAdViewWidth();
            }
            return 0;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDestroyed() {
            return this.f20341e == null;
        }

        @Override // com.byazt.rt.jx
        public boolean hasDislike() {
            return true;
        }

        @Override // com.byazt.rt.jx
        public void onDestroy() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                qVar.setVideoAdListener(null);
                this.f20341e = null;
            }
        }

        @Override // com.byazt.rt.jx
        public void pauseAppDownload() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar == null || qVar.getDownloadStatusController() == null || this.gu != 2) {
                return;
            }
            this.f20341e.getDownloadStatusController().changeDownloadStatus();
        }

        @Override // com.byazt.rt.jx
        public void registerView(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            super.registerView(viewGroup, list, list2, list3, list4, view);
            hp(viewGroup, list, list2, list3, list4, view);
        }

        @Override // com.byazt.rt.jx
        public void registerViewForInteraction(Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.qjq.e eVar, List<View> list4) {
            FrameLayout frameLayout;
            com.byazt.qt.q qVar;
            View adView;
            com.byazt.qt.q qVar2;
            View viewFindViewById;
            super.registerViewForInteraction(activity, viewGroup, list, list2, list3, eVar, list4);
            hp(viewGroup, null, list, list2, list3, null);
            com.byazt.qt.q qVar3 = this.f20341e;
            if (qVar3 != null && qVar3.getAdLogo() != null && eVar != null && (viewFindViewById = viewGroup.findViewById(eVar.jl)) != null) {
                viewFindViewById.setVisibility(0);
                if (viewFindViewById instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
                    viewGroup2.removeAllViews();
                    ImageView imageView = new ImageView(viewGroup.getContext());
                    imageView.setImageBitmap(this.f20341e.getAdLogo());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    layoutParams.width = com.byazt.aw.a.l(viewGroup.getContext(), 38.0f);
                    layoutParams.height = com.byazt.aw.a.l(viewGroup.getContext(), 38.0f);
                    viewFindViewById.setLayoutParams(layoutParams);
                    viewGroup2.addView(imageView, -1, -1);
                } else if (viewFindViewById instanceof ImageView) {
                    ((ImageView) viewFindViewById).setImageBitmap(this.f20341e.getAdLogo());
                }
            }
            if ((isUseCustomVideo() && (qVar2 = this.f20341e) != null && qVar2.getCustomVideo() != null && !TextUtils.isEmpty(this.f20341e.getCustomVideo().getVideoUrl())) || eVar == null || (frameLayout = (FrameLayout) viewGroup.findViewById(eVar.eb)) == null || (qVar = this.f20341e) == null || (adView = qVar.getAdView()) == null) {
                return;
            }
            removeSelfFromParent(adView);
            frameLayout.removeAllViews();
            frameLayout.addView(adView, -1, -1);
        }

        @Override // com.byazt.rt.jx
        public void resumeAppDownload() {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar == null || qVar.getDownloadStatusController() == null || this.gu != 3) {
                return;
            }
            this.f20341e.getDownloadStatusController().changeDownloadStatus();
        }

        @Override // com.byazt.rt.jx
        public void setActivityForDownloadApp(Activity activity) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : setActivityForDownloadApp  activity = ".concat(String.valueOf(activity)));
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                qVar.setActivityForDownloadApp(activity);
            }
        }

        @Override // com.byazt.rt.jx
        public void setCanInterruptVideoPlay(boolean z2) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : setCanInterruptVideoPlay b = ".concat(String.valueOf(z2)));
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                qVar.setCanInterruptVideoPlay(z2);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
            if (this.f20341e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw :  activity = " + activity + " pluginDislikeInteractionCallback:" + hpVar);
                this.f20341e.setDislikeCallback(activity, hpVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20341e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw :  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f20341e.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDownloadListener(com.byazt.gu.jx jxVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : setDownloadListener pluginTTAppDownloadListener = ".concat(String.valueOf(jxVar)));
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                qVar.setDownloadListener(jxVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setDrawVideoListener(com.byazt.dc.hp hpVar) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : setDrawVideoListener pluginDrawVideoListener = ".concat(String.valueOf(hpVar)));
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                qVar.setDrawVideoListener(hpVar);
            }
        }

        @Override // com.byazt.rt.jx
        public void setPauseIcon(Bitmap bitmap, int i2) {
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : setPauseIcon bitmap = " + bitmap + " i = " + i2);
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                qVar.setPauseIcon(bitmap, i2);
            }
        }

        @Override // com.byazt.rt.jx
        public void uploadDislikeEvent(String str) {
            if (this.f20341e != null) {
                com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.f20341e.uploadDislikeEvent(str);
            }
        }

        private void hp(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            com.byazt.qt.q qVar = this.f20341e;
            if (qVar != null) {
                try {
                    qVar.setVideoRewardListener(new com.byazt.nq.l(null) { // from class: com.byazt.gak.jx.hp.1
                        @Override // com.byazt.nq.l
                        public void hp(int i2) {
                            if (hp.this.f25354w != null) {
                                hp.this.f25354w.hp(i2);
                            }
                        }
                    });
                } catch (Throwable unused) {
                }
                this.f20341e.registerViewForInteraction(viewGroup, list, list2, list3, list4, view, this.f20343s);
            }
        }

        @Override // com.byazt.rt.jx
        public com.byazt.qt.eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f20341e == null) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "pangle draw : getDislikeDialog = ".concat(String.valueOf(dialog)));
            return this.f20341e.getDislikeDialog(dialog, numArr);
        }
    }

    public void hp(final boolean z2, hq hqVar, com.byazt.jt.l lVar, final com.byazt.vne.l lVar2) {
        if (hqVar == null || lVar2 == null) {
            return;
        }
        hqVar.loadDrawFeedAd(lVar, new com.byazt.p000if.l(null) { // from class: com.byazt.gak.jx.1
            @Override // com.byazt.p000if.l
            public void hp(int i2, String str) {
                lVar2.notifyLoadFail(new com.byazt.dq.hp(i2, str));
            }

            @Override // com.byazt.p000if.l
            public void hp(List<com.byazt.qt.q> list) {
                if (list == null || list.isEmpty()) {
                    lVar2.notifyLoadFail(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<com.byazt.qt.q> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new hp(it.next(), z2));
                }
                lVar2.notifyLoadSuccess(arrayList);
            }
        });
    }
}
