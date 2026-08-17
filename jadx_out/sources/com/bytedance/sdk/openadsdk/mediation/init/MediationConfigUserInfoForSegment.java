package com.bytedance.sdk.openadsdk.mediation.init;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.byazt.ik.a;
import com.byazt.kj.hp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 128, 129})
/* loaded from: classes3.dex */
public class MediationConfigUserInfoForSegment implements Serializable {
    public static final String GENDER_FEMALE = "female";
    public static final String GENDER_MALE = "male";
    public static final String GENDER_UNKNOWN = "unknown";
    private Map<String, String> eb;
    public final String TAG = MediationConstant.TAG;
    private String hp = "";

    /* renamed from: l, reason: collision with root package name */
    private String f29066l = "";
    private String jx = "";

    /* renamed from: j, reason: collision with root package name */
    private int f29065j = 0;

    /* renamed from: w, reason: collision with root package name */
    private String f29067w = "";

    /* renamed from: a, reason: collision with root package name */
    private String f29064a = "";

    public static boolean checkValid(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[A-Za-z0-9-_]{1,100}");
    }

    public boolean equals(Object obj) {
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment = (MediationConfigUserInfoForSegment) obj;
            boolean z3 = getAge() == mediationConfigUserInfoForSegment.getAge() && TextUtils.equals(getUserValueGroup(), mediationConfigUserInfoForSegment.getUserValueGroup()) && TextUtils.equals(getUserId(), mediationConfigUserInfoForSegment.getUserId()) && TextUtils.equals(getChannel(), mediationConfigUserInfoForSegment.getChannel()) && TextUtils.equals(getSubChannel(), mediationConfigUserInfoForSegment.getSubChannel()) && TextUtils.equals(getGender(), mediationConfigUserInfoForSegment.getGender());
            Map<String, String> customInfos = mediationConfigUserInfoForSegment.getCustomInfos();
            Map<String, String> map = this.eb;
            if (map != null && customInfos != null) {
                if (map.size() == customInfos.size()) {
                    for (String str : this.eb.keySet()) {
                        if (TextUtils.isEmpty(str) || TextUtils.equals(this.eb.get(str), customInfos.get(str))) {
                        }
                    }
                    z2 = true;
                }
                z2 = false;
                break;
            }
            if (map != null || customInfos != null) {
                z2 = false;
                break;
            }
            z2 = true;
            if (z3 && z2) {
                return true;
            }
        }
        return false;
    }

    public int getAge() {
        return this.f29065j;
    }

    @Nullable
    public String getChannel() {
        return this.f29066l;
    }

    @Nullable
    public Map<String, String> getCustomInfos() {
        return this.eb;
    }

    @Nullable
    public String getGender() {
        return this.f29067w;
    }

    @Nullable
    public String getSubChannel() {
        return this.jx;
    }

    @Nullable
    public String getUserId() {
        return this.hp;
    }

    @Nullable
    public String getUserValueGroup() {
        return this.f29064a;
    }

    public void setAge(int i2) {
        this.f29065j = i2;
    }

    public void setChannel(String str) {
        if (checkValid(str)) {
            this.f29066l = str;
        } else {
            a.w(MediationConstant.TAG, "流量分组channer字段存在不合法输入");
        }
    }

    public void setCustomInfos(Map<String, String> map) {
        this.eb = new HashMap();
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry != null) {
                if (!checkValid(entry.getKey())) {
                    a.w(MediationConstant.TAG, "流量分组" + entry.getKey() + "字段存在不合法输入");
                } else if (checkValid(entry.getValue())) {
                    this.eb.put(entry.getKey(), entry.getValue());
                } else {
                    a.w(MediationConstant.TAG, "流量分组" + entry.getKey() + "字段的值" + entry.getValue() + "存在不合法输入");
                }
            }
        }
    }

    public void setGender(String str) {
        if (checkValid(str)) {
            this.f29067w = str;
        } else {
            a.w(MediationConstant.TAG, "流量分组gender字段存在不合法输入");
        }
    }

    public void setSubChannel(String str) {
        if (checkValid(str)) {
            this.jx = str;
        } else {
            a.w(MediationConstant.TAG, "流量分组sub_channer字段存在不合法输入");
        }
    }

    public void setUserId(String str) {
        if (checkValid(str)) {
            this.hp = str;
        } else {
            a.w(MediationConstant.TAG, "流量分组user_id字段存在不合法输入");
        }
    }

    public void setUserValueGroup(String str) {
        if (checkValid(str)) {
            this.f29064a = str;
        } else {
            a.w(MediationConstant.TAG, "流量分组user_value_group字段存在不合法输入");
        }
    }
}
