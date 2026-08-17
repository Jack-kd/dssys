package o;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static int f52026a = 1;

    public static String a(String str) {
        int i2 = f52026a;
        String str2 = "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbQ==";
        if (i2 != 1 && (i2 == 2 || i2 == 3)) {
            str2 = "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM=";
        }
        return b(str2) + b(str);
    }

    public static String b(String str) {
        return g.l(str);
    }

    public static String c() {
        return b("aHR0cHM6Ly9uc2NsaWNrLmJhaWR1LmNvbS92LmdpZg==");
    }

    public static ArrayList d() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(b("aHR0cHM6Ly9wYXNzcG9ydC5iYWlkdS5jb20=").replace("https://", ""));
        arrayList.add(b("aHR0cHM6Ly93YXBwYXNzLmJhaWR1LmNvbQ==").replace("https://", ""));
        arrayList.add(b("aHR0cHM6Ly9uc2NsaWNrLmJhaWR1LmNvbS92LmdpZg==").replace("https://", ""));
        return arrayList;
    }

    public static String e() {
        return b("aHR0cHM6Ly93d3cuYmFpZHUuY29t");
    }
}
