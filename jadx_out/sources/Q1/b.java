package Q1;

import java.util.Arrays;
import okhttp3.HttpUrl;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public String[] f490a;

    /* renamed from: b, reason: collision with root package name */
    public String f491b;

    public String[] a() {
        return this.f490a;
    }

    public String b() {
        return this.f491b;
    }

    public void c(String str) {
        this.f490a = new String[]{str};
    }

    public void d(String str) {
        this.f491b = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String[] strArr = this.f490a;
        sb.append(strArr == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : Arrays.asList(strArr).toString());
        sb.append("=>");
        sb.append(this.f491b);
        return sb.toString();
    }
}
