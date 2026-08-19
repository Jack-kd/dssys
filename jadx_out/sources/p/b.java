package p;

import android.os.Looper;
import com.baidu.passbqt.http.HttpErrorException;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class b extends com.baidu.passbqt.http.c {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f52700c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f52701d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f52702e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ HashMap f52703f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ List f52704g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f52705h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f52706i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C1749a f52707j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(C1749a c1749a, Looper looper, boolean z2, c cVar, String str, d dVar, HashMap map, List list, String str2, int i2) {
        super(looper, z2);
        this.f52707j = c1749a;
        this.f52700c = cVar;
        this.f52701d = str;
        this.f52702e = dVar;
        this.f52703f = map;
        this.f52704g = list;
        this.f52705h = str2;
        this.f52706i = i2;
    }

    @Override // com.baidu.passbqt.http.c
    public void b(int i2, String str, HashMap map) {
        this.f52700c.c(i2, str, map);
    }

    @Override // com.baidu.passbqt.http.c
    public void d(Throwable th, String str) {
        if ((th instanceof HttpErrorException) && ((HttpErrorException) th).f11857a == 304) {
            this.f52707j.f52699c = false;
        }
        if (!this.f52707j.f52699c) {
            this.f52707j.f(this.f52700c, th, str);
        } else {
            this.f52707j.f52699c = false;
            this.f52707j.b(this.f52701d, this.f52702e, this.f52703f, this.f52704g, this.f52705h, this.f52706i, this.f52700c);
        }
    }

    @Override // com.baidu.passbqt.http.c
    public void e() {
        this.f52700c.e();
    }

    @Override // com.baidu.passbqt.http.c
    public void a() {
    }
}
