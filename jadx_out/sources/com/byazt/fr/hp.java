package com.byazt.fr;

import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.byazt.bki.k;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1204, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.gkj.j {
    private void hp() {
        l();
    }

    private void l() {
        l.l(l.hp(l.hp(), "personal_ads_type", com.byazt.di.hp.jl().l().eb() ? "0" : "1"));
    }

    @Override // com.byazt.gkj.j
    public void checkVersion() {
    }

    @Override // com.byazt.gkj.j
    public void clearInitStatus() {
    }

    @Override // com.byazt.gkj.j
    public String getAdapterVersion() {
        return getNetworkSdkVersion() + ".0";
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008f  */
    @Override // com.byazt.gkj.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getBiddingToken(android.content.Context r18, java.util.Map<java.lang.String, java.lang.Object> r19) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fr.hp.getBiddingToken(android.content.Context, java.util.Map):java.lang.String");
    }

    @Override // com.byazt.gkj.j
    public Map<String, Object> getBiddingTokenMap(Context context, Map<String, Object> map) {
        return null;
    }

    @Override // com.byazt.gkj.j
    public String getNetworkSdkPluginVersion() {
        return com.byazt.owd.l.j();
    }

    @Override // com.byazt.gkj.j
    public String getNetworkSdkVersion() {
        return com.byazt.owd.l.jx();
    }

    @Override // com.byazt.gkj.l
    public void initAdn(@NonNull Context context, @NonNull Map<String, Object> map, @NonNull com.byazt.gkj.jx jxVar) {
        l();
        jxVar.hp();
    }

    @Override // com.byazt.gkj.j
    public long initDuration() {
        return 0L;
    }

    @Override // com.byazt.gkj.j
    public int initStatus() {
        return 0;
    }

    @Override // com.byazt.gkj.j
    public void setPrivacyConfig(k kVar, SparseArray<Object> sparseArray) {
        com.byazt.di.hp.jl().l().l(sparseArray);
        hp();
    }

    @Override // com.byazt.gkj.j
    public void setThemeStatus(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        Object obj = map.get(com.byazt.gkj.hp.f20494w);
        int iIntValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        if (iIntValue == 0 || iIntValue == 1) {
            com.byazt.owd.l.hp(iIntValue);
        }
    }

    @Override // com.byazt.gkj.j
    public int showOpenOrInstallAppDialog(com.byazt.bki.jx jxVar) {
        return 0;
    }
}
