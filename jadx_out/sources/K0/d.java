package K0;

import K0.b;
import android.os.Build;

/* loaded from: classes3.dex */
public final class d implements b.InterfaceC0005b {
    @Override // K0.b.InterfaceC0005b
    public String a(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // K0.b.InterfaceC0005b
    public String[] b() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return !e.a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // K0.b.InterfaceC0005b
    public void c(String str) {
        System.load(str);
    }

    @Override // K0.b.InterfaceC0005b
    public String d(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    @Override // K0.b.InterfaceC0005b
    public void loadLibrary(String str) {
        System.loadLibrary(str);
    }
}
