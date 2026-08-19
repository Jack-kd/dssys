package com.byazt.kd;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.qt.e;
import com.byazt.qt.eb;
import com.byazt.qt.jl;
import com.byazt.qt.w;
import com.byazt.qt.zy;
import com.byazt.ymw.u;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 860, 34})
/* loaded from: classes2.dex */
public abstract class l extends e {
    public final zy hp;

    public l(zy zyVar) {
        this.hp = zyVar;
    }

    @Override // com.byazt.qt.zy
    public void destroy() {
        this.hp.destroy();
    }

    @Override // com.byazt.qt.zy
    public Bitmap getAdLogo() {
        return this.hp.getAdLogo();
    }

    @Override // com.byazt.qt.zy
    public View getAdView() {
        View adView = this.hp.getAdView();
        u.l("wzj", "3-BaseFeedAd:140016:view=".concat(String.valueOf(adView)));
        return adView;
    }

    @Override // com.byazt.qt.zy
    public int getAppCommentNum() {
        return this.hp.getAppCommentNum();
    }

    @Override // com.byazt.qt.zy
    public int getAppScore() {
        return this.hp.getAppScore();
    }

    @Override // com.byazt.qt.zy
    public int getAppSize() {
        return this.hp.getAppSize();
    }

    @Override // com.byazt.qt.zy
    public String getButtonText() {
        return this.hp.getButtonText();
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.jx getComplianceInfo() {
        return this.hp.getComplianceInfo();
    }

    @Override // com.byazt.qt.zy
    public String getDescription() {
        return this.hp.getDescription();
    }

    @Override // com.byazt.qt.zy
    public eb getDislikeDialog(Activity activity) {
        return this.hp.getDislikeDialog(activity);
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.j getDislikeInfo() {
        return this.hp.getDislikeInfo();
    }

    @Override // com.byazt.qt.zy
    public w getDownloadStatusController() {
        return this.hp.getDownloadStatusController();
    }

    @Override // com.byazt.qt.zy
    public jl getIcon() {
        return this.hp.getIcon();
    }

    @Override // com.byazt.qt.zy
    public List<jl> getImageList() {
        return this.hp.getImageList();
    }

    @Override // com.byazt.qt.zy
    public int getImageMode() {
        return this.hp.getImageMode();
    }

    @Override // com.byazt.qt.zy
    public int getInteractionType() {
        return this.hp.getInteractionType();
    }

    @Override // com.byazt.qt.zy
    public Map<String, Object> getMediaExtraInfo() {
        return this.hp.getMediaExtraInfo();
    }

    public zy getNativeAd() {
        return this.hp;
    }

    @Override // com.byazt.qt.zy
    public String getSource() {
        return this.hp.getSource();
    }

    @Override // com.byazt.qt.zy
    public String getTitle() {
        return this.hp.getTitle();
    }

    @Override // com.byazt.qt.zy
    public jl getVideoCoverImage() {
        return this.hp.getVideoCoverImage();
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        this.hp.loss(d2, str, str2);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, View view, com.byazt.pt.hp hpVar) {
        this.hp.registerViewForInteraction(viewGroup, view, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void render() {
        this.hp.render();
    }

    @Override // com.byazt.qt.zy
    public void setActivityForDownloadApp(Activity activity) {
        this.hp.setActivityForDownloadApp(activity);
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        this.hp.setAdInteractionListener(lVar);
    }

    @Override // com.byazt.qt.zy
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        this.hp.setDislikeCallback(activity, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        this.hp.setDislikeDialog(dialog, numArr);
    }

    @Override // com.byazt.qt.zy
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        this.hp.setDownloadListener(jxVar);
    }

    @Override // com.byazt.qt.zy
    public void setExpressRenderListener(com.byazt.pt.jx jxVar) {
        this.hp.setExpressRenderListener(jxVar);
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
        this.hp.setPrice(d2);
    }

    @Override // com.byazt.qt.zy
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.zy
    public void uploadDislikeEvent(String str) {
        this.hp.uploadDislikeEvent(str);
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
        this.hp.win(d2);
    }

    @Override // com.byazt.qt.zy
    public eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
        return this.hp.getDislikeDialog(dialog, numArr);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.pt.hp hpVar) {
        this.hp.registerViewForInteraction(viewGroup, list, list2, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.pt.hp hpVar) {
        this.hp.registerViewForInteraction(viewGroup, list, list2, view, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.pt.hp hpVar) {
        this.hp.registerViewForInteraction(viewGroup, list, list2, list3, view, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.byazt.pt.hp hpVar) {
        this.hp.registerViewForInteraction(viewGroup, list, list2, list3, list4, view, hpVar);
    }
}
