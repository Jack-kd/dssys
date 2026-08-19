package h1;

import io.flutter.plugin.common.MethodCall;

/* loaded from: classes5.dex */
public abstract class s {
    public static Integer a(MethodCall methodCall) {
        return (Integer) methodCall.argument("logLevel");
    }

    public static boolean b(int i2) {
        return i2 >= 1;
    }

    public static boolean c(int i2) {
        return i2 >= 2;
    }
}
