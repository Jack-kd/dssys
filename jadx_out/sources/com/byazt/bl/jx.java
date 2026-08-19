package com.byazt.bl;

import android.text.TextUtils;
import com.byazt.qt.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1567, 30})
/* loaded from: classes2.dex */
public class jx extends a {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public List<a> f18604j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f18605l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f18606w;

    public jx(String str, String str2) {
        super(null);
        this.hp = str;
        this.f18605l = str2;
    }

    public static jx parseFromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            jx jxVar = new jx();
            jxVar.setId(jSONObject.optString("id"));
            jxVar.setName(jSONObject.optString("name"));
            jxVar.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("options");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    jx fromJson = parseFromJson(jSONArrayOptJSONArray.optJSONObject(i2));
                    if (fromJson != null && fromJson.isValid()) {
                        jxVar.addOption(fromJson);
                    }
                }
            }
            return jxVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.qt.a
    public void addOption(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f18604j == null) {
            this.f18604j = new ArrayList();
        }
        this.f18604j.add(aVar);
    }

    @Override // com.byazt.qt.a
    public String getId() {
        return this.hp;
    }

    @Override // com.byazt.qt.a
    public boolean getIsSelected() {
        return this.jx;
    }

    @Override // com.byazt.qt.a
    public String getName() {
        return this.f18605l;
    }

    @Override // com.byazt.qt.a
    public List<a> getOptions() {
        return this.f18604j;
    }

    @Override // com.byazt.qt.a
    public boolean hasSecondOptions() {
        List<a> list = this.f18604j;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean isNewUi() {
        return this.f18606w;
    }

    @Override // com.byazt.qt.a
    public boolean isValid() {
        return (TextUtils.isEmpty(this.hp) || TextUtils.isEmpty(this.f18605l)) ? false : true;
    }

    public void setId(String str) {
        this.hp = str;
    }

    @Override // com.byazt.qt.a
    public void setIsSelected(boolean z2) {
        this.jx = z2;
    }

    public void setName(String str) {
        this.f18605l = str;
    }

    public void setNewUi(boolean z2) {
        this.f18606w = z2;
    }

    public JSONObject toJson() {
        try {
            if (!isValid()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", getId());
            jSONObject.put("name", getName());
            jSONObject.put("is_selected", getIsSelected());
            jSONObject.put("new_ui", this.f18606w);
            if (hasSecondOptions()) {
                JSONArray jSONArray = new JSONArray();
                for (a aVar : getOptions()) {
                    if (aVar instanceof jx) {
                        jSONArray.put(((jx) aVar).toJson());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("options", jSONArray);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public jx() {
        super(null);
    }
}
