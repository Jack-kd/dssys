package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 670})
@ATSKeep
/* loaded from: classes3.dex */
public class d implements o, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile o f24381l;

    public d(o oVar) {
        this.f24381l = oVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24381l != null ? this.f24381l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24381l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.o
    public String getAndroidId() {
        if (this.f24381l != null) {
            return this.f24381l.getAndroidId();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getAppLogDid() {
        if (this.f24381l != null) {
            return this.f24381l.getAppLogDid();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 43);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getBoot() {
        if (this.f24381l != null) {
            return this.f24381l.getBoot();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getBuildSerial() {
        if (this.f24381l != null) {
            return this.f24381l.getBuildSerial();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getCarrierName() {
        if (this.f24381l != null) {
            return this.f24381l.getCarrierName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getCompilingTime() {
        if (this.f24381l != null) {
            return this.f24381l.getCompilingTime();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public int getConnType() {
        if (this.f24381l != null) {
            return this.f24381l.getConnType();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public String getDeviceModel() {
        if (this.f24381l != null) {
            return this.f24381l.getDeviceModel();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getDeviceName() {
        if (this.f24381l != null) {
            return this.f24381l.getDeviceName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public int getDeviceType(boolean z2) {
        if (this.f24381l != null) {
            return this.f24381l.getDeviceType(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 33);
        sparseArray.put(1, Boolean.valueOf(z2));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public String getDisplayDensity() {
        if (this.f24381l != null) {
            return this.f24381l.getDisplayDensity();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 32);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public int getDisplayDpi() {
        if (this.f24381l != null) {
            return this.f24381l.getDisplayDpi();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 46);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public String getImei(Boolean bool) {
        if (this.f24381l != null) {
            return this.f24381l.getImei(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 38);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getImsi(Boolean bool) {
        if (this.f24381l != null) {
            return this.f24381l.getImsi(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 41);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getIpv4() {
        if (this.f24381l != null) {
            return this.f24381l.getIpv4();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getIpv6() {
        if (this.f24381l != null) {
            return this.f24381l.getIpv6();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 44);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getLanguage() {
        if (this.f24381l != null) {
            return this.f24381l.getLanguage();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getLocalLanguage() {
        if (this.f24381l != null) {
            return this.f24381l.getLocalLanguage();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (String) this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.o
    public com.byazt.yb.hp getLocation() {
        if (this.f24381l != null) {
            return this.f24381l.getLocation();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 37);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.yb.l lVar = Apply;
        if (Apply != 0) {
            lVar = new com.byazt.yb.l((Function) Apply);
        }
        return lVar;
    }

    @Override // com.byazt.pg.o
    public String getMacAddress(Boolean bool) {
        if (this.f24381l != null) {
            return this.f24381l.getMacAddress(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 39);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getMcc() {
        if (this.f24381l != null) {
            return this.f24381l.getMcc();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getMcc2() {
        if (this.f24381l != null) {
            return this.f24381l.getMcc2();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 49);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getMnc() {
        if (this.f24381l != null) {
            return this.f24381l.getMnc();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getMnc2() {
        if (this.f24381l != null) {
            return this.f24381l.getMnc2();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 50);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String[] getNewIpAddrs(boolean z2) {
        if (this.f24381l != null) {
            return this.f24381l.getNewIpAddrs(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 35);
        sparseArray.put(1, Boolean.valueOf(z2));
        return (String[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getOAID(boolean z2) {
        if (this.f24381l != null) {
            return this.f24381l.getOAID(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 42);
        sparseArray.put(1, Boolean.valueOf(z2));
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public int getOs() {
        if (this.f24381l != null) {
            return this.f24381l.getOs();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public String getOsVersion() {
        if (this.f24381l != null) {
            return this.f24381l.getOsVersion();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getRom() {
        if (this.f24381l != null) {
            return this.f24381l.getRom();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 30);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getRomInfo() {
        if (this.f24381l != null) {
            return this.f24381l.getRomInfo();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 45);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getSSID(Boolean bool) {
        if (this.f24381l != null) {
            return this.f24381l.getSSID(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 40);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public int getScreenHeight() {
        if (this.f24381l != null) {
            return this.f24381l.getScreenHeight();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 47);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public int getScreenWidth() {
        if (this.f24381l != null) {
            return this.f24381l.getScreenWidth();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 48);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public String getTimeZone() {
        if (this.f24381l != null) {
            return this.f24381l.getTimeZone();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public int getTimeZoneInt() {
        if (this.f24381l != null) {
            return this.f24381l.getTimeZoneInt();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 31);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.o
    public String getTotalMem() {
        if (this.f24381l != null) {
            return this.f24381l.getTotalMem();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getTotalSpace() {
        if (this.f24381l != null) {
            return this.f24381l.getTotalSpace();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getUUId() {
        if (this.f24381l != null) {
            return this.f24381l.getUUId();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getUserAgent() {
        if (this.f24381l != null) {
            return this.f24381l.getUserAgent();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 29);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getVendor() {
        if (this.f24381l != null) {
            return this.f24381l.getVendor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getWebViewUA() {
        if (this.f24381l != null) {
            return this.f24381l.getWebViewUA();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 34);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.o
    public String getWifiMac(Boolean bool) {
        if (this.f24381l != null) {
            return this.f24381l.getWifiMac(bool);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 36);
        sparseArray.put(1, bool);
        return (String) this.hp.apply(sparseArray);
    }

    public d(Function function) {
        this.hp = function;
    }
}
