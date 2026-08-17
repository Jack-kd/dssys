package com.byazt.xt;

import android.content.SharedPreferences;
import com.byazt.jz.sz;
import com.byazt.lca.jx;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1418, 28})
/* loaded from: classes3.dex */
public class hp {
    public volatile int hp = -1;

    /* renamed from: l, reason: collision with root package name */
    public volatile SharedPreferences f27817l = com.byazt.rz.l.l(sz.getContext(), "sp_ad_common_config", 0);

    @com.byazt.kj.hp(hp = {0, 1, 1418, 255})
    public static class l {
        public static hp hp = new hp();
    }

    public int l() {
        if (this.hp == -1) {
            this.hp = hp("store_isolate_conf", 3);
        }
        return this.hp;
    }

    public static hp hp() {
        return l.hp;
    }

    @com.byazt.kj.hp(hp = {0, 1, 1418, 170})
    /* renamed from: com.byazt.xt.hp$hp, reason: collision with other inner class name */
    public static class C0412hp {
        public Map<String, Object> hp = new HashMap();

        public C0412hp hp(int i2) {
            if (hp.hp().hp == i2) {
                return this;
            }
            hp.hp().hp = i2;
            this.hp.put("store_isolate_conf", Integer.valueOf(i2));
            return this;
        }

        public void hp() {
            try {
                if (!jx.hp().l()) {
                    SharedPreferences.Editor editorEdit = hp.hp().f27817l.edit();
                    for (Map.Entry<String, Object> entry : this.hp.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof Boolean) {
                            editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
                        } else if (value instanceof Long) {
                            editorEdit.putLong(key, ((Long) value).longValue());
                        } else if (value instanceof Float) {
                            editorEdit.putFloat(key, ((Float) value).floatValue());
                        } else if (value instanceof Integer) {
                            editorEdit.putInt(key, ((Integer) value).intValue());
                        } else if (value instanceof String) {
                            editorEdit.putString(key, (String) value);
                        }
                    }
                    editorEdit.apply();
                    return;
                }
                for (Map.Entry<String, Object> entry2 : this.hp.entrySet()) {
                    String key2 = entry2.getKey();
                    Object value2 = entry2.getValue();
                    if (value2 instanceof Boolean) {
                        com.byazt.fgx.l.hp("sp_ad_common_config", key2, (Boolean) value2);
                    } else if (value2 instanceof Long) {
                        com.byazt.fgx.l.hp("sp_ad_common_config", key2, (Long) value2);
                    } else if (value2 instanceof Float) {
                        com.byazt.fgx.l.hp("sp_ad_common_config", key2, (Float) value2);
                    } else if (value2 instanceof Integer) {
                        com.byazt.fgx.l.hp("sp_ad_common_config", key2, (Integer) value2);
                    } else if (value2 instanceof String) {
                        com.byazt.fgx.l.hp("sp_ad_common_config", key2, (String) value2);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int hp(String str, int i2) {
        try {
            if (jx.hp().l()) {
                return com.byazt.fgx.l.hp("sp_ad_common_config", str, i2);
            }
            return this.f27817l.getInt(str, i2);
        } catch (Throwable unused) {
            return i2;
        }
    }
}
