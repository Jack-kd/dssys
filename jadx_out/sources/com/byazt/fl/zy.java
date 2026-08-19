package com.byazt.fl;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.DislikeInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 302})
/* loaded from: classes2.dex */
public class zy implements TTNativeExpressAd {
    public final Function<SparseArray<Object>, Object> hp;

    /* renamed from: l, reason: collision with root package name */
    public ValueSet f20068l;

    public zy(Function<SparseArray<Object>, Object> function) {
        this.f20068l = com.byazt.xi.jx.hp;
        function = function == null ? com.byazt.xi.jx.jx : function;
        this.hp = function;
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            this.f20068l = com.byazt.xi.jx.hp((SparseArray<Object>) objApply).l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 150105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public TTAdDislike getDislikeDialog(Activity activity) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150108);
        sparseArray.put(-99999985, Function.class);
        sparseArray.put(0, activity);
        return new eb(v.hp(this.hp.apply(sparseArray)));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public DislikeInfo getDislikeInfo() {
        return new j((Function) this.f20068l.objectValue(150003, Function.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return (View) this.f20068l.objectValue(150001, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        return this.f20068l.intValue(150002);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        return this.f20068l.intValue(150004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.f20068l.objectValue(150005, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public MediationNativeManager getMediationManager() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 150113);
        sparseArray.put(-99999985, Function.class);
        return new com.byazt.wl.j(v.hp(this.hp.apply(sparseArray)));
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d2, String str, String str2) {
        SparseArray<Object> sparseArray = new SparseArray<>(5);
        sparseArray.put(-99999987, 210102);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, d2);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void registerClickableRects(JSONObject jSONObject) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150115);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 150104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setAdInteractionListener(TTAdInteractionListener tTAdInteractionListener) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 210104);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.hg.l(tTAdInteractionListener));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setCanInterruptVideoPlay(boolean z2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150112);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(-99999987, 150106);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, activity);
        sparseArray.put(1, new com.byazt.oob.hp(dislikeInteractionCallback));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(-99999987, 150107);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, tTDislikeDialogAbstract);
        sparseArray.put(1, v.hp(tTDislikeDialogAbstract.getTTDislikeListViewIds()));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.hg.jx(tTAppDownloadListener));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.up.l(expressAdInteractionListener));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 210103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, d2);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setSlideIntervalTime(int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150110);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150111);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.up.jx(expressVideoAdListener));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void showInteractionExpressAd(Activity activity) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150109);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, activity);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void unRegisterRects() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 150116);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void uploadDislikeEvent(String str) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150114);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 210101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, d2);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 150102);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.up.hp(adInteractionListener));
        this.hp.apply(sparseArray);
    }
}
