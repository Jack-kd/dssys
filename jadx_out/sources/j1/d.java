package j1;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes5.dex */
public class d extends AbstractC1584a {

    /* renamed from: a, reason: collision with root package name */
    public final a f51253a;

    /* renamed from: b, reason: collision with root package name */
    public final MethodCall f51254b;

    public static class a implements f {

        /* renamed from: a, reason: collision with root package name */
        public final MethodChannel.Result f51255a;

        public a(MethodChannel.Result result) {
            this.f51255a = result;
        }

        @Override // j1.f
        public void error(String str, String str2, Object obj) {
            this.f51255a.error(str, str2, obj);
        }

        @Override // j1.f
        public void success(Object obj) {
            this.f51255a.success(obj);
        }
    }

    public d(MethodCall methodCall, MethodChannel.Result result) {
        this.f51254b = methodCall;
        this.f51253a = new a(result);
    }

    @Override // j1.e
    public Object a(String str) {
        return this.f51254b.argument(str);
    }

    @Override // j1.e
    public boolean b(String str) {
        return this.f51254b.hasArgument(str);
    }

    @Override // j1.e
    public String getMethod() {
        return this.f51254b.method;
    }

    @Override // j1.AbstractC1584a
    public f l() {
        return this.f51253a;
    }
}
