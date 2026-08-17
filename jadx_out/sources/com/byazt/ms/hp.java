package com.byazt.ms;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.aj.s;
import com.byazt.kw.u;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 679, 28})
/* loaded from: classes3.dex */
public class hp {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile Context f23275l;

    private hp(@NonNull Context context) {
        this.f23275l = context;
    }

    public static hp hp() {
        if (hp == null) {
            hp = new hp(s.j());
        }
        return hp;
    }

    public void jx(final JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        u.hp(new Runnable() { // from class: com.byazt.ms.hp.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                String strHp = l.hp(s.hp().hp());
                try {
                    jSONObject.put("upload_scene", "direct");
                } catch (JSONException unused) {
                }
                l.hp(strHp, jSONObject.toString());
            }
        });
    }

    public void l(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        try {
            String strHp = l.hp(s.hp().hp());
            String strHp2 = com.byazt.kw.j.hp(com.byazt.kw.s.hp(this.f23275l), com.byazt.kw.s.l(), strHp, jSONObject, l.l());
            jSONObject.put("upload_scene", "direct");
            if (l.hp(strHp, jSONObject.toString()).hp()) {
                com.byazt.kw.j.hp(strHp2);
            }
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public String hp(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                return com.byazt.kw.j.hp(com.byazt.kw.s.hp(this.f23275l), com.byazt.kw.s.hp(), l.hp(s.hp().hp()), jSONObject, l.hp());
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
