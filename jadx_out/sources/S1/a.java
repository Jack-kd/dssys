package S1;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URL;

/* loaded from: classes5.dex */
public class a extends f {

    /* renamed from: i, reason: collision with root package name */
    public String f521i;

    public a(URL url, String str) {
        super(url, null);
        this.f521i = str;
    }

    @Override // S1.f, S1.e
    public boolean a() {
        return false;
    }

    @Override // S1.f, S1.e
    public File b() {
        return null;
    }

    @Override // S1.f, S1.e
    public InputStream c() throws FileNotFoundException {
        throw new FileNotFoundException(this.f521i);
    }

    @Override // S1.f, S1.e
    public long d() {
        return -1L;
    }

    @Override // S1.f, S1.e
    public boolean delete() throws SecurityException {
        throw new SecurityException(this.f521i);
    }

    @Override // S1.f
    public String toString() {
        return super.toString() + "; BadResource=" + this.f521i;
    }
}
