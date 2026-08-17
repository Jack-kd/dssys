package Z1;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public String f736a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f737b;

    public void a(boolean z2) {
        this.f737b = Boolean.valueOf(z2);
    }

    public boolean b() {
        return this.f737b != null;
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.equals(this.f736a, str);
    }

    public void d(String str) {
        this.f736a = str;
    }

    public boolean e() {
        Boolean bool = this.f737b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
