package com.anythink.core.basead.adx.api;

import android.text.TextUtils;
import com.anythink.core.e.j;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ATAdxAdapterConfig {
    public static final int RULE_TYPE_GROUP = 1;
    public static final int RULE_TYPE_NORMAL = 2;
    boolean isDefault;
    j mAdapterStrategy;
    JSONObject mOriginJSONObject;

    private ATAdxAdapterConfig(j jVar, JSONObject jSONObject) {
        this.mAdapterStrategy = jVar;
        this.mOriginJSONObject = jSONObject;
    }

    public static ATAdxAdapterConfig parse(JSONObject jSONObject) {
        j jVarA = j.a(jSONObject);
        return jVarA != null ? new ATAdxAdapterConfig(jVarA, jSONObject) : new ATAdxAdapterConfig(true);
    }

    public int getCoolingTimes() {
        j.a aVarB;
        j jVar = this.mAdapterStrategy;
        if (jVar == null || (aVarB = jVar.b()) == null) {
            return 5;
        }
        return aVarB.f8834c;
    }

    public int getGroupCount() {
        j.a aVarB;
        j jVar = this.mAdapterStrategy;
        if (jVar == null || (aVarB = jVar.b()) == null) {
            return 3;
        }
        return aVarB.f8832a;
    }

    public JSONObject getOriginJSONObject() {
        return this.mOriginJSONObject;
    }

    public int getRuleType() {
        j jVar = this.mAdapterStrategy;
        if (jVar != null) {
            return jVar.a();
        }
        return 1;
    }

    public int getValuedTimes() {
        j.a aVarB;
        j jVar = this.mAdapterStrategy;
        if (jVar == null || (aVarB = jVar.b()) == null) {
            return 3;
        }
        return aVarB.f8833b;
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public boolean isExpired() {
        j jVar = this.mAdapterStrategy;
        if (jVar != null) {
            return jVar.c();
        }
        return true;
    }

    public String toString() {
        return "ATAdxAdapterConfig{isDefault=" + isDefault() + ", isExpired=" + isExpired() + ", getRuleType=" + getRuleType() + ", getGroupCount=" + getGroupCount() + ", getValuedTimes=" + getValuedTimes() + ", getCoolingTimes=" + getCoolingTimes() + ", getOriginJSONObject=" + this.mOriginJSONObject + '}';
    }

    private ATAdxAdapterConfig(boolean z2) {
        this.isDefault = z2;
    }

    public static ATAdxAdapterConfig parse(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return parse(new JSONObject(str));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
