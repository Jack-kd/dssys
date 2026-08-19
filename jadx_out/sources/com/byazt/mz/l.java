package com.byazt.mz;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.ju.zy;
import com.byazt.lyn.gu;
import com.byazt.qjq.s;
import com.byazt.qt.e;
import com.byazt.qt.eb;
import com.byazt.qt.jl;
import com.byazt.toc.q;
import com.byazt.zg.v;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 663, 34})
/* loaded from: classes3.dex */
public class l extends e {
    public static final String REGISTER_VIEW_TIP = "当前广告为模版广告，不能使用自渲染接口进行渲染，请使用render进行渲染";
    public static final String RENDER_TIP = "当前广告为自渲染广告，不能使用模版接口进行渲染，请使用registerViewForInteraction进行渲染";

    /* renamed from: a, reason: collision with root package name */
    public View f23342a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.gu.l f23343e;
    public com.byazt.pt.hp eb;
    public q hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.nq.hp f23344j;
    public com.byazt.iqm.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.rt.jx f23345l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.gu.jx f23346q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.pt.jx f23347s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.nq.l f23348w;

    public l(q qVar, com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar) {
        this.hp = qVar;
        this.f23345l = jxVar;
        if (jxVar != null && jxVar.getSubAdType() == 3) {
            this.f23345l.setExpressAd(true);
        }
        this.jx = lVar;
        hp();
    }

    private void s() {
        String strL;
        long jCurrentTimeMillis;
        if (this.f23345l == null || this.jx == null) {
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f23345l)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        com.byazt.xoi.hp.w(this.jx.sz());
        com.byazt.rt.jx jxVar = this.f23345l;
        com.byazt.lsx.a.hp(jxVar, this.jx, 0, str, j2, jxVar.isClickListenRepeatOnce());
    }

    @Override // com.byazt.qt.zy
    public void destroy() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            try {
                jxVar.onDestroy();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.qt.zy
    public Bitmap getAdLogo() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getAdLogo();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public View getAdView() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null) {
            return null;
        }
        if (!jxVar.isExpressAd()) {
            return this.f23345l.getVideoView();
        }
        com.byazt.lsx.a.hp(this.jx);
        if (this.f23345l.getCallBack() != null) {
            this.f23345l.getCallBack().hp();
        }
        com.byazt.rt.jx jxVar2 = this.f23345l;
        com.byazt.lsx.a.hp(jxVar2, this.jx, jxVar2.isShowRepeatOnce(), 0);
        View adView = this.f23345l.getAdView();
        this.f23342a = adView;
        return adView;
    }

    @Override // com.byazt.qt.e
    public int getAdViewHeight() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            if (jxVar.isExpressAd()) {
                View view = this.f23342a;
                if (view != null) {
                    return view.getHeight();
                }
                return 0;
            }
            com.byazt.rt.jx jxVar2 = this.f23345l;
            if (jxVar2 != null) {
                return jxVar2.getVideoHeight();
            }
        }
        return 0;
    }

    @Override // com.byazt.qt.e
    public int getAdViewWidth() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            if (jxVar.isExpressAd()) {
                View view = this.f23342a;
                if (view != null) {
                    return view.getWidth();
                }
                return 0;
            }
            com.byazt.rt.jx jxVar2 = this.f23345l;
            if (jxVar2 != null) {
                return jxVar2.getVideoWidth();
            }
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppCommentNum() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getAppCommentNum();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppScore() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return (int) jxVar.getStarRating();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppSize() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getAppSize();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public String getButtonText() {
        com.byazt.rt.jx jxVar = this.f23345l;
        return jxVar != null ? jxVar.getActionText() : "";
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.jx getComplianceInfo() {
        return new com.byazt.ju.l(this.f23345l);
    }

    @Override // com.byazt.qt.e
    public com.byazt.za.hp getCustomVideo() {
        return new com.byazt.ju.jx(this.f23345l);
    }

    @Override // com.byazt.qt.zy
    public String getDescription() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getAdDescription();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public eb getDislikeDialog(Activity activity) {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(activity);
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.j getDislikeInfo() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getDislikeInfo();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.w getDownloadStatusController() {
        return new com.byazt.ju.j(this.f23345l);
    }

    @Override // com.byazt.qt.zy
    public jl getIcon() {
        com.byazt.rt.jx jxVar = this.f23345l;
        return new zy(jxVar != null ? jxVar.getIconUrl() : null);
    }

    @Override // com.byazt.qt.zy
    public List<jl> getImageList() {
        ArrayList arrayList = new ArrayList();
        com.byazt.rt.jx jxVar = this.f23345l;
        List<String> images = jxVar != null ? jxVar.getImages() : null;
        com.byazt.rt.jx jxVar2 = this.f23345l;
        String imageUrl = jxVar2 != null ? jxVar2.getImageUrl() : null;
        if (images != null) {
            if (images.size() != 0) {
                Iterator<String> it = images.iterator();
                while (it.hasNext()) {
                    arrayList.add(new zy(it.next()));
                }
            } else if (!TextUtils.isEmpty(imageUrl)) {
                com.byazt.rt.jx jxVar3 = this.f23345l;
                int imageWidth = jxVar3 != null ? jxVar3.getImageWidth() : 0;
                com.byazt.rt.jx jxVar4 = this.f23345l;
                arrayList.add(new zy(imageUrl, imageWidth, jxVar4 != null ? jxVar4.getImageHeight() : 0));
            }
        }
        return arrayList;
    }

    @Override // com.byazt.qt.zy
    public int getImageMode() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getImageMode();
        }
        return -1;
    }

    @Override // com.byazt.qt.zy
    public int getInteractionType() {
        com.byazt.rt.jx jxVar = this.f23345l;
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
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null) {
            return null;
        }
        Map<String, Object> mediaExtraInfo = jxVar.getMediaExtraInfo();
        if (mediaExtraInfo == null) {
            com.byazt.iqm.l lVar = this.jx;
            mediaExtraInfo = com.byazt.toc.l.jx(lVar != null ? lVar.sz() : "");
        }
        if (this.f23345l.isHasShowCallback() && v.hp()) {
            String strHp = v.hp(com.byazt.zg.jl.hp(this.jx, this.f23345l, true));
            if (!TextUtils.isEmpty(strHp)) {
                mediaExtraInfo.put("get_show_ecpm_info", strHp);
            }
        }
        return com.byazt.lz.l.hp(mediaExtraInfo, this.f23345l.getExtraMsg());
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qa.w getMediationManager() {
        return new com.byazt.ju.e(new jx(this.hp, this.f23345l, this.jx));
    }

    @Override // com.byazt.qt.zy
    public String getSource() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getSource();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public String getTitle() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getAdTitle();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public jl getVideoCoverImage() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getVideoCoverImage();
        }
        return null;
    }

    @Override // com.byazt.qt.e
    public double getVideoDuration() {
        com.byazt.rt.jx jxVar = this.f23345l;
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
        com.byazt.pt.jx jxVar;
        jx();
        if (this.f23345l != null) {
            j();
            this.f23345l.render();
            hp(this.f23345l);
            if (this.f23345l.getSubAdType() != 3 || (jxVar = this.f23347s) == null) {
                return;
            }
            jxVar.hp(this.f23342a, -1.0f, -2.0f, true);
        }
    }

    @Override // com.byazt.qt.zy
    public void setActivityForDownloadApp(Activity activity) {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            jxVar.setActivityForDownloadApp(activity);
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        this.f23343e = lVar;
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            jxVar.setAdInteractionListener(lVar);
        }
    }

    @Override // com.byazt.qt.zy
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null || activity == null) {
            return;
        }
        jxVar.setDislikeCallback(activity, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            jxVar.setDislikeDialog(dialog, numArr);
        }
    }

    @Override // com.byazt.qt.zy
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        this.f23346q = jxVar;
    }

    @Override // com.byazt.qt.zy
    public void setEasyPlayWidgetListener(com.byazt.pt.l lVar) {
    }

    @Override // com.byazt.qt.zy
    public void setExpressRenderListener(com.byazt.pt.jx jxVar) {
        this.f23347s = jxVar;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.e
    public void setVideoAdListener(com.byazt.nq.hp hpVar) {
        this.f23344j = hpVar;
    }

    @Override // com.byazt.qt.e
    public void setVideoRewardListener(com.byazt.nq.l lVar) {
        this.f23348w = lVar;
    }

    @Override // com.byazt.qt.zy
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.zy
    public void uploadDislikeEvent(String str) {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            jxVar.uploadDislikeEvent(str);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void a() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null) {
            return;
        }
        if (jxVar.isExpressAd()) {
            this.f23345l.setGMDrawAdListener(new com.byazt.gpb.j() { // from class: com.byazt.mz.l.8
                @Override // com.byazt.gpb.j
                public void hp(View view, String str, int i2) {
                    if (l.this.f23347s instanceof com.byazt.tl.w) {
                        ((com.byazt.tl.w) l.this.f23347s).hp(view, str, i2);
                    }
                }

                @Override // com.byazt.gpb.j
                public void hp(float f2, float f3) {
                    if (l.this.f23347s != null) {
                        l.this.f23347s.hp(l.this.f23342a, f2, f3, true);
                    }
                }

                @Override // com.byazt.gpb.hp
                public void hp(View view) {
                    l.this.hp(view);
                }

                @Override // com.byazt.gpb.hp
                public void hp() {
                    l.this.l((View) null);
                }
            });
        } else {
            this.f23345l.setGMDrawAdListener(new com.byazt.gpb.hp() { // from class: com.byazt.mz.l.9
                @Override // com.byazt.gpb.hp
                public void hp(View view) {
                    l.this.hp(view);
                }

                @Override // com.byazt.gpb.hp
                public void hp() {
                    l.this.l((View) null);
                }
            });
        }
    }

    private void eb() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null) {
            return;
        }
        if (jxVar.isExpressAd()) {
            this.f23345l.setTTNativeAdListener(new com.byazt.qjq.a() { // from class: com.byazt.mz.l.10
                @Override // com.byazt.qjq.a
                public void hp(View view, String str, int i2) {
                    if (l.this.f23347s instanceof com.byazt.tl.w) {
                        ((com.byazt.tl.w) l.this.f23347s).hp(view, str, i2);
                    }
                }

                @Override // com.byazt.qjq.a
                public void hp(float f2, float f3) {
                    if (l.this.f23347s != null) {
                        l.this.f23347s.hp(l.this.f23342a, f2, f3, true);
                    }
                }

                @Override // com.byazt.qjq.l
                public void hp(View view) {
                    l.this.hp(view);
                }

                @Override // com.byazt.qjq.l
                public void hp() {
                    l.this.l((View) null);
                }
            });
        } else {
            this.f23345l.setTTNativeAdListener(new com.byazt.qjq.jx() { // from class: com.byazt.mz.l.2
                @Override // com.byazt.qjq.l
                public void hp(View view) {
                    l.this.hp(view);
                }

                @Override // com.byazt.qjq.l
                public void hp() {
                    l.this.l((View) null);
                }
            });
        }
    }

    private void j() {
        int subAdType = this.f23345l.getSubAdType();
        if (subAdType != 4) {
            if (subAdType == 5) {
                a();
                return;
            } else if (subAdType == 3) {
                w();
                return;
            }
        }
        eb();
    }

    private void jx() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null || jxVar.isExpressAd()) {
            return;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, RENDER_TIP);
    }

    private void w() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null) {
            return;
        }
        jxVar.setTTAdatperCallback(new com.byazt.sdu.hp() { // from class: com.byazt.mz.l.7
            @Override // com.byazt.qre.hp
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
            }

            @Override // com.byazt.qre.hp
            public void l(View view) {
                l.this.l(view);
            }

            @Override // com.byazt.qre.hp
            public void hp() {
                if (l.this.f23345l.getDislikeCallback() != null) {
                    l.this.f23345l.getDislikeCallback().hp(0, "banner ad closed", false);
                }
            }

            @Override // com.byazt.qre.hp
            public void hp(View view) {
                l.this.hp(view);
            }
        });
    }

    private void hp() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            jxVar.setTTVideoListener(new s() { // from class: com.byazt.mz.l.1
                @Override // com.byazt.qjq.s
                public void hp() {
                    if (l.this.f23344j != null) {
                        l.this.f23344j.hp(l.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void j() {
                    if (l.this.f23344j != null) {
                        l.this.f23344j.j(l.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void jx() {
                    if (l.this.f23344j != null) {
                        l.this.f23344j.jx(l.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void l() {
                    if (l.this.f23344j != null) {
                        l.this.f23344j.l(l.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void w() {
                    if (l.this.f23344j != null) {
                        l.this.f23344j.w(l.this);
                    }
                }

                @Override // com.byazt.qjq.s
                public void hp(com.byazt.dq.hp hpVar) {
                    String strL;
                    long jCurrentTimeMillis;
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (xs.hp(l.this.f23345l)) {
                        strL = xs.l();
                        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                    } else {
                        strL = null;
                        jCurrentTimeMillis = -1;
                    }
                    com.byazt.lsx.a.hp(l.this.f23345l, l.this.jx, (com.byazt.dq.hp) null, 2, 0, strL, jCurrentTimeMillis);
                    if (hpVar == null || l.this.f23344j == null) {
                        return;
                    }
                    l.this.f23344j.hp(hpVar.hp, -1);
                }

                @Override // com.byazt.qjq.s
                public void hp(long j2, long j3) {
                    if (l.this.f23344j != null) {
                        l.this.f23344j.hp(j2, j3);
                    }
                }
            });
            this.f23345l.setTTAdAppDownloadListener(new com.byazt.voc.l() { // from class: com.byazt.mz.l.3
                @Override // com.byazt.voc.l
                public void hp() {
                    if (l.this.f23346q != null) {
                        l.this.f23346q.hp();
                    }
                }

                @Override // com.byazt.voc.l
                public void l() {
                }

                @Override // com.byazt.voc.l
                public void l(long j2, long j3, String str, String str2) {
                    if (l.this.f23346q != null) {
                        l.this.f23346q.jx(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, long j3, int i2, int i3, String str, String str2) {
                    if (l.this.f23346q != null) {
                        l.this.f23346q.hp(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, long j3, String str, String str2) {
                    if (l.this.f23346q != null) {
                        l.this.f23346q.l(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, String str, String str2) {
                    if (l.this.f23346q != null) {
                        l.this.f23346q.hp(j2, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(String str, String str2) {
                    if (l.this.f23346q != null) {
                        l.this.f23346q.hp(str, str2);
                    }
                }
            });
            this.f23345l.setGMVideoRewardListener(new com.byazt.qjq.q() { // from class: com.byazt.mz.l.4
                @Override // com.byazt.qjq.q
                public void hp(int i2) {
                    if (l.this.f23348w != null) {
                        l.this.f23348w.hp(i2);
                    }
                }
            });
        }
    }

    private void l() {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar == null || !jxVar.isExpressAd()) {
            return;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, REGISTER_VIEW_TIP);
    }

    @Override // com.byazt.qt.zy
    public eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.f23345l;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(dialog, numArr);
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.pt.hp hpVar) throws JSONException {
        registerViewForInteraction(viewGroup, (List<View>) null, list, list2, (List<View>) null, (View) null, hpVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(View view) {
        com.byazt.rt.jx jxVar;
        String strL;
        long jCurrentTimeMillis;
        if (this.jx == null || (jxVar = this.f23345l) == null) {
            return;
        }
        jxVar.setHasShowCallback(true);
        com.byazt.pt.jx jxVar2 = this.f23347s;
        if (jxVar2 instanceof com.byazt.tl.w) {
            ((com.byazt.tl.w) jxVar2).l();
        }
        com.byazt.pt.hp hpVar = this.eb;
        if (hpVar != null) {
            hpVar.hp(this);
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.jx.sz(), "show_listen") + "adSlotId：" + this.f23345l.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(this.f23345l.getAdNetworkPlatformId()));
        com.byazt.lyn.zy zyVarHp = com.byazt.lyn.zy.hp();
        StringBuilder sb = new StringBuilder();
        sb.append(this.jx.sz());
        zyVarHp.eb(sb.toString());
        com.byazt.lyn.zy.hp().l(this.jx.sz());
        gu.hp().l(this.jx.sz(), this.f23345l.getAdNetworkSlotId());
        com.byazt.lyn.jl.hp().l(this.jx.sz(), this.f23345l.getAdNetworkSlotId());
        com.byazt.wgi.jx.hp(this.f23345l.getAdnName(), this.jx.sz(), this.f23345l.getAdNetworkSlotId());
        if (this.f23345l.getCallBack() != null) {
            this.f23345l.getCallBack().hp(this.f23345l);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f23345l)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        boolean zIsShowListenRepeatOnce = this.f23345l.isShowListenRepeatOnce();
        if (!zIsShowListenRepeatOnce) {
            com.byazt.xoi.hp.eb(this.jx.sz());
            com.byazt.xoi.hp.jx(this.jx.sz());
            com.byazt.ney.j.hp(1, this.jx.sz(), this.f23345l.getAdType(), this.f23345l.getCpm());
        }
        com.byazt.lsx.a.hp(this.f23345l, this.jx, 0, str, j2, zIsShowListenRepeatOnce, 1);
        com.byazt.iqm.l lVar = this.jx;
        com.byazt.qca.jx.hp(lVar != null ? lVar.sz() : "", this.f23345l);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.pt.hp hpVar) throws JSONException {
        registerViewForInteraction(viewGroup, (List<View>) null, list, list2, (List<View>) null, view, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.pt.hp hpVar) throws JSONException {
        registerViewForInteraction(viewGroup, list, list2, list3, (List<View>) null, view, hpVar);
    }

    private void hp(com.byazt.pt.hp hpVar) {
        this.eb = hpVar;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final List<View> list4, final View view, com.byazt.pt.hp hpVar) throws JSONException {
        l();
        if (this.f23345l != null) {
            hp(hpVar);
            hp(false, new Handler.Callback() { // from class: com.byazt.mz.l.5
                @Override // android.os.Handler.Callback
                public boolean handleMessage(@NonNull Message message) {
                    if (TextUtils.equals(l.this.f23345l.getAdNetWorkName(), MediationConstant.ADN_PANGLE)) {
                        l.this.f23345l.registerView(viewGroup, list, list2, list3, list4, view);
                        return false;
                    }
                    l.this.f23345l.registerViewForInteraction(null, viewGroup, list2, list3, list4, null, list);
                    return false;
                }
            });
        }
    }

    private void hp(boolean z2, Handler.Callback callback) throws JSONException {
        com.byazt.lsx.a.hp(this.jx);
        if (this.f23345l != null) {
            j();
            if (callback != null) {
                callback.handleMessage(null);
            }
            if (this.f23345l.getCallBack() != null) {
                this.f23345l.getCallBack().hp();
            }
            hp(this.f23345l);
            HashMap map = new HashMap();
            map.put("has_view_binder", Boolean.valueOf(z2));
            com.byazt.rt.jx jxVar = this.f23345l;
            com.byazt.lsx.a.hp(jxVar, this.jx, jxVar.isShowRepeatOnce(), 0, map);
            return;
        }
        com.byazt.lsx.a.hp((List<com.byazt.rt.jx>) null, this.jx, 0);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, com.byazt.pt.hp hpVar, final com.byazt.tl.j jVar) throws JSONException {
        l();
        if (this.f23345l != null) {
            hp(hpVar);
            hp(true, new Handler.Callback() { // from class: com.byazt.mz.l.6
                @Override // android.os.Handler.Callback
                public boolean handleMessage(@NonNull Message message) {
                    l.this.f23345l.registerViewForInteraction(activity, viewGroup, list, list2, list3, com.byazt.qjq.e.hp(jVar), null);
                    return false;
                }
            });
        }
    }

    private void hp(com.byazt.rt.jx jxVar) {
        if (com.byazt.di.l.l().kg()) {
            com.byazt.lsx.a.hp(jxVar, this.jx, xs.hp(), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view) {
        com.byazt.pt.jx jxVar = this.f23347s;
        if (jxVar instanceof com.byazt.tl.w) {
            ((com.byazt.tl.w) jxVar).hp();
        }
        com.byazt.pt.hp hpVar = this.eb;
        if (hpVar != null) {
            hpVar.hp(view, this);
        }
        s();
    }
}
