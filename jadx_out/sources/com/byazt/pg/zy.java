package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 302})
@ATSKeep
/* loaded from: classes3.dex */
public class zy implements jl, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jl f24397l;

    public zy(jl jlVar) {
        this.f24397l = jlVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24397l != null ? this.f24397l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24397l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.jl
    public String getActiveSimOperatorStr() {
        if (this.f24397l != null) {
            return this.f24397l.getActiveSimOperatorStr();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 44);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getAndroidId() {
        if (this.f24397l != null) {
            return this.f24397l.getAndroidId();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getAsyncWifiMac() {
        if (this.f24397l != null) {
            return this.f24397l.getAsyncWifiMac();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 34);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getBoot() {
        if (this.f24397l != null) {
            return this.f24397l.getBoot();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getBuildSerial() {
        if (this.f24397l != null) {
            return this.f24397l.getBuildSerial();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getCarrierName() {
        if (this.f24397l != null) {
            return this.f24397l.getCarrierName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getCompilingTime() {
        if (this.f24397l != null) {
            return this.f24397l.getCompilingTime();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getDeviceModel() {
        if (this.f24397l != null) {
            return this.f24397l.getDeviceModel();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getDeviceName() {
        if (this.f24397l != null) {
            return this.f24397l.getDeviceName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public int getDeviceType(boolean z2) {
        if (this.f24397l != null) {
            return this.f24397l.getDeviceType(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        sparseArray.put(1, Boolean.valueOf(z2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public int getDisplayDpi() {
        if (this.f24397l != null) {
            return this.f24397l.getDisplayDpi();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 29);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public String getEmuiInfo() {
        if (this.f24397l != null) {
            return this.f24397l.getEmuiInfo();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 39);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getImei(Boolean bool) {
        if (this.f24397l != null) {
            return this.f24397l.getImei(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getImsi(Boolean bool) {
        if (this.f24397l != null) {
            return this.f24397l.getImsi(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public Map getIpInfoMap(boolean z2) {
        if (this.f24397l != null) {
            return this.f24397l.getIpInfoMap(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 42);
        sparseArray.put(1, Boolean.valueOf(z2));
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getLanguage() {
        if (this.f24397l != null) {
            return this.f24397l.getLanguage();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getLocalLanguage() {
        if (this.f24397l != null) {
            return this.f24397l.getLocalLanguage();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.jl
    public com.byazt.yb.hp getLocation(boolean z2) {
        if (this.f24397l != null) {
            return this.f24397l.getLocation(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, Boolean.valueOf(z2));
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.yb.l lVar = Apply;
        if (Apply != 0) {
            lVar = new com.byazt.yb.l((Function) Apply);
        }
        return lVar;
    }

    @Override // com.byazt.pg.jl
    public String getMacAddress(Boolean bool) {
        if (this.f24397l != null) {
            return this.f24397l.getMacAddress(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getMcc() {
        if (this.f24397l != null) {
            return this.f24397l.getMcc();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getMcc2() {
        if (this.f24397l != null) {
            return this.f24397l.getMcc2();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 32);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getMnc() {
        if (this.f24397l != null) {
            return this.f24397l.getMnc();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getMnc2() {
        if (this.f24397l != null) {
            return this.f24397l.getMnc2();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 33);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getNetworkSignalType(int i2) {
        if (this.f24397l != null) {
            return this.f24397l.getNetworkSignalType(i2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 43);
        sparseArray.put(1, Integer.valueOf(i2));
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String[] getNewIpAddrs(boolean z2) {
        if (this.f24397l != null) {
            return this.f24397l.getNewIpAddrs(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, Boolean.valueOf(z2));
        return (String[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public int getOs() {
        if (this.f24397l != null) {
            return this.f24397l.getOs();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public String getOsVersion() {
        if (this.f24397l != null) {
            return this.f24397l.getOsVersion();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public int getRealNetworkType(long j2) {
        if (this.f24397l != null) {
            return this.f24397l.getRealNetworkType(j2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 36);
        sparseArray.put(1, Long.valueOf(j2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public String getRom() {
        if (this.f24397l != null) {
            return this.f24397l.getRom();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getRomInfo() {
        if (this.f24397l != null) {
            return this.f24397l.getRomInfo();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 28);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getSSID(Boolean bool) {
        if (this.f24397l != null) {
            return this.f24397l.getSSID(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public float getScreenBright() {
        if (this.f24397l != null) {
            return this.f24397l.getScreenBright();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 41);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.pg.jl
    public int getScreenHeight() {
        if (this.f24397l != null) {
            return this.f24397l.getScreenHeight();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 30);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public int getScreenWidth() {
        if (this.f24397l != null) {
            return this.f24397l.getScreenWidth();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 31);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public String getSimOperator() {
        if (this.f24397l != null) {
            return this.f24397l.getSimOperator();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 35);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getSimOperatorCode() {
        if (this.f24397l != null) {
            return this.f24397l.getSimOperatorCode();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 45);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getTimeZone() {
        if (this.f24397l != null) {
            return this.f24397l.getTimeZone();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public int getTimeZoneInt() {
        if (this.f24397l != null) {
            return this.f24397l.getTimeZoneInt();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.jl
    public long getUnlockTime() {
        if (this.f24397l != null) {
            return this.f24397l.getUnlockTime();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 46);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.pg.jl
    public String getUserAgent() {
        if (this.f24397l != null) {
            return this.f24397l.getUserAgent();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getVendor() {
        if (this.f24397l != null) {
            return this.f24397l.getVendor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getWebViewUA(boolean z2) {
        if (this.f24397l != null) {
            return this.f24397l.getWebViewUA(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        sparseArray.put(1, Boolean.valueOf(z2));
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public String getWifiMac(Boolean bool) {
        if (this.f24397l != null) {
            return this.f24397l.getWifiMac(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public boolean isScreenOn() {
        if (this.f24397l != null) {
            return this.f24397l.isScreenOn();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 40);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.jl
    public void registerNetworkMonitor(com.byazt.yb.jx jxVar) {
        if (this.f24397l != null) {
            this.f24397l.registerNetworkMonitor(jxVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 37);
        if (jxVar != null) {
            jxVar = new com.byazt.yb.j(jxVar);
        }
        sparseArray.put(1, jxVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jl
    public void removeNetworkMonitor(com.byazt.yb.jx jxVar) {
        if (this.f24397l != null) {
            this.f24397l.removeNetworkMonitor(jxVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 38);
        if (jxVar != null) {
            jxVar = new com.byazt.yb.j(jxVar);
        }
        sparseArray.put(1, jxVar);
        this.hp.apply(sparseArray);
    }

    public zy(Function function) {
        this.hp = function;
    }
}
