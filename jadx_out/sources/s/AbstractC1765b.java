package s;

import android.text.TextUtils;
import android.util.SparseArray;

/* renamed from: s.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1765b {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f52732a;

    /* renamed from: b, reason: collision with root package name */
    public int f52733b;

    /* renamed from: c, reason: collision with root package name */
    public String f52734c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f52735d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f52736e;

    /* renamed from: f, reason: collision with root package name */
    public int f52737f;

    /* renamed from: g, reason: collision with root package name */
    public String f52738g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f52739h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f52740i;

    /* renamed from: j, reason: collision with root package name */
    public String f52741j;

    /* renamed from: k, reason: collision with root package name */
    public String f52742k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f52743l;

    /* renamed from: m, reason: collision with root package name */
    public String f52744m;

    /* renamed from: n, reason: collision with root package name */
    public String f52745n;

    public AbstractC1765b() {
        SparseArray sparseArray = new SparseArray();
        this.f52732a = sparseArray;
        this.f52735d = true;
        this.f52736e = false;
        this.f52739h = false;
        this.f52740i = false;
        this.f52741j = "";
        this.f52742k = "";
        this.f52743l = true;
        this.f52744m = "";
        this.f52745n = "";
        this.f52733b = -201;
        sparseArray.put(0, "成功");
        this.f52732a.put(-201, "其他错误");
        this.f52732a.put(-202, "参数错误");
        this.f52732a.put(-203, "网络异常");
        this.f52732a.put(-204, "服务返回异常");
        this.f52732a.put(-205, "用户取消");
        this.f52732a.put(-207, "当前设备未安装百度APP");
        this.f52732a.put(-208, "百度APP版本太低，请升级到最新版本");
        this.f52732a.put(-209, "用户拒绝打开APP");
    }

    public int a() {
        return this.f52733b;
    }

    public String b() {
        SparseArray sparseArray;
        int i2;
        if (!TextUtils.isEmpty(this.f52734c)) {
            return this.f52734c;
        }
        if (this.f52732a.get(this.f52733b) != null) {
            sparseArray = this.f52732a;
            i2 = this.f52733b;
        } else {
            sparseArray = this.f52732a;
            i2 = -201;
        }
        return (String) sparseArray.get(i2);
    }

    public void c(int i2) {
        this.f52733b = i2;
    }

    public void d(String str) {
        this.f52734c = str;
    }
}
