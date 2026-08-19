package com.umeng.analytics.pro;

import com.umeng.analytics.pro.dx;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class dh {

    /* renamed from: a, reason: collision with root package name */
    private final ed f49175a;

    /* renamed from: b, reason: collision with root package name */
    private final eq f49176b;

    public dh() {
        this(new dx.a());
    }

    private dy j(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        this.f49176b.a(bArr);
        int length = dlVarArr.length + 1;
        dl[] dlVarArr2 = new dl[length];
        int i2 = 0;
        dlVarArr2[0] = dlVar;
        int i3 = 0;
        while (i3 < dlVarArr.length) {
            int i4 = i3 + 1;
            dlVarArr2[i4] = dlVarArr[i3];
            i3 = i4;
        }
        this.f49175a.j();
        dy dyVarL = null;
        while (i2 < length) {
            dyVarL = this.f49175a.l();
            if (dyVarL.f49250b == 0 || dyVarL.f49251c > dlVarArr2[i2].a()) {
                return null;
            }
            if (dyVarL.f49251c != dlVarArr2[i2].a()) {
                eg.a(this.f49175a, dyVarL.f49250b);
                this.f49175a.m();
            } else {
                i2++;
                if (i2 < length) {
                    this.f49175a.j();
                }
            }
        }
        return dyVarL;
    }

    public void a(de deVar, byte[] bArr) throws dk {
        try {
            this.f49176b.a(bArr);
            deVar.read(this.f49175a);
        } finally {
            this.f49176b.e();
            this.f49175a.B();
        }
    }

    public Byte b(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (Byte) a((byte) 3, bArr, dlVar, dlVarArr);
    }

    public Double c(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (Double) a((byte) 4, bArr, dlVar, dlVarArr);
    }

    public Short d(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (Short) a((byte) 6, bArr, dlVar, dlVarArr);
    }

    public Integer e(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (Integer) a((byte) 8, bArr, dlVar, dlVarArr);
    }

    public Long f(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (Long) a((byte) 10, bArr, dlVar, dlVarArr);
    }

    public String g(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (String) a((byte) 11, bArr, dlVar, dlVarArr);
    }

    public ByteBuffer h(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (ByteBuffer) a((byte) 100, bArr, dlVar, dlVarArr);
    }

    public Short i(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        try {
            try {
                if (j(bArr, dlVar, dlVarArr) != null) {
                    this.f49175a.j();
                    return Short.valueOf(this.f49175a.l().f49251c);
                }
                this.f49176b.e();
                this.f49175a.B();
                return null;
            } catch (Exception e2) {
                throw new dk(e2);
            }
        } finally {
            this.f49176b.e();
            this.f49175a.B();
        }
    }

    public dh(ef efVar) {
        eq eqVar = new eq();
        this.f49176b = eqVar;
        this.f49175a = efVar.a(eqVar);
    }

    public void a(de deVar, String str, String str2) throws dk {
        try {
            try {
                a(deVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new dk("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.f49175a.B();
        }
    }

    public void a(de deVar, byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        try {
            try {
                if (j(bArr, dlVar, dlVarArr) != null) {
                    deVar.read(this.f49175a);
                }
            } catch (Exception e2) {
                throw new dk(e2);
            }
        } finally {
            this.f49176b.e();
            this.f49175a.B();
        }
    }

    public Boolean a(byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        return (Boolean) a((byte) 2, bArr, dlVar, dlVarArr);
    }

    private Object a(byte b3, byte[] bArr, dl dlVar, dl... dlVarArr) throws dk {
        try {
            try {
                dy dyVarJ = j(bArr, dlVar, dlVarArr);
                if (dyVarJ != null) {
                    if (b3 != 2) {
                        if (b3 != 3) {
                            if (b3 != 4) {
                                if (b3 != 6) {
                                    if (b3 != 8) {
                                        if (b3 != 100) {
                                            if (b3 != 10) {
                                                if (b3 == 11 && dyVarJ.f49250b == 11) {
                                                    return this.f49175a.z();
                                                }
                                            } else if (dyVarJ.f49250b == 10) {
                                                return Long.valueOf(this.f49175a.x());
                                            }
                                        } else if (dyVarJ.f49250b == 11) {
                                            return this.f49175a.A();
                                        }
                                    } else if (dyVarJ.f49250b == 8) {
                                        return Integer.valueOf(this.f49175a.w());
                                    }
                                } else if (dyVarJ.f49250b == 6) {
                                    return Short.valueOf(this.f49175a.v());
                                }
                            } else if (dyVarJ.f49250b == 4) {
                                return Double.valueOf(this.f49175a.y());
                            }
                        } else if (dyVarJ.f49250b == 3) {
                            return Byte.valueOf(this.f49175a.u());
                        }
                    } else if (dyVarJ.f49250b == 2) {
                        return Boolean.valueOf(this.f49175a.t());
                    }
                }
                this.f49176b.e();
                this.f49175a.B();
                return null;
            } catch (Exception e2) {
                throw new dk(e2);
            }
        } finally {
            this.f49176b.e();
            this.f49175a.B();
        }
    }

    public void a(de deVar, String str) throws dk {
        a(deVar, str.getBytes());
    }
}
