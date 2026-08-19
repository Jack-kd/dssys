package com.byazt.zg;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec extends HashMap<String, Object> {
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    @Nullable
    public Object get(@Nullable Object obj) {
        if (MediationConstant.KEY_GM_USB.equals(obj)) {
            com.byazt.di.hp.jl().hp(true);
            if (!com.byazt.di.l.l().yr()) {
                return "接口获取无权限，请联系商务开通";
            }
        } else if (MediationConstant.KEY_GM_POLICY.equals(obj)) {
            if (!com.byazt.di.l.l().rz()) {
                return "接口获取无权限，请联系商务开通";
            }
            Object obj2 = get(MediationConstant.KEY_GM_PRIME_RIT);
            if (obj2 instanceof String) {
                String str = (String) obj2;
                com.byazt.xoi.l lVarHd = com.byazt.di.l.l().hd();
                if (lVarHd != null) {
                    return lVarHd.hp(str, this);
                }
            }
        }
        return super.get(obj);
    }

    @Override // java.util.HashMap, java.util.Map
    @Nullable
    public Object getOrDefault(@Nullable Object obj, @Nullable Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    @Nullable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public Object put(String str, Object obj) {
        if (MediationConstant.KEY_GM_USB.equals(str)) {
            return !com.byazt.di.l.l().yr() ? super.put(str, "接口获取无权限，请联系商务开通") : super.put(str, obj);
        }
        if (MediationConstant.KEY_USE_POLICY.equals(str) && com.byazt.di.l.l().rz() && (obj instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (com.byazt.di.hp.jl().j().containsKey(next)) {
                    Object objOpt = jSONObject.opt(next);
                    if (objOpt != null && !hp(String.valueOf(objOpt))) {
                        com.byazt.ymw.u.l(MediationConstant.TAG, "adLoad参数中key为 " + next + " 字段的值，" + objOpt + " 存在不合法输入");
                    }
                } else {
                    com.byazt.aw.l.j(MediationConstant.TAG, "KEY_USE_POLICY的adLoad参数中存在不合法key：" + next + "，该key将被移除，如需要自定义key 请通过 KEY_USE_POLICY 中的 KEY_USE_POLICY_OBJ_CUSTOM 实现");
                }
            }
        }
        return super.put(str, obj);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(@NonNull Map<? extends String, ?> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[A-Za-z0-9-_]{1,100}");
    }
}
