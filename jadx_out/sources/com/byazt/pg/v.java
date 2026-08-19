package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
@ATSKeep
/* loaded from: classes3.dex */
public class v implements k, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile k f24395l;

    public v(k kVar) {
        this.f24395l = kVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24395l != null ? this.f24395l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24395l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.k
    public void onAdEventReport(String str, String str2, String str3, String str4) {
        if (this.f24395l != null) {
            this.f24395l.onAdEventReport(str, str2, str3, str4);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        sparseArray.put(4, str4);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.k
    public void onAppLogMiscEvent(String str, JSONObject jSONObject) {
        if (this.f24395l != null) {
            this.f24395l.onAppLogMiscEvent(str, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.k
    public void onExceptionEvent(String str, JSONObject jSONObject, Throwable th) {
        if (this.f24395l != null) {
            this.f24395l.onExceptionEvent(str, jSONObject, th);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, th);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.k
    public void onStatsEvent(String str, JSONObject jSONObject) {
        if (this.f24395l != null) {
            this.f24395l.onStatsEvent(str, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.hp.apply(sparseArray);
    }

    public v(Function function) {
        this.hp = function;
    }

    @Override // com.byazt.pg.k
    public void onAdEventReport(String str, String str2, String str3, String str4, String str5, JSONObject jSONObject, com.byazt.dhy.hp hpVar) {
        if (this.f24395l != null) {
            this.f24395l.onAdEventReport(str, str2, str3, str4, str5, jSONObject, hpVar);
            return;
        }
        com.byazt.dhy.hp lVar = hpVar;
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        sparseArray.put(4, str4);
        sparseArray.put(5, str5);
        sparseArray.put(6, jSONObject);
        if (lVar != null) {
            lVar = new com.byazt.dhy.l(hpVar);
        }
        sparseArray.put(7, lVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.k
    public void onStatsEvent(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        if (this.f24395l != null) {
            this.f24395l.onStatsEvent(str, jSONObject, jSONObject2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, jSONObject2);
        this.hp.apply(sparseArray);
    }
}
