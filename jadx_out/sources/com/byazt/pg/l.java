package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f24389l;

    public l(hp hpVar) {
        this.f24389l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24389l != null ? this.f24389l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24389l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.hp
    public int getAgeGroup() {
        if (this.f24389l != null) {
            return this.f24389l.getAgeGroup();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.hp
    public String getAppChannel() {
        if (this.f24389l != null) {
            return this.f24389l.getAppChannel();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public String getAppId() {
        if (this.f24389l != null) {
            return this.f24389l.getAppId();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public String getAppName() {
        if (this.f24389l != null) {
            return this.f24389l.getAppName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public String getAppVersion() {
        if (this.f24389l != null) {
            return this.f24389l.getAppVersion();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        return (String) this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.hp
    public com.byazt.he.l getCustomController() {
        if (this.f24389l != null) {
            return this.f24389l.getCustomController();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.he.jx jxVar = Apply;
        if (Apply != 0) {
            jxVar = new com.byazt.he.jx((Function) Apply);
        }
        return jxVar;
    }

    @Override // com.byazt.pg.hp
    public String getData() {
        if (this.f24389l != null) {
            return this.f24389l.getData();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public int[] getDirectDownloadNetworkType() {
        if (this.f24389l != null) {
            return this.f24389l.getDirectDownloadNetworkType();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (int[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public Object getExtra(String str) {
        if (this.f24389l != null) {
            return this.f24389l.getExtra(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public Map getInitExtra() {
        if (this.f24389l != null) {
            return this.f24389l.getInitExtra();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public String getKeywords() {
        if (this.f24389l != null) {
            return this.f24389l.getKeywords();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.hp
    public com.byazt.he.eb getMediationConfig() {
        if (this.f24389l != null) {
            return this.f24389l.getMediationConfig();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.he.e eVar = Apply;
        if (Apply != 0) {
            eVar = new com.byazt.he.e((Function) Apply);
        }
        return eVar;
    }

    @Override // com.byazt.pg.hp
    public String getPackageName() {
        if (this.f24389l != null) {
            return this.f24389l.getPackageName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public int getPluginUpdateConfig() {
        if (this.f24389l != null) {
            return this.f24389l.getPluginUpdateConfig();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.hp
    public String getSdkApiVersion() {
        if (this.f24389l != null) {
            return this.f24389l.getSdkApiVersion();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        return (String) this.hp.apply(sparseArray);
    }

    public Object getService(String str) {
        return com.byazt.ym.j.getService(str, this);
    }

    @Override // com.byazt.pg.hp
    public int getThemeStatus() {
        if (this.f24389l != null) {
            return this.f24389l.getThemeStatus();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.hp
    public int getTitleBarTheme() {
        if (this.f24389l != null) {
            return this.f24389l.getTitleBarTheme();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.hp
    public String getVersionCode() {
        if (this.f24389l != null) {
            return this.f24389l.getVersionCode();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.hp
    public boolean isAllowShowNotify() {
        if (this.f24389l != null) {
            return this.f24389l.isAllowShowNotify();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.hp
    public boolean isDebug() {
        if (this.f24389l != null) {
            return this.f24389l.isDebug();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.hp
    public boolean isPaid() {
        if (this.f24389l != null) {
            return this.f24389l.isPaid();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.hp
    public boolean isPlugin() {
        if (this.f24389l != null) {
            return this.f24389l.isPlugin();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.hp
    public boolean isSupportMultiProcess() {
        if (this.f24389l != null) {
            return this.f24389l.isSupportMultiProcess();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.hp
    public boolean isUseMediation() {
        if (this.f24389l != null) {
            return this.f24389l.isUseMediation();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.hp
    public void updateInitParams(SparseArray sparseArray) {
        if (this.f24389l != null) {
            this.f24389l.updateInitParams(sparseArray);
            return;
        }
        SparseArray sparseArray2 = new SparseArray();
        sparseArray2.put(0, 20);
        sparseArray2.put(1, sparseArray);
        this.hp.apply(sparseArray2);
    }

    public l(Function function) {
        this.hp = function;
    }
}
