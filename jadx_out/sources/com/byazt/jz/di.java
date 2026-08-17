package com.byazt.jz;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes.dex */
public class di extends com.byazt.jt.j implements Serializable, Function<SparseArray<Object>, Object> {
    public final com.byazt.jt.j hp;

    /* renamed from: l, reason: collision with root package name */
    public int f21861l;

    public di(com.byazt.jt.j jVar) {
        super(null);
        this.f21861l = 0;
        this.hp = jVar;
    }

    private boolean hp(ApplicationInfo applicationInfo) {
        try {
            if (this.f21861l == 0) {
                Field declaredField = ApplicationInfo.class.getDeclaredField("privateFlags");
                declaredField.setAccessible(true);
                this.f21861l = ((Integer) declaredField.get(applicationInfo)).intValue();
            }
            return (this.f21861l & C.ENCODING_PCM_A_LAW) != 0;
        } catch (Throwable th) {
            com.byazt.lf.k.hp().hp("hasLegacyStorage", th);
            return false;
        }
    }

    @Override // com.byazt.jt.j
    public boolean alist() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.alist() : jVar.alist();
    }

    @Override // com.byazt.jt.j
    public String getAndroidId() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.getAndroidId() : jVar.getAndroidId();
    }

    @Override // com.byazt.jt.j
    public String getDevImei() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.getDevImei() : jVar.getDevImei();
    }

    @Override // com.byazt.jt.j
    public String getDevOaid() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.getDevOaid() : jVar.getDevOaid();
    }

    @Override // com.byazt.jt.j
    public String getMacAddress() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.getMacAddress() : jVar.getMacAddress();
    }

    @Override // com.byazt.jt.j
    public com.byazt.jt.jx getTTLocation() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.getTTLocation() : jVar.getTTLocation();
    }

    @Override // com.byazt.jt.j
    public boolean isCanUseAndroidId() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.isCanUseAndroidId() : jVar.isCanUseAndroidId();
    }

    @Override // com.byazt.jt.j
    public boolean isCanUseLocation() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.isCanUseLocation() && com.byazt.sii.w.hp().hp(sz.getContext(), g.f31166h) && com.byazt.sii.w.hp().hp(sz.getContext(), g.f31165g) : jVar.isCanUseLocation() && com.byazt.sii.w.hp().hp(sz.getContext(), g.f31166h) && com.byazt.sii.w.hp().hp(sz.getContext(), g.f31165g);
    }

    @Override // com.byazt.jt.j
    public boolean isCanUseMessage() {
        if (d.f21856j < 7000) {
            return true;
        }
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.isCanUseMessage() : jVar.isCanUseMessage();
    }

    @Override // com.byazt.jt.j
    public boolean isCanUsePermissionRecordAudio() {
        return false;
    }

    @Override // com.byazt.jt.j
    public boolean isCanUsePhoneState() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.isCanUsePhoneState() : jVar.isCanUsePhoneState() && com.byazt.sii.w.hp().hp(sz.getContext(), "android.permission.READ_PHONE_STATE");
    }

    @Override // com.byazt.jt.j
    public boolean isCanUseWifiState() {
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.isCanUseWifiState() : jVar.isCanUseWifiState() && com.byazt.sii.w.hp().hp(sz.getContext(), g.f31162d);
    }

    @Override // com.byazt.jt.j
    public boolean isCanUseWriteExternal() {
        if (this.hp == null) {
            return super.isCanUseWriteExternal();
        }
        Context context = sz.getContext();
        if (context == null) {
            return super.isCanUseWriteExternal();
        }
        boolean zHp = com.byazt.sii.w.hp().hp(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        boolean zIsCanUseWriteExternal = this.hp.isCanUseWriteExternal();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i2 = applicationInfo.targetSdkVersion;
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 30 ? i2 < 30 ? zHp && zIsCanUseWriteExternal && hp(applicationInfo) : zIsCanUseWriteExternal : i3 == 29 ? zHp && zIsCanUseWriteExternal && hp(applicationInfo) : zIsCanUseWriteExternal && zHp;
    }

    @Override // com.byazt.jt.j
    public Map<String, Object> userPrivacyConfig() {
        if (d.f21856j < 6408) {
            return null;
        }
        com.byazt.jt.j jVar = this.hp;
        return jVar == null ? super.userPrivacyConfig() : jVar.userPrivacyConfig();
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        int iIntValue = ((Integer) sparseArray.get(-99999987)).intValue();
        switch (iIntValue) {
            case 262101:
                break;
            case 262102:
                com.byazt.jt.jx tTLocation = getTTLocation();
                if (tTLocation != null) {
                    double dHp = tTLocation.hp();
                    break;
                }
                break;
            case 262103:
                break;
            case 262104:
                break;
            case 262105:
                break;
            case 262106:
                break;
            case 262107:
                break;
            case 262108:
                break;
            case 262109:
                break;
            case 262110:
                break;
            case 262111:
                break;
            case 262112:
                break;
            default:
                switch (iIntValue) {
                }
        }
        return null;
    }
}
