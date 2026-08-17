package com.beizi.fusion;

/* loaded from: classes2.dex */
public class m9 implements me {

    /* renamed from: a, reason: collision with root package name */
    private final String f15077a;

    /* renamed from: b, reason: collision with root package name */
    private final fm f15078b;

    /* renamed from: c, reason: collision with root package name */
    private final byte[] f15079c;

    /* renamed from: d, reason: collision with root package name */
    private final n5 f15080d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f15081e;

    public m9(String str, fm fmVar, byte[] bArr, n5 n5Var, boolean z2) {
        this.f15077a = str;
        this.f15078b = fmVar;
        this.f15079c = bArr;
        this.f15080d = n5Var;
        this.f15081e = z2;
    }

    @Override // com.beizi.fusion.me
    public String a() {
        return this.f15077a;
    }

    @Override // com.beizi.fusion.me
    public fm b() {
        return this.f15078b;
    }

    @Override // com.beizi.fusion.me
    public byte[] c() {
        return this.f15079c;
    }

    @Override // com.beizi.fusion.me
    public boolean d() {
        return this.f15081e;
    }

    @Override // com.beizi.fusion.me
    public n5 e() {
        return this.f15080d;
    }

    public m9(String str, me meVar) {
        this.f15077a = str;
        this.f15080d = meVar.e();
        this.f15078b = meVar.b();
        this.f15079c = new byte[0];
        this.f15081e = meVar.d();
    }
}
