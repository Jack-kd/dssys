package com.byazt.wr;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.ju.e;
import com.byazt.ju.zy;
import com.byazt.lsx.a;
import com.byazt.lyn.gu;
import com.byazt.qjq.s;
import com.byazt.qt.jl;
import com.byazt.qt.q;
import com.byazt.qt.w;
import com.byazt.toc.eb;
import com.byazt.zg.v;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 722, 28})
/* loaded from: classes3.dex */
public class hp extends q {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.pt.hp f27097a;
    public com.byazt.nq.hp eb;
    public eb hp;

    /* renamed from: j, reason: collision with root package name */
    public View f27098j;
    public com.byazt.iqm.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.rt.jx f27099l;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.gu.l f27100s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.pt.jx f27101w;

    public hp(eb ebVar, com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar) {
        this.hp = ebVar;
        this.f27099l = jxVar;
        this.jx = lVar;
        hp();
    }

    @Override // com.byazt.qt.zy
    public void destroy() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            try {
                jxVar.onDestroy();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.qt.zy
    public Bitmap getAdLogo() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getAdLogo();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public View getAdView() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar == null) {
            return null;
        }
        if (!jxVar.isExpressAd()) {
            return this.f27099l.getVideoView();
        }
        a.hp(this.jx);
        if (this.f27099l.getCallBack() != null) {
            this.f27099l.getCallBack().hp();
        }
        com.byazt.rt.jx jxVar2 = this.f27099l;
        a.hp(jxVar2, this.jx, jxVar2.isShowRepeatOnce(), 0);
        View adView = this.f27099l.getAdView();
        this.f27098j = adView;
        return adView;
    }

    @Override // com.byazt.qt.e
    public int getAdViewHeight() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            if (jxVar.isExpressAd()) {
                View view = this.f27098j;
                if (view != null) {
                    return view.getHeight();
                }
                return 0;
            }
            com.byazt.rt.jx jxVar2 = this.f27099l;
            if (jxVar2 != null) {
                return jxVar2.getVideoHeight();
            }
        }
        return 0;
    }

    @Override // com.byazt.qt.e
    public int getAdViewWidth() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            if (jxVar.isExpressAd()) {
                View view = this.f27098j;
                if (view != null) {
                    return view.getWidth();
                }
                return 0;
            }
            com.byazt.rt.jx jxVar2 = this.f27099l;
            if (jxVar2 != null) {
                return jxVar2.getVideoWidth();
            }
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppCommentNum() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getAppCommentNum();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppScore() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return (int) jxVar.getStarRating();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppSize() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getAppSize();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public String getButtonText() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getActionText();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.jx getComplianceInfo() {
        return new com.byazt.bj.hp(this.f27099l);
    }

    @Override // com.byazt.qt.e
    public com.byazt.za.hp getCustomVideo() {
        return new com.byazt.bj.l(this.f27099l);
    }

    @Override // com.byazt.qt.zy
    public String getDescription() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getAdDescription();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.eb getDislikeDialog(Activity activity) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(activity);
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.j getDislikeInfo() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getDislikeInfo();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public w getDownloadStatusController() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getDownloadStatusController();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public jl getIcon() {
        com.byazt.rt.jx jxVar = this.f27099l;
        return new zy(jxVar != null ? jxVar.getIconUrl() : "");
    }

    @Override // com.byazt.qt.zy
    public List<jl> getImageList() {
        ArrayList arrayList = new ArrayList();
        com.byazt.rt.jx jxVar = this.f27099l;
        List<String> images = jxVar != null ? jxVar.getImages() : null;
        com.byazt.rt.jx jxVar2 = this.f27099l;
        String imageUrl = jxVar2 != null ? jxVar2.getImageUrl() : null;
        if (images != null) {
            if (images.size() != 0) {
                Iterator<String> it = images.iterator();
                while (it.hasNext()) {
                    arrayList.add(new zy(it.next()));
                }
            } else if (!TextUtils.isEmpty(imageUrl)) {
                com.byazt.rt.jx jxVar3 = this.f27099l;
                int imageWidth = jxVar3 != null ? jxVar3.getImageWidth() : 0;
                com.byazt.rt.jx jxVar4 = this.f27099l;
                arrayList.add(new zy(imageUrl, imageWidth, jxVar4 != null ? jxVar4.getImageHeight() : 0));
            }
        }
        return arrayList;
    }

    @Override // com.byazt.qt.zy
    public int getImageMode() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getImageMode();
        }
        return -1;
    }

    @Override // com.byazt.qt.zy
    public int getInteractionType() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getInteractionType();
        }
        return -1;
    }

    @Override // com.byazt.qt.zy
    public String getLifecycleId() {
        return null;
    }

    @Override // com.byazt.qt.zy
    public Map<String, Object> getMediaExtraInfo() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar == null) {
            return null;
        }
        Map<String, Object> mediaExtraInfo = jxVar.getMediaExtraInfo();
        if (mediaExtraInfo == null) {
            com.byazt.iqm.l lVar = this.jx;
            mediaExtraInfo = com.byazt.toc.l.jx(lVar != null ? lVar.sz() : "");
        }
        if (this.f27099l.isHasShowCallback() && v.hp()) {
            String strHp = v.hp(com.byazt.zg.jl.hp(this.jx, this.f27099l, true));
            if (!TextUtils.isEmpty(strHp)) {
                mediaExtraInfo.put("get_show_ecpm_info", strHp);
            }
        }
        return com.byazt.lz.l.hp(mediaExtraInfo, this.f27099l.getExtraMsg());
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qa.w getMediationManager() {
        return new e(new l(this.hp, this.f27099l, this.jx));
    }

    @Override // com.byazt.qt.zy
    public String getSource() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getSource();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public String getTitle() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getAdTitle();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public jl getVideoCoverImage() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getVideoCoverImage();
        }
        return null;
    }

    @Override // com.byazt.qt.e
    public double getVideoDuration() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getVideoDuration();
        }
        return 0.0d;
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, View view, com.byazt.pt.hp hpVar) throws JSONException {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(view);
        registerViewForInteraction(viewGroup, (List<View>) null, arrayList, (List<View>) null, (List<View>) null, (View) null, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void render() {
        jx();
        if (this.f27099l != null) {
            j();
            this.f27099l.render();
            hp(this.f27099l);
        }
    }

    @Override // com.byazt.qt.zy
    public void setActivityForDownloadApp(Activity activity) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setActivityForDownloadApp(activity);
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        this.f27100s = lVar;
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setAdInteractionListener(lVar);
        }
    }

    @Override // com.byazt.qt.q
    public void setCanInterruptVideoPlay(boolean z2) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setCanInterruptVideoPlay(z2);
        }
    }

    @Override // com.byazt.qt.zy
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar == null || activity == null) {
            return;
        }
        jxVar.setDislikeCallback(activity, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setDislikeDialog(dialog, numArr);
        }
    }

    @Override // com.byazt.qt.zy
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        com.byazt.rt.jx jxVar2 = this.f27099l;
        if (jxVar2 != null) {
            jxVar2.setDownloadListener(jxVar);
        }
    }

    @Override // com.byazt.qt.q
    public void setDrawVideoListener(com.byazt.dc.hp hpVar) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setDrawVideoListener(hpVar);
        }
    }

    @Override // com.byazt.qt.zy
    public void setEasyPlayWidgetListener(com.byazt.pt.l lVar) {
    }

    @Override // com.byazt.qt.zy
    public void setExpressRenderListener(com.byazt.pt.jx jxVar) {
        this.f27101w = jxVar;
    }

    @Override // com.byazt.qt.q
    public void setPauseIcon(Bitmap bitmap, int i2) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setPauseIcon(bitmap, i2);
        }
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.e
    public void setVideoAdListener(com.byazt.nq.hp hpVar) {
        this.eb = hpVar;
    }

    @Override // com.byazt.qt.e
    public void setVideoRewardListener(com.byazt.nq.l lVar) {
    }

    @Override // com.byazt.qt.zy
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.zy
    public void uploadDislikeEvent(String str) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.uploadDislikeEvent(str);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void j() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar == null) {
            return;
        }
        if (jxVar.isExpressAd()) {
            this.f27099l.setGMDrawAdListener(new com.byazt.gpb.j() { // from class: com.byazt.wr.hp.4
                @Override // com.byazt.gpb.j
                public void hp(View view, String str, int i2) {
                    if (hp.this.f27101w instanceof com.byazt.tl.w) {
                        ((com.byazt.tl.w) hp.this.f27101w).hp(view, str, i2);
                    }
                }

                @Override // com.byazt.gpb.j
                public void hp(float f2, float f3) {
                    if (hp.this.f27101w != null) {
                        hp.this.f27101w.hp(hp.this.f27098j, f2, f3, true);
                    }
                }

                @Override // com.byazt.gpb.hp
                public void hp(View view) {
                    hp.this.hp(view);
                }

                @Override // com.byazt.gpb.hp
                public void hp() {
                    hp.this.w();
                }
            });
        } else {
            this.f27099l.setGMDrawAdListener(new com.byazt.gpb.hp() { // from class: com.byazt.wr.hp.5
                @Override // com.byazt.gpb.hp
                public void hp(View view) {
                    hp.this.hp(view);
                }

                @Override // com.byazt.gpb.hp
                public void hp() {
                    hp.this.w();
                }
            });
        }
    }

    private void jx() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar == null || jxVar.isExpressAd()) {
            return;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.mz.l.RENDER_TIP);
    }

    private void l() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar == null || !jxVar.isExpressAd()) {
            return;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.mz.l.REGISTER_VIEW_TIP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.byazt.rt.jx jxVar;
        String strL;
        long jCurrentTimeMillis;
        if (this.jx == null || (jxVar = this.f27099l) == null) {
            return;
        }
        jxVar.setHasShowCallback(true);
        com.byazt.pt.jx jxVar2 = this.f27101w;
        if (jxVar2 instanceof com.byazt.tl.w) {
            ((com.byazt.tl.w) jxVar2).l();
        }
        com.byazt.pt.hp hpVar = this.f27097a;
        if (hpVar != null) {
            hpVar.hp(this);
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.jx.sz(), "show_listen") + "adSlotId：" + this.f27099l.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(this.f27099l.getAdNetworkPlatformId()));
        com.byazt.lyn.zy zyVarHp = com.byazt.lyn.zy.hp();
        StringBuilder sb = new StringBuilder();
        sb.append(this.jx.sz());
        zyVarHp.eb(sb.toString());
        com.byazt.lyn.zy.hp().l(this.jx.sz());
        gu.hp().l(this.jx.sz(), this.f27099l.getAdNetworkSlotId());
        com.byazt.lyn.jl.hp().l(this.jx.sz(), this.f27099l.getAdNetworkSlotId());
        com.byazt.wgi.jx.hp(this.f27099l.getAdnName(), this.jx.sz(), this.f27099l.getAdNetworkSlotId());
        if (this.f27099l.getCallBack() != null) {
            this.f27099l.getCallBack().hp(this.f27099l);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f27099l)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        boolean zIsShowListenRepeatOnce = this.f27099l.isShowListenRepeatOnce();
        if (!zIsShowListenRepeatOnce) {
            com.byazt.xoi.hp.eb(this.jx.sz());
            com.byazt.xoi.hp.jx(this.jx.sz());
            com.byazt.ney.j.hp(1, this.jx.sz(), this.f27099l.getAdType(), this.f27099l.getCpm());
        }
        a.hp(this.f27099l, this.jx, 0, str, j2, zIsShowListenRepeatOnce, 1);
        com.byazt.iqm.l lVar = this.jx;
        com.byazt.qca.jx.hp(lVar != null ? lVar.sz() : "", this.f27099l);
    }

    private void hp() {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            jxVar.setTTVideoListener(new s() { // from class: com.byazt.wr.hp.1
                @Override // com.byazt.qjq.s
                public void hp() {
                    if (hp.this.eb != null) {
                        hp.this.eb.hp(hp.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void j() {
                    if (hp.this.eb != null) {
                        hp.this.eb.j(hp.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void jx() {
                    if (hp.this.eb != null) {
                        hp.this.eb.jx(hp.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void l() {
                    if (hp.this.eb != null) {
                        hp.this.eb.l(hp.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void w() {
                    if (hp.this.eb != null) {
                        hp.this.eb.w(hp.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void hp(com.byazt.dq.hp hpVar) {
                    String strL;
                    long jCurrentTimeMillis;
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (xs.hp(hp.this.f27099l)) {
                        strL = xs.l();
                        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                    } else {
                        strL = null;
                        jCurrentTimeMillis = -1;
                    }
                    a.hp(hp.this.f27099l, hp.this.jx, (com.byazt.dq.hp) null, 2, 0, strL, jCurrentTimeMillis);
                    if (hpVar == null || hp.this.eb == null) {
                        return;
                    }
                    hp.this.eb.hp(hpVar.hp, -1);
                }

                @Override // com.byazt.qjq.s
                public void hp(long j2, long j3) {
                    if (hp.this.eb != null) {
                        hp.this.eb.hp(j2, j3);
                    }
                }
            });
        }
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.f27099l;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(dialog, numArr);
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.pt.hp hpVar) throws JSONException {
        registerViewForInteraction(viewGroup, (List<View>) null, list, list2, (List<View>) null, (View) null, hpVar);
    }

    private void hp(com.byazt.pt.hp hpVar) {
        this.f27097a = hpVar;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.pt.hp hpVar) throws JSONException {
        registerViewForInteraction(viewGroup, (List<View>) null, list, list2, (List<View>) null, view, hpVar);
    }

    private void hp(boolean z2, Handler.Callback callback) throws JSONException {
        a.hp(this.jx);
        if (this.f27099l != null) {
            j();
            if (callback != null) {
                callback.handleMessage(null);
            }
            if (this.f27099l.getCallBack() != null) {
                this.f27099l.getCallBack().hp();
            }
            hp(this.f27099l);
            HashMap map = new HashMap();
            map.put("has_view_binder", Boolean.valueOf(z2));
            com.byazt.rt.jx jxVar = this.f27099l;
            a.hp(jxVar, this.jx, jxVar.isShowRepeatOnce(), 0, map);
            return;
        }
        a.hp((List<com.byazt.rt.jx>) null, this.jx, 0);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.pt.hp hpVar) throws JSONException {
        registerViewForInteraction(viewGroup, list, list2, list3, (List<View>) null, view, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final List<View> list4, final View view, com.byazt.pt.hp hpVar) throws JSONException {
        l();
        if (this.f27099l != null) {
            hp(hpVar);
            hp(false, new Handler.Callback() { // from class: com.byazt.wr.hp.2
                @Override // android.os.Handler.Callback
                public boolean handleMessage(@NonNull Message message) {
                    if (TextUtils.equals(hp.this.f27099l.getAdNetWorkName(), MediationConstant.ADN_PANGLE)) {
                        hp.this.f27099l.registerView(viewGroup, list, list2, list3, list4, view);
                        return false;
                    }
                    hp.this.f27099l.registerViewForInteraction(null, viewGroup, list2, list3, list4, null, list);
                    return false;
                }
            });
        }
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, com.byazt.pt.hp hpVar, final com.byazt.tl.j jVar) throws JSONException {
        l();
        if (this.f27099l != null) {
            hp(hpVar);
            hp(true, new Handler.Callback() { // from class: com.byazt.wr.hp.3
                @Override // android.os.Handler.Callback
                public boolean handleMessage(@NonNull Message message) {
                    hp.this.f27099l.registerViewForInteraction(activity, viewGroup, list, list2, list3, com.byazt.qjq.e.hp(jVar), null);
                    return false;
                }
            });
        }
    }

    private void hp(com.byazt.rt.jx jxVar) {
        if (com.byazt.di.l.l().kg()) {
            a.hp(jxVar, this.jx, xs.hp(), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view) {
        String strL;
        long jCurrentTimeMillis;
        com.byazt.pt.jx jxVar = this.f27101w;
        if (jxVar instanceof com.byazt.tl.w) {
            ((com.byazt.tl.w) jxVar).hp();
        }
        com.byazt.pt.hp hpVar = this.f27097a;
        if (hpVar != null) {
            hpVar.hp(view, this);
        }
        if (this.f27099l == null || this.jx == null) {
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f27099l)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        com.byazt.xoi.hp.w(this.jx.sz());
        com.byazt.rt.jx jxVar2 = this.f27099l;
        a.hp(jxVar2, this.jx, 0, str, j2, jxVar2.isClickListenRepeatOnce());
    }
}
