package com.umeng.analytics.pro;

import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class al {

    /* renamed from: a, reason: collision with root package name */
    private String f48664a;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<am> f48665b = new ArrayList<>();

    public al(String str) {
        this.f48664a = "";
        this.f48664a = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
    }

    private void a() {
        try {
            if (!this.f48664a.contains(",")) {
                String str = this.f48664a;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                String strTrim = str.trim();
                if (this.f48665b != null) {
                    this.f48665b.add(new am(strTrim));
                    return;
                }
                return;
            }
            for (String str2 : this.f48664a.split(",")) {
                if (!TextUtils.isEmpty(str2)) {
                    String strTrim2 = str2.trim();
                    if (this.f48665b != null) {
                        this.f48665b.add(new am(strTrim2));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean a(int i2) {
        try {
            ArrayList<am> arrayList = this.f48665b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    am amVar = this.f48665b.get(i3);
                    if (amVar != null && amVar.a(i2)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
