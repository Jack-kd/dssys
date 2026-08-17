package j1;

import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: j1.c, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1586c extends AbstractC1584a {

    /* renamed from: a, reason: collision with root package name */
    public final Map f51245a;

    /* renamed from: b, reason: collision with root package name */
    public final a f51246b = new a();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f51247c;

    /* renamed from: j1.c$a */
    public class a implements f {

        /* renamed from: a, reason: collision with root package name */
        public Object f51248a;

        /* renamed from: b, reason: collision with root package name */
        public String f51249b;

        /* renamed from: c, reason: collision with root package name */
        public String f51250c;

        /* renamed from: d, reason: collision with root package name */
        public Object f51251d;

        public a() {
        }

        @Override // j1.f
        public void error(String str, String str2, Object obj) {
            this.f51249b = str;
            this.f51250c = str2;
            this.f51251d = obj;
        }

        @Override // j1.f
        public void success(Object obj) {
            this.f51248a = obj;
        }
    }

    public C1586c(Map map, boolean z2) {
        this.f51245a = map;
        this.f51247c = z2;
    }

    @Override // j1.e
    public Object a(String str) {
        return this.f51245a.get(str);
    }

    @Override // j1.e
    public boolean b(String str) {
        return this.f51245a.containsKey(str);
    }

    @Override // j1.AbstractC1585b, j1.e
    public boolean f() {
        return this.f51247c;
    }

    @Override // j1.e
    public String getMethod() {
        return (String) this.f51245a.get("method");
    }

    @Override // j1.AbstractC1584a
    public f l() {
        return this.f51246b;
    }

    public Map m() {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put("code", this.f51246b.f51249b);
        map2.put("message", this.f51246b.f51250c);
        map2.put("data", this.f51246b.f51251d);
        map.put("error", map2);
        return map;
    }

    public Map n() {
        HashMap map = new HashMap();
        map.put("result", this.f51246b.f51248a);
        return map;
    }

    public void o(MethodChannel.Result result) {
        a aVar = this.f51246b;
        result.error(aVar.f51249b, aVar.f51250c, aVar.f51251d);
    }

    public void p(List list) {
        if (f()) {
            return;
        }
        list.add(m());
    }

    public void q(List list) {
        if (f()) {
            return;
        }
        list.add(n());
    }
}
