package com.byazt.dq;

import android.text.TextUtils;
import com.anythink.core.common.m.q;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsSpeedCoefficientValue, 28})
/* loaded from: classes2.dex */
public class hp {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19237j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public String f19238l;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, Object> f19239w;

    public hp() {
        this(q.f5857o, "no error message");
    }

    public static String hp(int i2) {
        switch (i2) {
            case -2:
                break;
            case -1:
                break;
            case 1:
                break;
            case 10003:
                break;
            case 10012:
                break;
            case 10013:
                break;
            case 10014:
                break;
            case 10015:
                break;
            case 20005:
                break;
            case 40044:
                break;
            case 40045:
            case 840040:
                break;
            case 40047:
                break;
            case 40048:
                break;
            case 40052:
                break;
            case 40061:
                break;
            case 40062:
                break;
            case 40063:
                break;
            case 40064:
                break;
            case 41005:
                break;
            case 41007:
                break;
            case 41008:
                break;
            case 41041:
                break;
            case 41042:
                break;
            case 41043:
                break;
            case 41044:
                break;
            case 44404:
                break;
            case 44405:
                break;
            case 49000:
                break;
            case 49001:
                break;
            case 49002:
                break;
            case 49003:
                break;
            case 49004:
                break;
            case 49005:
                break;
            case 49006:
                break;
            case 49007:
                break;
            case 49008:
                break;
            case 49009:
                break;
            case 49010:
                break;
            case 49012:
                break;
            case 49015:
                break;
            case 49016:
                break;
            case 50100:
                break;
            case 81001:
                break;
            case 81002:
                break;
            case 81003:
                break;
            case 81004:
                break;
            case 81008:
                break;
            case 81009:
                break;
            case 81010:
                break;
            case 81011:
                break;
            case 81012:
                break;
            case 810085:
                break;
            case 840026:
                break;
            case 840027:
                break;
            case 840028:
                break;
            case 840029:
                break;
            case 840030:
                break;
            case 840031:
                break;
            case 840032:
                break;
            case 840033:
                break;
            case 840034:
                break;
            case 840035:
                break;
            case 840036:
                break;
            case 840037:
                break;
            case 840038:
                break;
            case 840039:
                break;
            case 840041:
                break;
            case 840042:
                break;
            case 840043:
                break;
        }
        return "信息流广告暂无广告返回，请稍后重试";
    }

    public String toString() {
        return "AdError{code=" + this.hp + ", message='" + this.f19238l + "', thirdSdkErrorCode=" + this.jx + ", thirdSdkErrorMessage='" + this.f19237j + "'}";
    }

    public hp(String str) {
        this(q.f5857o, str);
    }

    public hp(int i2, String str) {
        this(i2, str, i2, str);
    }

    public hp(int i2, String str, int i3, String str2) {
        this.f19239w = new ConcurrentHashMap(1);
        this.hp = i2;
        this.f19238l = str;
        this.jx = i3;
        this.f19237j = str2;
    }

    public void hp(String str, Object obj) {
        if (this.f19239w == null || TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.f19239w.put(str, obj);
    }

    public Object hp(String str) {
        if (this.f19239w == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f19239w.get(str);
    }
}
