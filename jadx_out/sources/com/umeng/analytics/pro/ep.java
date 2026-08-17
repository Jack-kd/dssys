package com.umeng.analytics.pro;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public class ep extends er {

    /* renamed from: a, reason: collision with root package name */
    protected InputStream f49297a;

    /* renamed from: b, reason: collision with root package name */
    protected OutputStream f49298b;

    public ep() {
        this.f49297a = null;
        this.f49298b = null;
    }

    @Override // com.umeng.analytics.pro.er
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.er
    public void b() throws es {
    }

    @Override // com.umeng.analytics.pro.er
    public void c() throws IOException {
        InputStream inputStream = this.f49297a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.f49297a = null;
        }
        OutputStream outputStream = this.f49298b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            this.f49298b = null;
        }
    }

    @Override // com.umeng.analytics.pro.er
    public void d() throws es, IOException {
        OutputStream outputStream = this.f49298b;
        if (outputStream == null) {
            throw new es(1, "Cannot flush null outputStream");
        }
        try {
            outputStream.flush();
        } catch (IOException e2) {
            throw new es(0, e2);
        }
    }

    @Override // com.umeng.analytics.pro.er
    public int a(byte[] bArr, int i2, int i3) throws es, IOException {
        InputStream inputStream = this.f49297a;
        if (inputStream == null) {
            throw new es(1, "Cannot read from null inputStream");
        }
        try {
            int i4 = inputStream.read(bArr, i2, i3);
            if (i4 >= 0) {
                return i4;
            }
            throw new es(4);
        } catch (IOException e2) {
            throw new es(0, e2);
        }
    }

    @Override // com.umeng.analytics.pro.er
    public void b(byte[] bArr, int i2, int i3) throws es, IOException {
        OutputStream outputStream = this.f49298b;
        if (outputStream == null) {
            throw new es(1, "Cannot write to null outputStream");
        }
        try {
            outputStream.write(bArr, i2, i3);
        } catch (IOException e2) {
            throw new es(0, e2);
        }
    }

    public ep(InputStream inputStream) {
        this.f49298b = null;
        this.f49297a = inputStream;
    }

    public ep(OutputStream outputStream) {
        this.f49297a = null;
        this.f49298b = outputStream;
    }

    public ep(InputStream inputStream, OutputStream outputStream) {
        this.f49297a = inputStream;
        this.f49298b = outputStream;
    }
}
