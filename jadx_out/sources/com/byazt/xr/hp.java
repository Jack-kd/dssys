package com.byazt.xr;

import android.content.Context;
import android.location.Address;
import com.byazt.ctq.jx;
import com.byazt.ry.j;
import com.byazt.zg.ns;
import com.kwad.library.solder.lib.ext.PluginError;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, PluginError.ERROR_UPD_CAPACITY, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.aq.l {
    public Context hp;
    public final String jx = "gm_sp_multi_ttmadnet_config";

    /* renamed from: l, reason: collision with root package name */
    public final jx f27752l = j.hp(null, "gm_sp_multi_ttmadnet_config");

    public hp(Context context) {
        this.hp = context;
    }

    @Override // com.byazt.aq.l
    public String[] a() {
        return new String[]{"tnc3-bjlgy.zijieapi.com", "tnc3-alisc1.zijieapi.com", "tnc3-aliec2.zijieapi.com"};
    }

    @Override // com.byazt.aq.l
    public Context getContext() {
        return this.hp;
    }

    @Override // com.byazt.aq.l
    public int hp() {
        return 4741;
    }

    @Override // com.byazt.aq.l
    public int j() {
        return com.byazt.rt.l.hp();
    }

    @Override // com.byazt.aq.l
    public String jx() {
        return "android";
    }

    @Override // com.byazt.aq.l
    public String l() {
        return "msdk";
    }

    @Override // com.byazt.aq.l
    public String w() {
        return ns.hp();
    }

    @Override // com.byazt.aq.l
    public Address hp(Context context) {
        return null;
    }

    @Override // com.byazt.aq.l
    public String hp(Context context, String str, String str2) {
        return this.f27752l.getString(str, str2);
    }

    @Override // com.byazt.aq.l
    public void hp(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        this.f27752l.put(entry.getKey(), ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        this.f27752l.put(entry.getKey(), ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        this.f27752l.put(entry.getKey(), ((Float) value).floatValue());
                    } else if (value instanceof Boolean) {
                        this.f27752l.put(entry.getKey(), ((Boolean) value).booleanValue());
                    } else if (value instanceof String) {
                        this.f27752l.put(entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
