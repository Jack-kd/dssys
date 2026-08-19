package P1;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import org.eclipse.jetty.util.i;

/* loaded from: classes5.dex */
public class f extends a {

    /* renamed from: s, reason: collision with root package name */
    public static final R1.c f479s = R1.b.a(f.class);

    /* renamed from: p, reason: collision with root package name */
    public final e f480p;

    /* renamed from: q, reason: collision with root package name */
    public transient boolean f481q;

    /* renamed from: r, reason: collision with root package name */
    public transient boolean f482r;

    public f(e eVar, HttpServletRequest httpServletRequest) {
        super(eVar, httpServletRequest);
        this.f481q = false;
        this.f482r = false;
        this.f480p = eVar;
    }

    @Override // P1.a
    public void A(int i2) {
        super.A(i2);
        if (s() > 0) {
            long jS = (s() * 1000) / 10;
            e eVar = this.f480p;
            if (jS < eVar.f468I) {
                eVar.o0((i2 + 9) / 10);
            }
        }
    }

    public synchronized void F() {
        FileInputStream fileInputStream;
        Exception e2;
        if (H()) {
            b(System.currentTimeMillis());
            R1.c cVar = f479s;
            if (cVar.f()) {
                cVar.i("De-idling " + super.r(), new Object[0]);
            }
            try {
                File file = new File(this.f480p.f472M, super.r());
                if (!file.exists() || !file.canRead()) {
                    throw new FileNotFoundException(file.getName());
                }
                fileInputStream = new FileInputStream(file);
                try {
                    this.f481q = false;
                    this.f480p.i0(fileInputStream, this);
                    i.a(fileInputStream);
                    h();
                    if (this.f480p.f469J == 0) {
                        file.delete();
                    }
                } catch (Exception e3) {
                    e2 = e3;
                    f479s.c("Problem de-idling session " + super.r(), e2);
                    if (fileInputStream != null) {
                        i.a(fileInputStream);
                    }
                    v();
                }
            } catch (Exception e4) {
                fileInputStream = null;
                e2 = e4;
            }
        }
    }

    public synchronized void G() {
        J(false);
        this.f481q = true;
    }

    public synchronized boolean H() {
        return this.f481q;
    }

    public synchronized void I(OutputStream outputStream) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            dataOutputStream.writeUTF(o());
            dataOutputStream.writeUTF(t());
            dataOutputStream.writeLong(q());
            dataOutputStream.writeLong(l());
            dataOutputStream.writeInt(u());
            dataOutputStream.writeInt(n());
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(dataOutputStream);
            Enumeration enumerationM = m();
            while (enumerationM.hasMoreElements()) {
                String str = (String) enumerationM.nextElement();
                objectOutputStream.writeUTF(str);
                objectOutputStream.writeObject(i(str));
            }
            objectOutputStream.close();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void J(boolean z2) {
        File file;
        FileOutputStream fileOutputStream;
        if (!H() && !this.f482r) {
            R1.c cVar = f479s;
            if (cVar.f()) {
                cVar.i("Saving {} {}", super.r(), Boolean.valueOf(z2));
            }
            FileOutputStream fileOutputStream2 = null;
            try {
                file = new File(this.f480p.f472M, super.r());
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                file = null;
            }
            try {
                E();
                I(fileOutputStream);
                i.b(fileOutputStream);
                if (z2) {
                    h();
                } else {
                    e();
                }
            } catch (Exception e4) {
                e = e4;
                fileOutputStream2 = fileOutputStream;
                K();
                if (fileOutputStream2 != null) {
                    i.b(fileOutputStream2);
                }
                if (file != null) {
                    file.delete();
                }
                throw e;
            }
        }
    }

    public synchronized void K() {
        this.f482r = true;
    }

    @Override // P1.a
    public void d() {
        if (this.f480p.f470K != 0) {
            F();
        }
        super.d();
    }

    @Override // P1.a
    public void j() {
        super.j();
        if (this.f480p.f472M == null || r() == null) {
            return;
        }
        new File(this.f480p.f472M, r()).delete();
    }

    public f(e eVar, long j2, long j3, String str) {
        super(eVar, j2, j3, str);
        this.f481q = false;
        this.f482r = false;
        this.f480p = eVar;
    }
}
