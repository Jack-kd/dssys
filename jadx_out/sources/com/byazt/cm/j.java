package com.byazt.cm;

import android.content.Context;
import android.location.Address;
import com.byazt.jz.d;
import com.byazt.zn.nu;
import com.byazt.zn.v;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 725, 38})
/* loaded from: classes2.dex */
public class j implements com.byazt.aq.l {
    public Context jx;
    public String hp = "sp_multi_ttadnet_config";

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ow.w f18896l = nu.hp("sp_multi_ttadnet_config");

    public j(Context context) {
        this.jx = context;
    }

    @Override // com.byazt.aq.l
    public String[] a() {
        return new String[]{"tnc3-bjlgy.zijieapi.com", "tnc3-alisc1.zijieapi.com", "tnc3-aliec2.zijieapi.com"};
    }

    @Override // com.byazt.aq.l
    public Context getContext() {
        return this.jx;
    }

    @Override // com.byazt.aq.l
    public Address hp(Context context) {
        return null;
    }

    @Override // com.byazt.aq.l
    public int j() {
        return d.f21856j;
    }

    @Override // com.byazt.aq.l
    public String jx() {
        return "android";
    }

    @Override // com.byazt.aq.l
    public String l() {
        return "openadsdk";
    }

    @Override // com.byazt.aq.l
    public String w() {
        return v.hp();
    }

    @Override // com.byazt.aq.l
    public int hp() {
        return Integer.parseInt("1371");
    }

    @Override // com.byazt.aq.l
    public String hp(Context context, String str, String str2) {
        return this.f18896l.get(str, str2);
    }

    @Override // com.byazt.aq.l
    public void hp(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        this.f18896l.put(entry.getKey(), ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        this.f18896l.put(entry.getKey(), ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        this.f18896l.put(entry.getKey(), ((Float) value).floatValue());
                    } else if (value instanceof Boolean) {
                        this.f18896l.put(entry.getKey(), ((Boolean) value).booleanValue());
                    } else if (value instanceof String) {
                        this.f18896l.put(entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
