package com.byazt.ua;

import android.text.TextUtils;
import com.byazt.ctq.jx;
import com.byazt.ry.j;
import com.byazt.sf.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

@com.byazt.kj.hp(hp = {0, 1, 2378, 28})
/* loaded from: classes3.dex */
public class hp implements l {
    public static volatile hp hp;

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.sf.l
    public String l() {
        return "ugen_render";
    }

    @Override // com.byazt.sf.l
    public String hp(String str, String str2) {
        int i2 = j.hp(str2, l()).get(str, 0);
        if (i2 == 0 && (str.equals("h5_render_success") || str.equals("h5_render_fail") || str.equals("native_render_success") || str.equals("native_render_fail"))) {
            return "0";
        }
        return String.valueOf(i2);
    }

    @Override // com.byazt.sf.l
    public void hp(String str, String str2, String str3) {
        jx jxVarHp = j.hp(str3, l());
        synchronized (jxVarHp) {
            try {
                if (str.equals("h5_render_success") || str.equals("h5_render_fail")) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(jxVarHp.get("key_h5_render_result_list", new HashSet()));
                    if (linkedHashSet.size() >= 100) {
                        Iterator it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            String str4 = (String) it.next();
                            if (TextUtils.isEmpty(str4)) {
                                it.remove();
                            } else {
                                if ((System.currentTimeMillis() - Long.parseLong(str4.substring(0, str4.length() - 1))) / 3600000.0d <= 168.0d && linkedHashSet.size() < 100) {
                                    break;
                                }
                                it.remove();
                                if (str4.endsWith("0")) {
                                    jxVarHp.put("h5_render_success", jxVarHp.get("h5_render_success", 0) - 1);
                                } else if (str4.endsWith("1")) {
                                    jxVarHp.put("h5_render_fail", jxVarHp.get("h5_render_fail", 0) - 1);
                                }
                            }
                        }
                    }
                    if (str.equals("h5_render_success")) {
                        jxVarHp.put("h5_render_success", jxVarHp.get("h5_render_success", 0) + 1);
                    } else {
                        jxVarHp.put("h5_render_fail", jxVarHp.get("h5_render_fail", 0) + 1);
                    }
                    linkedHashSet.add(str2);
                    jxVarHp.put("key_h5_render_result_list", new HashSet(new ArrayList(linkedHashSet)));
                }
                if (str.equals("native_render_success") || str.equals("native_render_fail")) {
                    LinkedHashSet linkedHashSet2 = new LinkedHashSet(jxVarHp.get("native_key_render_result_list", new HashSet()));
                    if (linkedHashSet2.size() >= 100) {
                        Iterator it2 = linkedHashSet2.iterator();
                        while (it2.hasNext()) {
                            String str5 = (String) it2.next();
                            if (TextUtils.isEmpty(str5)) {
                                it2.remove();
                            } else {
                                if ((System.currentTimeMillis() - Long.parseLong(str5.substring(0, str5.length() - 1))) / 3600000.0d <= 168.0d && linkedHashSet2.size() < 100) {
                                    break;
                                }
                                it2.remove();
                                if (str5.endsWith("0")) {
                                    jxVarHp.put("native_render_success", jxVarHp.get("native_render_success", 0) - 1);
                                } else if (str5.endsWith("1")) {
                                    jxVarHp.put("native_render_fail", jxVarHp.get("native_render_fail", 0) - 1);
                                }
                            }
                        }
                    }
                    if (str.equals("native_render_success")) {
                        jxVarHp.put("native_render_success", jxVarHp.get("native_render_success", 0) + 1);
                    } else {
                        jxVarHp.put("native_render_fail", jxVarHp.get("native_render_fail", 0) + 1);
                    }
                    linkedHashSet2.add(str2);
                    jxVarHp.put("native_key_render_result_list", new HashSet(new ArrayList(linkedHashSet2)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
