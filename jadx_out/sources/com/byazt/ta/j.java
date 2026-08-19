package com.byazt.ta;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTCustomController;
import java.util.Map;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS, 38})
/* loaded from: classes3.dex */
public class j {
    public static final SparseArray<Object> hp(final TTCustomController tTCustomController) {
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        jxVarHp.hp(262101, new Supplier<Boolean>() { // from class: com.byazt.ta.j.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUseLocation());
            }
        });
        jxVarHp.hp(262102, new Supplier<SparseArray<Object>>() { // from class: com.byazt.ta.j.8
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public SparseArray<Object> get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return jx.hp(tTCustomController2 == null ? null : tTCustomController2.getTTLocation());
            }
        });
        jxVarHp.hp(262103, new Supplier<Boolean>() { // from class: com.byazt.ta.j.9
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.alist());
            }
        });
        jxVarHp.hp(262104, new Supplier<Boolean>() { // from class: com.byazt.ta.j.10
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUsePhoneState());
            }
        });
        jxVarHp.hp(262105, new Supplier<String>() { // from class: com.byazt.ta.j.11
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                TTCustomController tTCustomController2 = tTCustomController;
                if (tTCustomController2 == null) {
                    return null;
                }
                return tTCustomController2.getDevImei();
            }
        });
        jxVarHp.hp(262106, new Supplier<Boolean>() { // from class: com.byazt.ta.j.12
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUseWifiState());
            }
        });
        jxVarHp.hp(262107, new Supplier<String>() { // from class: com.byazt.ta.j.13
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                TTCustomController tTCustomController2 = tTCustomController;
                if (tTCustomController2 == null) {
                    return null;
                }
                return tTCustomController2.getMacAddress();
            }
        });
        jxVarHp.hp(262108, new Supplier<Boolean>() { // from class: com.byazt.ta.j.14
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUseWriteExternal());
            }
        });
        jxVarHp.hp(262109, new Supplier<String>() { // from class: com.byazt.ta.j.15
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                TTCustomController tTCustomController2 = tTCustomController;
                if (tTCustomController2 == null) {
                    return null;
                }
                return tTCustomController2.getDevOaid();
            }
        });
        jxVarHp.hp(262110, new Supplier<Boolean>() { // from class: com.byazt.ta.j.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUseAndroidId());
            }
        });
        jxVarHp.hp(262113, (tTCustomController == null || tTCustomController.getMediationPrivacyConfig() == null) ? null : com.byazt.hd.l.hp(tTCustomController.getMediationPrivacyConfig()));
        jxVarHp.hp(262112, new Supplier<String>() { // from class: com.byazt.ta.j.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                TTCustomController tTCustomController2 = tTCustomController;
                if (tTCustomController2 == null) {
                    return null;
                }
                return tTCustomController2.getAndroidId();
            }
        });
        jxVarHp.hp(262111, new Supplier<Boolean>() { // from class: com.byazt.ta.j.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUsePermissionRecordAudio());
            }
        });
        jxVarHp.hp(262119, new Supplier<Map>() { // from class: com.byazt.ta.j.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map get() {
                TTCustomController tTCustomController2 = tTCustomController;
                if (tTCustomController2 == null) {
                    return null;
                }
                return tTCustomController2.userPrivacyConfig();
            }
        });
        jxVarHp.hp(262120, new Supplier<Boolean>() { // from class: com.byazt.ta.j.6
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                TTCustomController tTCustomController2 = tTCustomController;
                return Boolean.valueOf(tTCustomController2 == null || tTCustomController2.isCanUseMessage());
            }
        });
        jxVarHp.hp(262121, new Supplier<Boolean>() { // from class: com.byazt.ta.j.7
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(tTCustomController == null);
            }
        });
        return jxVarHp.l().sparseArray();
    }
}
