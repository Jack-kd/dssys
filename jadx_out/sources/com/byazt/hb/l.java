package com.byazt.hb;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.bki.v;
import com.byazt.idb.a;
import com.byazt.idb.eb;
import com.byazt.idb.j;
import com.byazt.idb.q;
import com.byazt.idb.s;
import com.byazt.idb.w;
import com.byazt.qjq.e;
import com.byazt.rt.jx;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1911, 34})
/* loaded from: classes2.dex */
public class l extends jx {

    /* renamed from: e, reason: collision with root package name */
    public w f20652e;
    public v gu;
    public com.byazt.idb.l jl;

    /* renamed from: k, reason: collision with root package name */
    public q f20653k;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.cg.hp f20654q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.sno.hp f20655s;

    /* renamed from: u, reason: collision with root package name */
    public s f20656u;

    /* renamed from: v, reason: collision with root package name */
    public j f20657v;
    public a vv;
    public com.byazt.idb.jx xs;
    public eb zy;

    @Override // com.byazt.rt.jx
    public void bidLoseNotify(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        try {
            Object obj = map.get("bidding_lose_reason_NUM");
            if (obj instanceof Integer) {
                ((Integer) obj).getClass();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.rt.jx
    public void bidWinNotify(Map<String, Object> map) {
        if (this.f20655s != null) {
            getCpm();
        }
        if (this.gu != null) {
            getCpm();
        }
    }

    @Override // com.byazt.rt.jx
    public void cancelDownload() {
    }

    @Override // com.byazt.rt.jx
    public void dislikeClick(String str, Map<String, Object> map) {
        super.dislikeClick(str, map);
    }

    @Override // com.byazt.rt.jx
    @Nullable
    public View getAdView() {
        com.byazt.sno.hp hpVar = this.f20655s;
        if (hpVar != null && (hpVar instanceof com.byazt.lkj.hp)) {
            return ((com.byazt.lkj.hp) hpVar).hp();
        }
        eb ebVar = this.zy;
        if (ebVar != null) {
            return ebVar.hp();
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.cg.hp getDislikeCallback() {
        return this.f20654q;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.qt.eb getDislikeDialog(Activity activity) {
        w wVar = this.f20652e;
        return wVar != null ? wVar.hp(activity) : super.getDislikeDialog(activity);
    }

    @Override // com.byazt.rt.jx
    public int getDownloadStatus() {
        a aVar = this.vv;
        if (aVar != null) {
            return aVar.hp();
        }
        return -1;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.voc.l getGMAdAppDownloadListener() {
        return this.jx;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.gpb.hp getGMDrawAdListener() {
        return this.f25333a;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.qjq.l getGMNativeAdListener() {
        return this.hp;
    }

    @Override // com.byazt.rt.jx
    @Nullable
    public com.byazt.qjq.w getGMNativeCustomVideoReporter() {
        com.byazt.idb.jx jxVar = this.xs;
        if (jxVar != null) {
            return jxVar.l();
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.qjq.s getGMVideoListener() {
        return this.f25343l;
    }

    public com.byazt.sdu.a getTTAdapterCallback() {
        return this.eb;
    }

    @Override // com.byazt.rt.jx
    @Nullable
    public String getVideoUrl() {
        com.byazt.idb.jx jxVar = this.xs;
        if (jxVar != null) {
            return jxVar.hp();
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public View getVideoView() {
        com.byazt.idb.jx jxVar = this.xs;
        return jxVar != null ? jxVar.jx() : super.getVideoView();
    }

    @Override // com.byazt.rt.jx
    public boolean hasDestroyed() {
        return false;
    }

    @Override // com.byazt.rt.jx
    public boolean hasDislike() {
        try {
            j jVar = this.f20657v;
            if (jVar != null) {
                return jVar.hp();
            }
        } catch (Exception unused) {
        }
        return super.hasDislike();
    }

    @Override // com.byazt.rt.jx
    public final Integer isReadyStatus() {
        s sVar = this.f20656u;
        if (sVar != null) {
            return sVar.hp();
        }
        com.byazt.sno.hp hpVar = this.f20655s;
        return hpVar != null ? hpVar.jx() : super.isReadyStatus();
    }

    public final void nativeDislikeClick(String str) {
        com.byazt.sno.hp hpVar = this.f20655s;
        if (hpVar != null) {
            hpVar.hp(this, str);
        }
    }

    @Override // com.byazt.rt.jx
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.byazt.rt.jx
    public void onPause() {
        super.onPause();
    }

    @Override // com.byazt.rt.jx
    public void onResume() {
        super.onResume();
    }

    @Override // com.byazt.rt.jx
    public void pauseAppDownload() {
    }

    @Override // com.byazt.rt.jx
    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, e eVar, List<View> list4) {
    }

    @Override // com.byazt.rt.jx
    public void render() {
    }

    @Override // com.byazt.rt.jx
    public void resumeAppDownload() {
    }

    public void setCustomNativeConvert(com.byazt.idb.l lVar) {
        this.jl = lVar;
    }

    public void setCustomNativeCustomizeVideoConvert(com.byazt.idb.jx jxVar) {
        this.xs = jxVar;
    }

    public void setCustomNativeDownloadStatusControllerConvert(a aVar) {
        this.vv = aVar;
    }

    public void setCustomNativeExpressConvert(eb ebVar) {
        this.zy = ebVar;
    }

    public void setCustomNativeLifecycleConvert(q qVar) {
        this.f20653k = qVar;
    }

    @Override // com.byazt.rt.jx
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        this.f20654q = hpVar;
    }

    public void setDislikeDialogCallBack(w wVar) {
        this.f20652e = wVar;
    }

    public void setGMCustomBaseAdapter(com.byazt.sno.hp hpVar) {
        this.f20655s = hpVar;
    }

    public void setGmReceiveBidResultCallback(v vVar) {
        this.gu = vVar;
    }

    public void setIGMCustomNativeDislikeConvert(j jVar) {
        this.f20657v = jVar;
    }

    public void setIGMCustomNativeIsReadyStatusConvert(s sVar) {
        this.f20656u = sVar;
    }

    @Override // com.byazt.rt.jx
    public void showAd(Activity activity, Object obj, String str) {
        com.byazt.sno.hp hpVar = this.f20655s;
        if (hpVar == null || !(hpVar instanceof com.byazt.sno.l)) {
            return;
        }
        ((com.byazt.sno.l) hpVar).hp(activity);
    }

    @Override // com.byazt.rt.jx
    public void showSplashAd(ViewGroup viewGroup) {
        com.byazt.sno.hp hpVar = this.f20655s;
        if (hpVar == null || !(hpVar instanceof com.byazt.sz.hp)) {
            return;
        }
        ((com.byazt.sz.hp) hpVar).hp(viewGroup);
    }

    @Override // com.byazt.rt.jx
    public void unregisterView() {
    }
}
